//
//  ImageViewController.swift
//  LandMarkBook
//
//  Created by Mert Cihangiroğlu on 1/25/19.
//  Copyright © 2019 MertCihangiroglu. All rights reserved.
//

import UIKit

class ImageViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var landmarkName = ""
    var landMarkImage = UIImage()
    override func viewDidLoad() {
        super.viewDidLoad()

       imageView.image = landMarkImage
       nameLabel.text = landmarkName
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
