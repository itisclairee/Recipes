//
//  ViewController.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 24/03/24.
//

import UIKit
import SwiftUI


class RecipeViewController: UIViewController, UICollectionViewDelegate
{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    private let filterState = FilterState()
    
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

