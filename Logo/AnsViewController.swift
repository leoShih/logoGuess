//
//  AnsViewController.swift
//  Logo
//
//  Created by Leo on 11/07/2017.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

protocol DataEnterDelegate:class {
    func userDidEnterInfo(info:String)
}

class AnsViewController: UIViewController {
    
    
    @IBOutlet weak var selectImage: UIImageView!
    
    @IBOutlet weak var dataTextField1: UITextField!
    
    weak var delegate:DataEnterDelegate? = nil
    
    @IBAction func sendDataBtn(_ sender: Any) {
        
        delegate?.userDidEnterInfo(info: dataTextField1.text!)
        
        // go back to the previous view controller
        self.navigationController?.popViewController(animated: true)
    }
   
    
    var image : UIImage!
 
    override func viewDidLoad() {
        super.viewDidLoad()

        selectImage.image = image
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
