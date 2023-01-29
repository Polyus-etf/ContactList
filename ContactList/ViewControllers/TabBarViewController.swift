//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Сергей Поляков on 25.12.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let contactList = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }
    
    func setupTabBar() {
        guard let expandContactListVC = viewControllers?.first as? ExpandContactListTableTableViewController else { return }
        guard let detailedContactListVC = viewControllers?.last as? DetailedContactListTableViewController else { return }
        expandContactListVC.contactList = contactList
        detailedContactListVC.contactList = contactList
    }
}
