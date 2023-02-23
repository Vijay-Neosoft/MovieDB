//
//  MovieDetailsViewController.swift
//  Movies
//
//  Created by webwerks on 22/02/23.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    
    var moviedetailsViewModel = MoviedetailsViewModel()

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    

}
extension MovieDetailsViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        moviedetailsViewModel.movieList?.results!.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieDetailsTableViewCell", for: indexPath) as!  MovieDetailsTableViewCell
        return cell
    }
    

}
extension MovieDetailsViewController:UITableViewDelegate{
    
}
