//
//  ListMoviesViewController.swift
//  Movies
//
//  Created by webwerks on 02/02/23.
//

import UIKit
import Kingfisher
class ListMoviesViewController: UIViewController {
 
    //var productListViewModel = ProductListViewModel()
    var listMovieViewModel = ListMoviesViewModel()
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listMovieViewModel.fetchMovieDetails {
            self.tableView.reloadData()
        }
    }
}
extension ListMoviesViewController:UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listMovieViewModel.movieList?.results?.count ?? 0
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListMovieTableViewCell", for: indexPath) as! ListMovieTableViewCell
        DispatchQueue.main.async {
            let product = self.listMovieViewModel.movieList?.results?[indexPath.row]
            if product?.posterPath != ""
            {
                cell.movieImage.contentMode = .scaleAspectFit
//                if let url = URL(string:"https://\(product?.posterPath ?? "")")
                if let url = URL(string:product?.posterPath ?? "")
                {
                    cell.movieImage.kf.setImage(with: url)
                }
            }
            else
            {
                cell.movieImage.image = UIImage(named: "emptyimage")
            }
            cell.movieName.text = product?.title
            cell.movieReleaseDate.text = product?.releaseDate
            cell.likesAndRatings.text = "\(product?.voteCount ?? 0) | \(product?.voteAverage ?? 0)"
        }
        
        return cell
    }
    
}

extension ListMoviesViewController:UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let movieDetails = listMovieViewModel.movieList?.results?[indexPath.row]
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "MovieDetailsViewController") as! MovieDetailsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

