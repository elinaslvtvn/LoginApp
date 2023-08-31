//
//  Users.swift
//  LoginApp
//
//  Created by Вадим Ардуанов on 25.08.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
        
    static func getUser() -> User {
        User(
            login: "User",
            password: "Password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let patronymic: String
    let age: String
    let city: String
    let bio: String
    let photo: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Elina",
            surname: "Arduanova",
            patronymic: "Salavatovna",
            age: "28",
            city: "Ufa",
            bio: "текст об Элине",
            photo: "Elinard"
    
        )
    }
}


