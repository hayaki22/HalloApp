//
//  callViewController.swift
//  HalloApp!
//
//  Created by Hayaki Maruta on 2021/08/05.
//

import UIKit

class callViewController: UIViewController {
    @IBOutlet var playerNameShow: UILabel!
    @IBOutlet var playerAgeShow: UILabel!
    
    
    var Name = ""
    var Age = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        playerNameShow.text = Name
        playerAgeShow.text = Age + "歳"
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
