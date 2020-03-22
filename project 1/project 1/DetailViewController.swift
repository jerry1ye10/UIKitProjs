//
//  DetailViewController.swift
//  project 1
//
//  Created by Jerry Ye on 3/22/20.
//  Copyright © 2020 Jerry Ye. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    var selectedImage: String?

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        title = selectedImage
        navigationController?.hidesBarsOnTap = true
        
        if let image = selectedImage{
            imageView.image = UIImage(named: image)
        }

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
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
