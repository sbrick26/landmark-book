//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Swayam Barik on 9/27/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var landmarkNames = [String]()
    var landmarkImages = [UIImage]()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        
        // Landmark Book Data
        
        landmarkNames.append("Coll")
        landmarkNames.append("krem")
        landmarkNames.append("wall")
        landmarkNames.append("taj")
        
        
        landmarkImages.append(UIImage(named: "Coll.jpeg")!)
        landmarkImages.append(UIImage(named: "krem.jpeg")!)
        landmarkImages.append(UIImage(named: "wall.jpeg")!)
        landmarkImages.append(UIImage(named: "taj.jpeg")!)
        
        navigationItem.title = "Landmark Book"
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count
    }
    
    // how to add delete, this is where you would delete in database
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    
    // fucntion for tapping on table view cell
    var chosenName = ""
    var chosenLandmark = UIImage()
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenName = landmarkNames[indexPath.row]
        chosenLandmark = landmarkImages[indexPath.row]
        
        
        performSegue(withIdentifier: "toDetailsViewController", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsViewController" {
            let destinationVC = segue.destination as! DetailsViewController
            destinationVC.selectedName = chosenName
            destinationVC.selectImage = chosenLandmark
        }
    }


}

