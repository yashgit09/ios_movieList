//
//  MovieList.swift
//  ContactTableView
//
//  Created by user213883 on 3/21/22.
//

import Foundation

enum MovieKey: String, CaseIterable{
    case movies
}

class MovieList {
    
    var movies = [MovieKey:[String]]()
    
    init(autofill: Bool){
        if autofill{
            movies[.movies] = ["Eternals","Dune","No time to die","Last night in soho","Ron's done wrong","Halloween kills","Venom","Antlers","The Adams Family 2"]
        }
    }
    
    func addMovie (movie: Movie){
        
        if movies[.movies] != nil{
                movies[.movies]!.append(movie.title)
        }else{
            movies[.movies] = [movie.title];
        }

    }
    
    func removeMovie (indexPath: IndexPath){
        let key: MovieKey = .movies
        movies[key]?.remove(at: indexPath.row)
    }

    
    
}
