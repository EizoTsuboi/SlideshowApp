//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 坪井衛三 on 2019/07/13.
//  Copyright © 2019 Eizo Tsuboi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //segueの設定
    @IBAction func unwind(_ segue: UIStoryboardSegue){
    }
    
    //遷移先のnowimage(:UIImage)にデータを渡す
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let screenViewController: ScreenViewController = segue.destination as! ScreenViewController
        
        screenViewController.nowimage = myimageview.image
        
        if timer != nil{
            slidebutton.title = "再生"
            timer.invalidate()
            timer = nil
            advance.isEnabled = true
            `return`.isEnabled = true
        }
        
    }
    

    @IBOutlet weak var myimageview: UIImageView!
    @IBOutlet weak var slidebutton: UIBarButtonItem!
    @IBOutlet weak var advance: UIBarButtonItem!
    @IBOutlet weak var `return`: UIBarButtonItem!
    
    
    var timer: Timer!
    let illusts = [UIImage(named: "illust1"), UIImage(named: "illust2"), UIImage(named: "illust3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myimageview.image = illusts[2]
    }
    


    @IBAction func advance(_ sender: Any) {
        if myimageview.image == illusts[0]{
            myimageview.image = illusts[1]
        }else if myimageview.image == illusts[1]{
            myimageview.image = illusts[2]
        }else if myimageview.image == illusts[2]{
            myimageview.image = illusts[0]
        }
    }

    @IBAction func imagereturn(_ sender: Any) {
        if myimageview.image == illusts[0]{
            myimageview.image = illusts[2]
        }else if myimageview.image == illusts[1]{
            myimageview.image = illusts[0]
        }else if myimageview.image == illusts[2]{
            myimageview.image = illusts[1]
        }
    }
    
    @IBAction func play(_ sender: Any) {
        if timer == nil{
            timer =  Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(advance(_:)), userInfo: nil, repeats: true)
            slidebutton.title = "停止"
            advance.isEnabled = false
            `return`.isEnabled = false
            

            
        }else{
            slidebutton.title = "再生"
            timer.invalidate()
            timer = nil
            advance.isEnabled = true
            `return`.isEnabled = true
        }
       
    }
}

