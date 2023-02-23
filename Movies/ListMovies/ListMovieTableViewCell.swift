//
//  ListMovieTableViewCell.swift
//  Movies
//
//  Created by webwerks on 02/02/23.
//

import UIKit

class ListMovieTableViewCell: UITableViewCell {

    @IBOutlet weak var movieReleaseDate: UILabel!
    @IBOutlet weak var movieImage: UIImageView!

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var likesAndRatings: UILabel!
    @IBOutlet weak var ratingImage: UIImageView!
    @IBOutlet weak var calendarImage: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
