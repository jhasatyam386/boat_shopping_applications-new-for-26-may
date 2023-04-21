//
//  ViewControllerForHome.swift
//  boat_shopping_applications
//
//  Created by R&W on 14/04/23.
//

import UIKit

class ViewControllerForHouse: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource ,UICollectionViewDelegateFlowLayout{
   

    var arrBigPostureFromBoat = [21,22,23]
    var arrForMiniImage = [11,12,13,14]
    var arrMiniImageTitle = ["TRUE WIRELESS","WIRELESS","WIRED","SPEAKERS"]
    
    var arrForIMG  = [1,2,3,4,5,6,7,8,9,10]
    var arrForTitle = ["1 Year Warranty","7 Days Replacement","Free Shipping","Secure Checkout","GST Billing","1 Year Warranty","7 Days Replacement","Free Shipping","Secure Checkout","GST Billing"]
    
  
    @IBOutlet weak var collectionViewMiniImage: UICollectionView!
    @IBOutlet weak var collectionViewForBigThreeadPosture: UICollectionView!
    @IBOutlet weak var collectionviewForInfo: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionviewForInfo{
            return arrForIMG.count
        }
        else if collectionView == self.collectionViewForBigThreeadPosture {
            return arrBigPostureFromBoat.count
        }
        else{
            return arrForMiniImage.count
        }
       
        
   }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.collectionviewForInfo{
        let cell1 = collectionviewForInfo.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! CollectionViewCell1
        cell1.lablforDetail.text = "\(arrForTitle[indexPath.row])"
        cell1.img1.image = UIImage(named: "\(arrForIMG[indexPath.row])")
        cell1.backgroundColor = .white
        return cell1
        }
        else if collectionView == self.collectionViewForBigThreeadPosture{
            let cell2 = collectionViewForBigThreeadPosture.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! CollectionViewCell2
            cell2.img2.image = UIImage(named: "\(arrBigPostureFromBoat[indexPath.row])")
            return cell2

        }
        else{
            let cell3 = collectionViewMiniImage.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! CollectionViewCellFor2
            cell3.imgMiniForImageView.image = UIImage(named: "\(arrForMiniImage[indexPath.row])")
            cell3.titleForMiniImage.text = "\(arrMiniImageTitle[indexPath.row])"
            cell3.imgMiniForImageView.layer.cornerRadius = 51
            cell3.layer.masksToBounds = true

            return cell3
        }
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.collectionviewForInfo{
            return CGSize(width: 150, height: 120)
        }
        else if collectionView == self.collectionViewForBigThreeadPosture{
            return CGSize(width: 400, height: 450)
        }
        else{
            return CGSize(width: 90, height: 140)

        }
    }
    
 
    

}