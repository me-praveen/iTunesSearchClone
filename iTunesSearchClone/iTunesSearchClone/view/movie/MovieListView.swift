//
//  MovieListView.swift
//  iTunesSearchClone
//
//  Created by Praveen on 19/07/24.
//

import SwiftUI

struct MovieListView: View {
    @ObservedObject var viewModel: MovieListViewModel
    
    var body: some View {
        
        List {
            ForEach(viewModel.movies) { movie in
                MovieRowView(movie: movie)
            }
            
            ListPlaceholderRowView(state: viewModel.state,
                                   loadMore: viewModel.loadMore)
        }
        .listStyle(.plain)
        
    }
}

struct MovieListView_Previews: PreviewProvider {
    static var previews: some View {
        MovieListView(viewModel: MovieListViewModel())
    }
}
