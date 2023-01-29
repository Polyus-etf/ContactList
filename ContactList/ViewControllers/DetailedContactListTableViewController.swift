//
//  DetailedContactListTableViewController.swift
//  ContactList
//
//  Created by Сергей Поляков on 25.12.2022.
//

import UIKit

class DetailedContactListTableViewController: UITableViewController {
    
    var contactList: [Person]!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        contactList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedPerson", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.image = UIImage(systemName: "iphone")
            content.text = contactList[indexPath.section].phoneNumber
        } else {
            content.image = UIImage(systemName: "tray")
            content.text = contactList[indexPath.section].email
        }
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contactList[section].fullName
    }
}
