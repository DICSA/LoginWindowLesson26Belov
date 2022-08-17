//
//  ModelUser.swift
//  LoginWindowLesson26Belov
//
//  Created by Белов Руслан on 17.08.2022.
//

struct User {
    let userName: String
    let passwordUser: String

    static func getUser() -> User {
        User(userName: "1", passwordUser: "1")
    }
}

struct Person {
    let personName: String
    let secondPersonName: String
    let age: Int
    let relations: Bool
    let yearsInDevelopment: Double
    let hobbies: String

    static func getPerson() -> Person {
        Person(personName: "Руслан", secondPersonName: "Белов", age: 30, relations: true, yearsInDevelopment: 0.8, hobbies: "Мотоциклы")
    }
}



//Eugenya Bruyko, [16 авг. 2022 г., 01:38:29]:
//Не совсем так, пользователь вашим приложением будет один человек, у него есть учетка, это логин и пароль, это будет модель юзер, так же у этого пользователя есть свои какие то данные, например хобби, имя, фамилия, возраст и так далее, это уже будет модель Person, то есть у тебя получится две связанные модели
//
//И да в нашем случае лучше использовать структуру.
//
//Eugenya Bruyko, [16 авг. 2022 г., 23:35:58]:
//а в методе prepare ты правильно понимаешь что нужно через через таб бар передавать , все как на уроке мы передавали
//
//сегвей куда упирается до того и кастишь
//
//override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
//        welcomeVC.userName = userNameTF.text
//
//        guard let tabBar = segue.destination as? UITabBarController else { return }
//        guard let viewcontrollers = tabBar.viewControllers else { return }
//
//        for viewcontroller in viewcontrollers {
//            if let welcomeVC = viewcontroller as? WelcomeViewController {
//                welcomeVC.userName = userNameTF.text
//            }
//        }
//    }

//
//Anton Zarichny, [17 авг. 2022 г., 22:57:27]:
//А как обратиться к разным сегвеям в одном prepare
//
//И можно так вообще?
//
//Евгений, [17 авг. 2022 г., 22:58:27]:
//Индетификатор задать

//Я сделал в следующем вью контроллере, просто через новый метод prepare
