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
    @IBOutlet weak var stackViewForButtonForgot: UIStackView!

    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillShoy(notification:)),
                                               name: UIResponder.keyboardDidShowNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(keyboardWillHide(notification:)),
                                               name: UIResponder.keyboardWillHideNotification,
                                               object: nil)
    }


    private let user = User.getUser()

    //MARK: - поднятие контента с вызовом клавиатуры

    @objc private func keyboardWillShoy(notification: NSNotification) {
        if let keyboardFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardHeight = keyboardFrame.cgRectValue.height
            let bottomSpace = self.view.frame.height - (stackViewForButtonForgot.frame.origin.y + stackViewForButtonForgot.frame.height)
            self.view.frame.origin.y -= keyboardHeight - bottomSpace + 10
        }
    }

    @objc private func keyboardWillHide(notification: NSNotification) {
        self.view.frame.origin.y = 0
    }

    deinit {
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardDidShowNotification,
                                                  object: nil)
        NotificationCenter.default.removeObserver(self,
                                                  name: UIResponder.keyboardWillHideNotification,
                                                  object: nil)
    }

    //MARK: - методы перадачи информации между экранами

    //метод работает вперед
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController
        else { return }
        welcomeVC.user = user.userName
    }
    //метод работает назад
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        userNameField.text = ""
        passwordUserField.text = ""
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }



    // MARK: - настройка кнопок

    @IBAction func logInButtom() {
        guard userNameField.text == user.userName, passwordUserField.text == user.passwordUser else {
            showAlert(title: "Invalid login or password 😿" ,
                      massage: "Please, enter corret login and password",
                      textField: passwordUserField
            )
            return

        }
        performSegue(withIdentifier: "openWelcomeVC", sender: nil)

    }

    
    @IBAction func forgotRegisterData(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops!", massage: "Your name is \(user.userName) 😉")
        : showAlert(title: "Oops!", massage: "Your password is \(user.passwordUser) 😉")
    }



   private func showAlert(title: String, massage: String, textField: UITextField? = nil) {
       let alert = UIAlertController(title: title, message: massage, preferredStyle: .alert)
       let okAction = UIAlertAction(title: "Thanks!", style: .default) { _ in
           textField?.text = ""
       }
       alert.addAction(okAction)
       present(alert, animated: true)
    }

}





// MARK: - заметки для себя

//@IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
//    //лишний код
//     guard segue.source is WelcomeViewController
//     else { return }
//    userNameField.text = ""
//    passwordUserField.text = ""
//}


//переделать
//        if userNameField.text == user , passwordUserField.text == password {
//
//        }
//        else {
//            let alert = UIAlertController(title: "Invalid login or password 😿",
//                                          message: "Please, enter corret login and password",
//                                          preferredStyle: .alert)
//            alert.addAction(UIAlertAction(title: "☑️",
//                                          style: UIAlertAction.Style.default,
//                                          handler: nil))
//            self.present(alert, animated: true, completion: nil)
//        }


//        // создать алер
//        let alert = UIAlertController(title: "Oops!",
//                                      message: "Your user name is (\(user)! ☺️",
//                                      preferredStyle: .alert)
//
//        // добавить активную кнопку
//        alert.addAction(UIAlertAction(title: "Thanks!",
//                                      style: UIAlertAction.Style.default,
//                                      handler: nil))
//
//        // показать алерт
//        self.present(alert, animated: true, completion: nil)


//    @IBAction func forgotPassword() {
//        let alert = UIAlertController(title: "Oops!",
//                                      message: "Your password is (\(password)! 🤟",
//                                      preferredStyle: .alert)
//        alert.addAction(UIAlertAction(title: "Thanks!",
//                                      style: UIAlertAction.Style.default,
//                                      handler: nil))
//        self.present(alert, animated: true, completion: nil)
//    }


//tabBar
//создать модель данных для пользователя


