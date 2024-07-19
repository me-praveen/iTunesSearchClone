//
//  AlbumRowView.swift
//  iTunesSearchClone
//
//  Created by Praveen on 19/07/24.
//

import SwiftUI

struct AlbumRowView: View {
    
    let album: Album
    
    var body: some View {
        HStack {
            ImageLoadingView(urlString: album.artworkUrl100, size: 100)
            
            VStack(alignment: .leading) {
                Text(album.collectionName)
                Text(album.artistName)
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .lineLimit(1)
           
            Spacer(minLength: 20)
            BuyButton(urlString: album.collectionViewURL,
                      price: album.collectionPrice,
                      currency: album.currency)
            
        }
    }
}

struct AlbumRowView_Previews: PreviewProvider {
    static var previews: some View {
        AlbumRowView(album: Album.example())
    }
}
