//
//  ViewController.swift
//  Logo
//
//  Created by Leo on 09/07/2017.
//  Copyright © 2017 Leo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   //題目圖片
    @IBOutlet  var imageView_1: Array<UIImageView>? //image Array
    
    
   
      
    //問答題array 種類
    struct Qa {
        
        var queImage:UIImage?
        var ans : String
    }
    
    //問答題array
    var logoArray = [
    
    Qa(queImage: #imageLiteral(resourceName: "Audi"), ans: "Audi"),
    Qa(queImage: #imageLiteral(resourceName: "suzuki"), ans: "Suzuki"),
    Qa(queImage: #imageLiteral(resourceName: "Ferrari"), ans: "Ferrari"),
    Qa(queImage: #imageLiteral(resourceName: "jaguar"), ans: "Jaguar"),
    Qa(queImage: #imageLiteral(resourceName: "Benz"), ans: "Benz"),
    Qa(queImage: #imageLiteral(resourceName: "McLaren"), ans: "Mclaren"),
    Qa(queImage: #imageLiteral(resourceName: "chevrolet"), ans: "Chevrolet"),
    Qa(queImage: #imageLiteral(resourceName: "cadillac"), ans: "Cadillac"),
    Qa(queImage: #imageLiteral(resourceName: "Skoda"), ans: "Skoda"),
    Qa(queImage: #imageLiteral(resourceName: "volkswagen"), ans: "Volkswagen"),
    Qa(queImage: #imageLiteral(resourceName: "Toyota"), ans: "Toyota"),
    Qa(queImage: #imageLiteral(resourceName: "mazda"), ans: "Mazda"),
    Qa(queImage: #imageLiteral(resourceName: "BMW"), ans: "BMW"),
    Qa(queImage: #imageLiteral(resourceName: "Luxgen"), ans: "Luxgen"),
    Qa(queImage: #imageLiteral(resourceName: "Lincoln"), ans: "Lincoln"),
    Qa(queImage: #imageLiteral(resourceName: "Maserati"), ans: "Maserati"),
    Qa(queImage: #imageLiteral(resourceName: "Infiniti"), ans: "Infiniti"),
    Qa(queImage: #imageLiteral(resourceName: "tesla"), ans: "Tesla"),
    Qa(queImage: #imageLiteral(resourceName: "Bentley"), ans: "Bentley"),
    Qa(queImage: #imageLiteral(resourceName: "Subaru"), ans: "Subaru"),
    Qa(queImage: #imageLiteral(resourceName: "OPEL"), ans: "Opel"),
    Qa(queImage: #imageLiteral(resourceName: "Saab"), ans: "Saab"),
    Qa(queImage: #imageLiteral(resourceName: "honda"), ans: "Honda"),
    Qa(queImage: #imageLiteral(resourceName: "peugeot"), ans: "Peugeot"),

    ]
  
    func imageRandom() {
    
        //for-in 在imageView_1的Array之間
        for a in imageView_1! {
            
            let index = Int(arc4random_uniform(UInt32(logoArray.count)))
            let randomnumber = logoArray[index].queImage
            
            //移除重複
            logoArray.remove(at: index)
            //產生亂數圖片
            a.image = randomnumber
            
           
        }
       
    }
   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
     
        imageRandom()
       
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        
    //因為storyboard有NavigationController
    let navControllers = segue.destination as! UINavigationController
    
    //viewControllers是Array, 當切換頁面是會生成不同的array, 在NavigationController後的viewController為第一個
    let controller = navControllers.viewControllers.first as! AnsViewController
 
      
       
        
       

}

}
