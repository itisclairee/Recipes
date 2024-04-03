//
//  ViewController.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 24/03/24.
//
//Combine framework to subscribe to changes in the published property of the observable object and trigger a UI refresh.

import UIKit
import SwiftUI
import Combine

class RecipeViewController: UIViewController, UICollectionViewDelegate
{
   
    enum Section: CaseIterable {
        case main
    }
    
    private let recipesController = RecipeController()
    private var collectionView: UICollectionView!
    private var dataSource: UICollectionViewDiffableDataSource<Section, Recipe>!
    
    private let filterState = FilterState()
    private var cancellable: AnyCancellable?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Recipes"
        
        let config = UICollectionLayoutListConfiguration(appearance: .plain)
        let layout = UICollectionViewCompositionalLayout.list(using: config)

        collectionView = UICollectionView(
            frame: view.bounds, collectionViewLayout: layout
        )
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.addSubview(collectionView)
        collectionView.delegate = self
        configureDataSource()

        updateUI(animated: false)

        cancellable = filterState.$selection.sink { [weak self] selection in
            if selection != self?.filterState.selection {
                self?.updateUI(animated: true, filterSelection: selection)
            }
        }
    }
    
    private func configureDataSource() {
            let cellRegistration = UICollectionView.CellRegistration<UICollectionViewListCell, Recipe> { cell, indexPath, recipe in
                var content = cell.defaultContentConfiguration()
                content.text = nil
                content.secondaryText = nil 
                cell.contentConfiguration = content
                
                cell.contentView.subviews.forEach { $0.removeFromSuperview() }
                
                // image
                if let image = recipe.image
                {
                    let imageView = UIImageView(image: recipe.image)
                    imageView.contentMode = .scaleAspectFit
                    imageView.translatesAutoresizingMaskIntoConstraints = false
                    cell.contentView.addSubview(imageView)
                    
                    NSLayoutConstraint.activate([
                        imageView.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 8),
                        imageView.centerYAnchor.constraint(equalTo: cell.contentView.centerYAnchor),
                        imageView.widthAnchor.constraint(equalToConstant: 50),
                        imageView.heightAnchor.constraint(equalToConstant: 50)
                    ])
                }
                
                // title
                let titleLabel = UILabel()
                titleLabel.text = recipe.title
                titleLabel.font = UIFont.boldSystemFont(ofSize: 16)
                titleLabel.numberOfLines = 0
                titleLabel.translatesAutoresizingMaskIntoConstraints = false
                cell.contentView.addSubview(titleLabel)
                
                NSLayoutConstraint.activate([
                    titleLabel.leadingAnchor.constraint(equalTo: cell.contentView.leadingAnchor, constant: 100), // Spazio tra l'immagine e il titolo
                    titleLabel.topAnchor.constraint(equalTo: cell.contentView.topAnchor, constant: 8),
                    titleLabel.trailingAnchor.constraint(equalTo: cell.contentView.trailingAnchor, constant: -8)
                ])
                
                cell.accessibilityTraits = [.button]
                cell.accessibilityHint = "Navigate to the exercise detail view"
            }
            
            dataSource = UICollectionViewDiffableDataSource<Section, Recipe>(collectionView: collectionView) { collectionView, indexPath, recipe in
                let cell = collectionView.dequeueConfiguredReusableCell(using: cellRegistration, for: indexPath, item: recipe)
                return cell
            }
        }
    
    
    private func updateUI(
        animated: Bool, filterSelection: Recipe.Difficulty? = nil
    ) {
        let recipes = recipesController.recipes.filter { recipe in
            filterSelection.map { $0 == recipe.difficulty } ?? true
        }
        
        var snapshot = NSDiffableDataSourceSnapshot<Section, Recipe>()
        snapshot.appendSections([.main])
        snapshot.appendItems(recipes, toSection: .main)
        
        dataSource.apply(snapshot, animatingDifferences: animated)
    }
    
    
    func collectionView(
        _ collectionView: UICollectionView,didSelectItemAt indexPath: IndexPath
    ) {
        guard let recipe = dataSource.itemIdentifier(for: indexPath) else {
            return
        }
        
        collectionView.deselectItem(at: indexPath, animated: true)
        
        let detailView = RecipeDetail(recipe: recipe)
        let detailController = UIHostingController(rootView: detailView)
        
        detailController.navigationItem.title = recipe.title
        navigationController?.pushViewController(
            detailController, animated: true
        )
    }
    
    /* Inside the segue action, we will create an instance of the FilterView and pass it the FilterState stored in the view controller. Then we will initialize a UIHostingController with the coder passed to the action and the SwiftUI view. We are going to set a medium detent on its sheetPresentationController property so that the filter sheet only covers half of the screen. */
    
    
    @IBSegueAction func showFilter(_ coder: NSCoder) -> UIViewController?
    {
        let filterView = FilterView(filterState: filterState)
        let controller = UIHostingController(
            coder: coder, rootView: filterView
        )
        controller?.sheetPresentationController?.detents = [.medium()]
        return controller
    }
    
    
}
