//
//  RecipeController.swift
//  Recipes
//
//  Created by Chiara Cangelosi on 25/03/24.
//

import Foundation
import UIKit

class RecipeController {
    let recipes = [
        Recipe(
                title: "Pizza Margherita",
                difficulty: .easy,
                steps: [
                    "Preheat oven to 475°F (245°C).",
                    "Roll out pizza dough on a floured surface to desired thickness.",
                    "Spread tomato sauce over dough, leaving a border for the crust.",
                    "Evenly distribute sliced mozzarella over sauce.",
                    "Drizzle olive oil over pizza.",
                    "Bake in preheated oven for 12-15 minutes or until crust is golden brown and cheese is bubbly.",
                    "Remove from oven and garnish with fresh basil leaves before serving."
                ],
                ingredients: ["Pizza dough", "Tomato sauce", "Mozzarella cheese", "Fresh basil leaves", "Olive oil"],
                image: UIImage(named: "pizza margherita")
            ),
            Recipe(
                title: "Carbonara",
                difficulty: .medium,
                steps: [
                    "Cook spaghetti in boiling salted water until al dente.",
                    "In a separate bowl, whisk together eggs, grated Parmesan cheese, and black pepper.",
                    "In a pan, cook diced pancetta until crispy.",
                    "Drain cooked spaghetti and toss in the pan with the pancetta.",
                    "Remove pan from heat and quickly stir in egg mixture.",
                    "Serve immediately with additional Parmesan cheese and black pepper."
                ],
                ingredients: ["Spaghetti", "Eggs", "Pancetta", "Parmesan cheese", "Black pepper"],
                image: UIImage(named: "carbonara")
            ),
            Recipe(
                title: "Tiramisu",
                difficulty: .medium,
                steps: [
                    "Brew espresso and allow it to cool.",
                    "In a bowl, whisk together egg yolks and sugar until pale and creamy.",
                    "Add mascarpone cheese to the egg mixture and mix until smooth.",
                    "In a separate bowl, beat egg whites until stiff peaks form.",
                    "Gently fold beaten egg whites into the mascarpone mixture.",
                    "Dip ladyfingers into the cooled espresso and layer them in a dish.",
                    "Spread half of the mascarpone mixture over the ladyfingers.",
                    "Repeat layers, ending with a layer of mascarpone mixture.",
                    "Chill tiramisu in the refrigerator for at least 4 hours before serving.",
                    "Dust with cocoa powder before serving."
                ],
                ingredients: ["Espresso", "Egg yolks", "Sugar", "Mascarpone cheese", "Ladyfingers", "Cocoa powder"],
                image: UIImage(named: "tiramisu")
            ),
            Recipe(
                title: "Risotto alla Milanese",
                difficulty: .medium,
                steps: [
                    "In a saucepan, heat chicken or vegetable broth until hot but not boiling.",
                    "In a separate pan, melt butter and sauté minced onion until translucent.",
                    "Add Arborio rice to the pan and toast for a few minutes.",
                    "Pour in white wine and cook until it evaporates.",
                    "Begin adding hot broth to the rice, one ladleful at a time, stirring constantly.",
                    "Continue adding broth and stirring until rice is creamy and al dente, about 18-20 minutes.",
                    "Stir in grated Parmesan cheese and saffron threads.",
                    "Season with salt and pepper to taste.",
                    "Serve hot, garnished with additional grated Parmesan cheese."
                ],
                ingredients: ["Arborio rice", "Chicken or vegetable broth", "Onion", "White wine", "Parmesan cheese", "Saffron threads"],
                image: UIImage(named: "risotto alla milanese")
            ),
            Recipe(
                title: "Bruschetta",
                difficulty: .easy,
                steps: [
                    "Preheat grill or broiler.",
                    "Slice bread into thick slices and toast until golden brown on both sides.",
                    "Rub toasted bread slices with garlic cloves.",
                    "Drizzle bread with olive oil and sprinkle with salt.",
                    "Top each slice with diced tomatoes, fresh basil, and a drizzle of balsamic glaze.",
                    "Serve immediately as an appetizer or snack."
                ],
                ingredients: ["Italian bread", "Garlic cloves", "Tomatoes", "Fresh basil", "Balsamic glaze", "Olive oil", "Salt"],
                image: UIImage(named: "bruschetta")
            ),
            Recipe(
                title: "Lasagna",
                difficulty: .medium,
                steps: [
                    "Preheat oven to 375°F (190°C).",
                    "In a large skillet, cook ground beef and minced onion until browned.",
                    "Add crushed tomatoes, tomato paste, garlic, Italian seasoning, salt, and pepper to the skillet.",
                    "Simmer meat sauce for 15-20 minutes.",
                    "In a separate bowl, mix together ricotta cheese, egg, grated Parmesan cheese, and chopped parsley.",
                    "Spread a thin layer of meat sauce in the bottom of a baking dish.",
                    "Arrange lasagna noodles over the sauce.",
                    "Spread a layer of ricotta mixture over the noodles, followed by a layer of mozzarella cheese.",
                    "Repeat layers until all ingredients are used, ending with a layer of mozzarella cheese on top.",
                    "Cover with foil and bake for 25 minutes.",
                    "Remove foil and bake for an additional 25 minutes or until cheese is bubbly and golden brown.",
                    "Let lasagna rest for 10 minutes before slicing and serving."
                ],
                ingredients: ["Lasagna noodles", "Ground beef", "Onion", "Crushed tomatoes", "Tomato paste", "Garlic", "Italian seasoning", "Salt", "Pepper", "Ricotta cheese", "Egg", "Parmesan cheese", "Fresh parsley", "Mozzarella cheese"],
                image: UIImage(named: "lasagna")
            ),
            Recipe(
                title: "Pesto Pasta",
                difficulty: .easy,
                steps: [
                    "Cook pasta according to package instructions until al dente.",
                    "In a food processor, combine fresh basil leaves, pine nuts, garlic, Parmesan cheese, and olive oil.",
                    "Process until smooth, adding more olive oil if necessary.",
                    "Toss cooked pasta with pesto sauce until evenly coated.",
                    "Serve hot, garnished with additional grated Parmesan cheese and pine nuts."
                ],
                ingredients: ["Pasta", "Fresh basil leaves", "Pine nuts", "Garlic", "Parmesan cheese", "Olive oil"],
                image: UIImage(named: "pesto pasta")
            ),
            Recipe(
                title: "Caprese Salad",
                difficulty: .easy,
                steps: [
                    "Slice tomatoes and fresh mozzarella cheese into thick slices.",
                    "Arrange tomato and mozzarella slices on a serving platter, alternating them.",
                    "Tear fresh basil leaves and scatter them over the tomatoes and mozzarella.",
                    "Drizzle balsamic glaze over the salad.",
                    "Season with salt and pepper to taste.",
                    "Serve immediately as a refreshing appetizer or side dish."
                ],
                ingredients: ["Tomatoes", "Fresh mozzarella cheese", "Fresh basil leaves", "Balsamic glaze", "Salt", "Pepper"],
                image: UIImage(named: "caprese salad")
            ),
            Recipe(
                title: "Minestrone Soup",
                difficulty: .medium,
                steps: [
                    "In a large pot, heat olive oil over medium heat.",
                    "Add diced onion, carrots, and celery to the pot and sauté until softened.",
                    "Stir in minced garlic, diced tomatoes, kidney beans, cannellini beans, vegetable broth, and Italian seasoning.",
                    "Bring soup to a boil, then reduce heat and simmer for 20-25 minutes.",
                    "Add chopped zucchini, green beans, and pasta to the pot and cook for an additional 10-12 minutes until vegetables and pasta are tender.",
                    "Season soup with salt and pepper to taste.",
                    "Serve hot, garnished with grated Parmesan cheese and fresh basil."
                ],
                ingredients: ["Olive oil", "Onion", "Carrots", "Celery", "Garlic", "Tomatoes", "Kidney beans", "Cannellini beans", "Vegetable broth", "Italian seasoning", "Zucchini", "Green beans", "Pasta", "Parmesan cheese", "Fresh basil"],
                image: UIImage(named: "minestrone soup")
            ),


            Recipe(
                title: "Ravioli with Sage Butter Sauce",
                difficulty: .medium,
                steps: [
                    "Cook ravioli in boiling salted water according to package instructions until al dente.",
                    "In a skillet, melt butter over medium heat until it starts to brown.",
                    "Add fresh sage leaves to the skillet and cook until crispy.",
                    "Remove sage leaves from skillet and set aside.",
                    "Add cooked ravioli to the skillet and toss in the browned butter sauce.",
                    "Serve hot, garnished with crispy sage leaves and grated Parmesan cheese."
                ],
                ingredients: ["Ravioli", "Butter", "Fresh sage leaves", "Parmesan cheese"],
                image: UIImage(named: "ravioli with sage butter sauce")
            ),
            Recipe(
                title: "Gelato",
                difficulty: .hard,
                steps: [
                    "In a saucepan, heat milk, sugar, and vanilla extract over medium heat until sugar is dissolved.",
                    "In a separate bowl, whisk egg yolks until pale and creamy.",
                    "Gradually whisk hot milk mixture into egg yolks.",
                    "Return mixture to saucepan and cook over low heat, stirring constantly, until it thickens enough to coat the back of a spoon.",
                    "Remove from heat and let cool completely.",
                    "Once cooled, churn mixture in an ice cream maker according to manufacturer's instructions.",
                    "Transfer churned gelato to a freezer-safe container and freeze until firm.",
                    "Serve scoops of gelato in bowls or cones."
                ],
                ingredients: ["Milk", "Sugar", "Vanilla extract", "Egg yolks"],
                image: UIImage(named: "gelato")
            ),
            Recipe(
                title: "Amatriciana Pasta",
                difficulty: .medium,
                steps: [
                    "Cook spaghetti in boiling salted water until al dente.",
                    "In a skillet, cook diced pancetta until crispy.",
                    "Remove pancetta from skillet and set aside.",
                    "In the same skillet, sauté minced onion and garlic until softened.",
                    "Add canned crushed tomatoes, red pepper flakes, and black pepper to the skillet.",
                    "Simmer sauce for 10-15 minutes.",
                    "Toss cooked spaghetti with sauce until evenly coated.",
                    "Serve hot, garnished with crispy pancetta and grated Pecorino Romano cheese."
                ],
                ingredients: ["Spaghetti", "Pancetta", "Onion", "Garlic", "Canned crushed tomatoes", "Red pepper flakes", "Black pepper", "Pecorino Romano cheese"],
                image: UIImage(named: "amatriciana pasta")
            )
        
    ]
}

