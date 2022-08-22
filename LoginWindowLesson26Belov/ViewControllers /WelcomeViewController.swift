//
//  GreetingScreenViewController.swift
//  LoginWindowLesson26Belov
//
//  Created by Белов Руслан on 13.08.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomingText: UILabel!

    var user: String?


    private let firstColor = UIColor(red: 255/255,
                                     green: 179/255,
                                     blue: 24/255,
                                     alpha: 1)

    private let secondColor = UIColor(red: 255/255,
                                      green: 24/255,
                                      blue: 197/255,
                                      alpha: 1)

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomingText.text = "Welcome, \(user ?? "")"
        view.addVerticalGradientLayer(topColor: firstColor, bottomColor: secondColor)
    }

}

extension UIView {
    func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [topColor.cgColor, bottomColor.cgColor]
        gradient.locations = [0.0, 1.0]
        gradient.startPoint = CGPoint(x: 0, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        layer.insertSublayer(gradient, at: 0)
    }
}








// MARK: - заметки для себя

//    @IBAction func logOutButtom() {
//        dismiss(animated: true)//работает только с модальным переходом с шоу
//                                 сигвей не работает
//    }
