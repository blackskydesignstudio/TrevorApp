//
//  PhotoViewController.swift
//  TrevorApp
//
//  Created by airMac on 2019-08-05.
//  Copyright © 2019 Desmand King. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet weak var zoomedPhoto: UIImageView!
    
    var regPhoto: UIImage!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.zoomedPhoto.image = regPhoto

        // Do any additional setup after loading the view.
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
