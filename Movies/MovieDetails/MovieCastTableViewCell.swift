////
////  MovieCastTableViewCell.swift
////  Movies
////
////  Created by webwerks on 22/02/23.
////
//
//import UIKit
//
//class MovieCastTableViewCell: UITableViewCell {
//
//    @IBOutlet weak var collectionView: UICollectionView!
//    override func awakeFromNib() {
//        super.awakeFromNib()
//        self.collectionView.dataSource = self
//        self.collectionView.delegate = self
//    }
//
//    override func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//        // Configure the view for the selected state
//    }
//
//}
//extension MovieCastTableViewCell:UICollectionViewDataSource,UICollectionViewDelegate {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        1
//    }
//    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "UICollectionViewCell", for: indexPath)
//        return cell
//    }
//    
//  
//    
//    
//}
