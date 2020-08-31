//
//  ViewController.swift
//  Nested-Group-August-24
//
//  Created by Margiett Gil on 8/24/20.
//  Copyright © 2020 Margiett Gil. All rights reserved.
//

import UIKit


enum SectionKind: Int, CaseIterable { // so we know how many items it has or how many cases it has
    case first
    case second
    case third
    
    // computed property will return the number of
    // items to vertically stack
    
    var itemCount: Int {
        switch self { // sectionKind 
            
        }
    }
    
}

class ViewController: UIViewController {
    
    private var collectionView: UICollectionView!
    
    typealias DataSource = UICollectionViewDiffableDataSource<Int, Int> // A typealias in Swift is literally an alias for an existing type. Simple, isn't it? They can be useful in making your code a bit more readable. By using them in a smart way they can be really useful in your codebase.
    private var dataSource: DataSource!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    private func createLayout() -> UICollectionViewLayout {
        // item -> group -> section - > layout
        
        
        //two ways to create a layout
        // 1. use a given section
        // 2. use a section provider which takes a closure
        //      - the section provider closure gets called
        //      - for each section
        
        // the reason why we are using the section provider because each section we are using are different !
        let layout = UICollectionViewCompositionalLayout { (sectionIndex, layoutEnviroment) ->  NSCollectionLayoutSection? in
            
            // item
            // fractional width or height of the group will determin the size of the entire space
            // the item that you put in the contanior the first item will take 100% space of the contianor space till you add more items in it
            let itemSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(1.0), heightDimension: .fractionalHeight(1.0))
            
            let item = NSCollectionLayoutItem(layoutSize: itemSize)
            
            
            
            // group
            
            let innerGroupSize = NSCollectionLayoutSize(widthDimension: .fractionalWidth(0.50), heightDimension: .fractionalHeight(1.0))
            
            let innerGroup = NSCollectionLayoutGroup.vertical(layoutSize: innerGroupSize, subitems: item, count: 2 or 1)
            
            
            // section
        
    }
// layout
        return layout

}

}
