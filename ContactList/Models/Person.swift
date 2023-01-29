//
//  Person.swift
//  ContactList
//
//  Created by Сергей Поляков on 25.12.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

// MARK: - Extensions

extension Person {
    static func getPersons() -> [Person] {
        var person: [Person] = []
        
        let names = DataStore.names.shuffled()
        let surnames = DataStore.surnames.shuffled()
        let emails = DataStore.emails.shuffled()
        let phoneNumbers = DataStore.phoneNumbers.shuffled()
        
        let minValue = min(names.count, surnames.count, emails.count, phoneNumbers.count)
        
        for index in 0 ..< minValue {
            person.append(
                Person(
                    name: names[index],
                    surname: surnames[index],
                    email: emails[index],
                    phoneNumber: phoneNumbers[index]
                )
            )
        }
        return person
    }
}
