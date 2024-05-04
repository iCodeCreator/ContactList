//
//  ContactListTableViewController.swift
//  ContactList
//
//  Created by abd ul’Karim 📚 on 02.05.2024.
//

import UIKit

final class ContactListTableViewController: UITableViewController {
    
    var persons: [Person]!


    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let person = persons[indexPath.row]
        
        content.text = person.fullName
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            guard let contactDetailVC = segue.destination as? ContactDetailsViewController else { return }
            contactDetailVC.person = persons[indexPath.row]
        }
    }
}
