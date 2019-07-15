//
//  ScreenViewController.swift
//  SlideshowApp
//
//  Created by 坪井衛三 on 2019/07/14.
//  Copyright © 2019 Eizo Tsuboi. All rights reserved.
//

import UIKit

class ScreenViewController: UIViewController {
    @IBOutlet weak var screenview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    var nowimage: UIImage?
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        screenview.image = nowimage
        

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
