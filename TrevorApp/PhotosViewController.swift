//
//  PhotosViewController.swift
//  TrevorApp
//
//  Created by airMac on 2019-07-16.
//  Copyright © 2019 Desmand King. All rights reserved.
//

import UIKit

private let reuseId = "photoCell"
private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)

class PhotosViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var imageFiles = [String]()
    var images = [UIImage]()
        
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initializePhotos()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Do any additional setup after loading the view.
    }
    
    func initializePhotos() {
        
        imageFiles = ["IMG_0001.JPG",
                        "IMG_0009.JPG",
                        "IMG_0003.JPG",
                        "IMG_0004.JPG",
                        "IMG_0005.JPG",
                        "IMG_0006.JPG",
                        "IMG_0007.JPG",
                        "IMG_0008.JPG",
                        "IMG_0002.jpg"]
        
        for fileName in imageFiles {
            
            if let image = UIImage(named: fileName) {
                images.append(image)
            }
        }
        
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowPhoto" {
            if let selectedIndexPath = collectionView.indexPathsForSelectedItems?.first {
                
                let photo = images[selectedIndexPath.row]
                
                let destinationVC = segue.destination as! PhotoViewController
                
                destinationVC.regPhoto = photo
                
            }
        }
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
 

    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return images.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseId, for: indexPath) as! PhotoCollectionViewCell
    
        // Configure the cell
        
        cell.photoImageView.image = images[indexPath.row]
        
        return cell
    }
    

    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
