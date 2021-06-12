//
//  ViewController.swift
//  Quizz
//
//  Created by Mihir Solanki on 09/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.isHidden = true
        // Do any additional setup after loading the view.
    }
    @IBAction func buttonPressed(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        self.navigationController?.pushViewController(vc, animated: true)
        
       
    }
    

}

