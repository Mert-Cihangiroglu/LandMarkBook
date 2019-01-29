//
//  ViewController.swift
//  LandMarkBook
//
//  Created by Mert Cihangiroğlu on 1/24/19.
//  Copyright © 2019 MertCihangiroglu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    
    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    var selectedLandmarkName = ""
    var selectedLandMarkImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
        landmarkNames.append("Colosseum")
        landmarkNames.append("LondonEye")
        landmarkNames.append("OperaHouse")
        landmarkNames.append("StatueOfLiberty")
        
        landmarkImages.append(UIImage(named: "Colosseum.jpg")!)
        landmarkImages.append(UIImage(named: "LondonEye.jpg")!)
        landmarkImages.append(UIImage(named: "OperaHouse.jpg")!)
        landmarkImages.append(UIImage(named: "StatueOfLiberty.jpg")!)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toImageVC"{
            let destinationVC = segue.destination as! ImageViewController
            destinationVC.landmarkName = selectedLandmarkName
            destinationVC.landMarkImage = selectedLandMarkImage
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedLandmarkName = landmarkNames[indexPath.row]
        selectedLandMarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toImageVC", sender: nil)
    }
    
    
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    
}

