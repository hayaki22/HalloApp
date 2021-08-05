//
//  ViewController.swift
//  HalloApp!
//
//  Created by Hayaki Maruta on 2021/08/04.
//

import UIKit

class ViewController: UIViewController,UITextFieldDelegate {
    @IBOutlet var playerName: UITextField!
    @IBOutlet var age: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        playerName.delegate = self
        age.delegate = self
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNextVC" {
            let nextView = segue.destination as! callViewController
            nextView.Name = playerName.text!
            nextView.Age = age.text!
        }
    }

    @IBAction func nextButton(_ sender: Any) {
        performSegue(withIdentifier: "toNextVC", sender: nil)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
}

