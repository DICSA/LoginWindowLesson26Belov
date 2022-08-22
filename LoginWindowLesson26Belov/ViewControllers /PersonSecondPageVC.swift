//
//  PersonSecondPageVC.swift
//  LoginWindowLesson26Belov
//
//  Created by Белов Руслан on 21.08.2022.
//

import UIKit

class PersonSecondPageVC: UIViewController {

    @IBOutlet weak var bio: UITextView!

    var user: User?

    override func viewDidLoad() {
        super.viewDidLoad()
        bio.text = user?.info.bio
        bio.isEditable = true

        // Do any additional setup after loading the view.
    }



    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
