//
//  TabBarViewController.swift
//  ContactList
//
//  Created by abd ul’Karim 📚 on 02.05.2024.
//

import UIKit

final class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers()
    }
    
    private func setViewControllers() {
        guard let contactListVC = viewControllers?.first as? ContactListTableViewController else { return }
        guard let sectionsVC = viewControllers?.last as? SectionsTableViewController else { return }
        
        let persons = Person.getContactList()
        
        contactListVC.persons = persons
        sectionsVC.persons = persons
    }
    
}
