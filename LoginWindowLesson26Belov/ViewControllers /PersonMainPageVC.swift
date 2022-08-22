//
//  PersonMainPageVC.swift
//  LoginWindowLesson26Belov
//
//  Created by Белов Руслан on 21.08.2022.
//

import UIKit

class PersonMainPageVC: UIViewController {

    @IBOutlet weak var fotoOfUser: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var secondName: UILabel!
    @IBOutlet weak var age: UILabel!
    @IBOutlet weak var relationship: UILabel!
    @IBOutlet weak var developingExperience: UILabel!
    @IBOutlet weak var hobbi: UILabel!

    var user: User?


    override func viewDidLoad() {
        super.viewDidLoad()
//        fotoOfUser.layer.cornerRadius = 100
    }

    private func getInfo() {
        name.text = user?.info.Name
        
    }
}
