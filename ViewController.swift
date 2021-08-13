//
//  ViewController.swift
//  closure
//
//  Created by Mac on 07/08/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var age: UILabel!
    
    @IBOutlet weak var hobby: UILabel!
    var persons = [person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        persons.append(person(name: "Prachi", age: "28", hobby: "Driving"))
    }
    
    @IBAction func next(_ sender: UIButton) {
        if  let vc=self.storyboard?.instantiateViewController(identifier: "ViewController2") as? ViewController2{
            
            vc.closureVC2 = {uname,uage,uhobby in
            self.name?.text = uname
            self.age?.text = uage
            self.hobby?.text = uhobby
        }
            
                
        self.navigationController?.pushViewController(vc, animated: true)
    }
    }
    }
    
    



