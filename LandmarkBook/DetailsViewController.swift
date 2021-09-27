//
//  DetailsViewController.swift
//  LandmarkBook
//
//  Created by Swayam Barik on 9/27/21.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    var selectedName = ""
    var selectImage = UIImage()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedName
        imageView.image = selectImage
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
