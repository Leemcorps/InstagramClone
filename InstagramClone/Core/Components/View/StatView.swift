//
//  StatView.swift
//  InstagramClone
//
//  Created by Azhar Bahleem on 26/09/23.
//

import SwiftUI

struct StatView: View {
    let value: Int
    let title: String
    
    var body: some View {
        
        
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 72)
        
        
    }
}

#Preview {
    StatView(value: 15, title: "Posts")
}
