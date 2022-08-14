//
//  ViewController.swift
//  LoginWindowLesson26Belov
//
//  Created by Белов Руслан on 12.08.2022.
// 

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet weak var userNameField: UITextField!
    @IBOutlet weak var passwordUserField: UITextField!
    @IBOutlet weak var forgotUserNameButtom: UIButton!
    @IBOutlet weak var forgotPasswordButtom: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    /* не все успел реализовать что хотел((( извините 2 дня отмечали день рождения девушки как то я загулял было самонадеянно оставлять это на последние 4 часа до сдачи 🤦‍♂️
     не успел разобраться в перекрытии клавиатурой элементов и скрытии ее по тапу на экран, а так же градиент для backgrond */


    //MARK: - методы перадачи информации между экранами

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController
        else { return }
        welcomeVC.welcomingPrepare = "Welcome, \(String(describing:userNameField.text ?? ""))"

    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard segue.source is WelcomeViewController
        else { return }
        userNameField.text = ""
        passwordUserField.text = ""
    }

//Не совсем понимаю как реализовать
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
    }
    

    // MARK: - настройка кнопок

    @IBAction func logInButtom() {
        if userNameField.text == "Eugenya" , passwordUserField.text == "Best" {

        } else {
            let alert = UIAlertController(title: "Invalid login or password 😿",
                                          message: "Please, enter corret login and password",
                                          preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "☑️",
                                          style: UIAlertAction.Style.default,
                                          handler: nil))
            self.present(alert, animated: true, completion: nil)
        }

    }

    @IBAction func forgotUserName() {
        // создать алерт
        let alert = UIAlertController(title: "Oops!",
                                      message: "Your user name is (Eugenya)! ☺️",
                                      preferredStyle: .alert)

        // добавить активную кнопку
        alert.addAction(UIAlertAction(title: "Thanks!",
                                      style: UIAlertAction.Style.default,
                                      handler: nil))

        // показать алерт
        self.present(alert, animated: true, completion: nil)
    }

    @IBAction func forgotPassword() {
        let alert = UIAlertController(title: "Oops!",
                                      message: "Your password is (Best)! 🤟",
                                      preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Thanks!",
                                      style: UIAlertAction.Style.default,
                                      handler: nil))
        self.present(alert, animated: true, completion: nil)
    }


}

