//
//  ServiceViewController.swift
//  Easy Authen
//
//  Created by   iMac_26 on 6/23/2559 BE.
//  Copyright © 2559 sitapa. All rights reserved.
//

import UIKit

class ServiceViewController: UIViewController {

    @IBOutlet weak var ishiharaImageView: UIImageView!
    
    @IBOutlet weak var answerTextField: UITextField!
    
    
    var myIndex:Int = 0
    var score = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }   // viewDid

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }   // didReceive
    
    
    @IBAction func answerButton(sender: AnyObject) {
        let strAnswer = answerTextField.text
        print("strAnswer ==> \(strAnswer)")
        
        var myImage = ["ishihara_01.png","ishihara_02.png","ishihara_03.png","ishihara_04.png","ishihara_05.png",
                       "ishihara_06.png","ishihara_07.png","ishihara_08.png","ishihara_09.png","ishihara_10.png"]
        var myTrueAnswer = [3,5,6,12,29,45,74,42,0,0]
        
        if (myIndex < 9) {
            myIndex += 1
            
            
        }else{
            myIndex = 0
            
        }
        let intAnswer = Int(strAnswer!)
        if (intAnswer == myTrueAnswer[myIndex]) {
            score += 1
            print("Score ==> \(score)")
        }
        
        
        ishiharaImageView.image = UIImage(named: myImage[myIndex])
        
        
    }   // answerButton
    


}   //Main Class
