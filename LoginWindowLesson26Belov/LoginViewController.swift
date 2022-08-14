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

    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let welcomeVC = segue.source as? WelcomeViewController
        else { return }
        welcomeVC.welcomingText.text = "Welcome, \(String(describing:userNameField.text ?? ""))"
    }


    @IBAction func logInButtom() {
        
    }
    



    // MARK: - настройка алертов на кнопки

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

