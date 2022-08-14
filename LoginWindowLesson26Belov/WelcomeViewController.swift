//
//  GreetingScreenViewController.swift
//  LoginWindowLesson26Belov
//
//  Created by Белов Руслан on 13.08.2022.
//

import UIKit

final class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomingText: UILabel!

    var welcomingPrepare: String!
//    let layer = CAGradientLayer()

//хотел сделать через клоужер но что не вышло(

//    let layer: CAGradientLayer = {
//        layer.frame = view.bounds
//        layer.colors = [UIColor.yellow.cgColor, UIColor.green.cgColor]
//        layer.startPoint = CGPoint(x: 0,y: 0)
//    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        welcomingText.text = welcomingPrepare
//        GradientLayer()
//        view.layer.addSublayer(layer)
    }


//Почти получилось добавить но градиент все перекрывает хотя иерахрия правильная обьектов 

//    func GradientLayer() {
//        layer.frame = view.bounds
//        layer.colors = [UIColor.yellow.cgColor, UIColor.green.cgColor]
//        layer.startPoint = CGPoint(x: 0,y: 0)
//    }








    

// MARK: - заметки для себя

//    @IBAction func logOutButtom() {
//        dismiss(animated: true)//работает только с модальным переходом с шоу
//                                 сигвей не работает
//    }
}
