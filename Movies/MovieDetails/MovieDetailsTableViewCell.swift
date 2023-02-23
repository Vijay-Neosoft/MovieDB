//
//  MovieDetailsTableViewCell.swift
//  Movies
//
//  Created by webwerks on 22/02/23.
//

import UIKit

class MovieDetailsTableViewCell: UITableViewCell {

    @IBOutlet weak var movieImage: UIImageView!
    @IBOutlet weak var movieName: UILabel!
   
    @IBOutlet weak var movieType: UILabel!
    @IBOutlet weak var movieDescription: UITextView!
    @IBOutlet weak var movieReleaseDateandtime: UILabel!
    @IBOutlet weak var movieRating: UILabel!
    @IBOutlet weak var posterImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
