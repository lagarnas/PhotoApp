//
//  PhotoViewController.swift
//  PhotoTapps
//
//  Created by Анастасия Лагарникова on 26.05.2020.
//  Copyright © 2020 lagarnas. All rights reserved.
//

import UIKit

class PhotoViewController: UIViewController {
    
    var image: UIImage?
    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image

    }
    


    @IBAction func shareActionButtom(_ sender: UIButton) {
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = {_, bool, _, _ in
            if bool {
                print("Успешно отправлено")
            }
            
        }
        
        present(shareController, animated: true, completion: nil)
    }
    
}
