//
//  PhotoViewController.swift
//  CollectionView_swiftbook
//
//  Created by Vladimir on 15.01.2023.
//

import UIKit

class PhotoViewController: UIViewController {
    var image: UIImage?

    @IBOutlet weak var photoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        photoImageView.image = image        
    }
    
    //MARK: - Кнопка поделиться
    @IBAction func shareAction(_ sender: Any) {
        
        let shareController = UIActivityViewController(activityItems: [image!], applicationActivities: nil)
        
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool{
                print("Success")
            }
        }
        
        present(shareController, animated: true)
        
    }
    
    
}
