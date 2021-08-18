//
//  InfoView.swift
//  EddyCode
//
//  Created by Ed Yama on 18/08/21.
//

import SwiftUI

struct InfoView: View {
    
    let text: String
    let imageView: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .frame(height: 50.0)
            .foregroundColor(Color.white)
            .overlay(
                HStack {
                    Image(systemName: imageView)
                        .foregroundColor(Color.green)
                    Text(text)
                }
            )
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Olá", imageView: "phone.fill")
            .previewLayout(.sizeThatFits)
    }
}
