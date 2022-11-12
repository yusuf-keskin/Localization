//
//  ViewController.swift
//  Localization
//
//  Created by YUSUF KESKİN on 12.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    private var myLabel : UILabel = {
        let label = UILabel()
        
        //Localized defined at bottom and added to text itself here:
        label.text = "Hello".localized()
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 32, weight: .semibold)
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        myLabel.frame = view.bounds
        view.addSubview(myLabel)
    }

}


//Localize func:
extension String {
    func localized() -> String {
        return NSLocalizedString(self,
                                 tableName: "Localizable",
                                 bundle: .main,
                                 value: self,
                                 comment: self)
    }
}

/*
 
 If we define key in NSLocalizedString as something other than self, it means we are giving it a key name and it's value will be in Localizable file, it works as a dictionary. So it could be:
 
 extension String {
 func localized() -> String {
 return NSLocalizedString("hello text",
 tableName: "Localizable",
 bundle: .main,
 value: self,
 comment: self)
 }
 }
 
 and in Turkish Localizable file it would be :
 
 "Hello" = "Merhaba";
 
 */

 
 
