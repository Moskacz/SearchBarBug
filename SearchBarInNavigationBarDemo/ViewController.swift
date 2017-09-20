//
//  ViewController.swift
//  SearchBarInNavigationBarDemo
//
//  Created by Michal Moskala on 20.09.2017.
//  Copyright © 2017 Michal Moskala. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private weak var searchBar: UISearchBar?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.orange
        setupViews()
    }

    private func setupViews() {
        let button = UIButton()
        button.setTitle("close", for: .normal)
        button.sizeToFit()
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: button)
        
        let searchBar = UISearchBar()
        searchBar.sizeToFit()
        navigationItem.titleView = searchBar
        self.searchBar = searchBar
    }
    
    
    @objc func pushViewController() {
        let viewController = UIViewController()
        viewController.view.backgroundColor = UIColor.green
        navigationController?.pushViewController(viewController, animated: true)
    }
    
}

