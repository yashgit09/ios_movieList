//
//  AddMovieViewController.swift
//  ContactTableView
//
//  Created by user213883 on 3/21/22.
//

import UIKit

class AddMovieViewController: UIViewController {

   
    @IBOutlet weak var newMovieLabel: UITextField!
    
    
    var movieList: MovieList!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if !newMovieLabel.text!.isEmpty{
            let title = newMovieLabel.text!
            let movie = Movie(title: title)
            movieList.addMovie(movie: movie)
        }
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
