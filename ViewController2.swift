//
//  ViewController2.swift
//  closure
//
//  Created by Mac on 07/08/21.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var name2: UITextField!
    
    @IBOutlet weak var Age2: UITextField!
    
    @IBOutlet weak var Hobby2: UITextField!
    
    var closureVC2:((String,String,String)->())?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    

    @IBAction func SAVE(_ sender: UIButton) {
        if let vc=self.storyboard?.instantiateViewController(identifier: "ViewController") as? ViewController{
            
            if let uname=name2?.text,let uage=Age2?.text,let uhobby=Hobby2?.text{
            
                closureVC2?(uname,uage,uhobby)
                print(uname)
            }
        self.navigationController?.popViewController(animated: true)
        
    }
}
    }
    

