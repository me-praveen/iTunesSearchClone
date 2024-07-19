//
//  SearchPlaceholderView.swift
//  iTunesSearchClone
//
//  Created by Praveen on 19/07/24.
//

import SwiftUI

struct SearchPlaceholderView: View {
    
    @Binding var searchTerm: String
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Search From Search Bar")
                .font(.title)
                .bold()
                

        }
    }
}

struct SearchPlaceholderView_Previews: PreviewProvider {
    static var previews: some View {
        SearchPlaceholderView(searchTerm: .constant("John"))
    }
}
