//
//  ExpandContactListTableTableViewController.swift
//  ContactList
//
//  Created by Сергей Поляков on 25.12.2022.
//

import UIKit

class ExpandContactListTableTableViewController: UITableViewController {

    var contactList: [Person]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contactList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "person", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = contactList[indexPath.row].fullName
        cell.contentConfiguration = content
        return cell
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let personVC = segue.destination as? PersonViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        personVC.person = contactList[indexPath.row]
        personVC.navigationItem.title = contactList[indexPath.row].fullName
    }
}
