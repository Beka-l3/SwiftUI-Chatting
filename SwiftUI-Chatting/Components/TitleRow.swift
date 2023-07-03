//
//  TitleRow.swift
//  SwiftUI-Chatting
//
//  Created by Bekzhan Talgat on 03.07.2023.
//

import SwiftUI

struct TitleRow: View {
    let imageURL = URL(string: "https://images.unsplash.com/photo-1652650519133-16956d74279f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1335&q=80")
    let name = "Ivan Vasilenko"
    
    var body: some View {
        HStack(spacing: 20) {
            AsyncImage(url: imageURL) { image in
                image.resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(50)
                
            } placeholder: {
                ProgressView()
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.title.bold())
                    .foregroundColor(.white)
                
                Text("Online")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10)
                .background(.white)
                .cornerRadius(50)
        }
        .padding()
    }
    
}

//struct TitleRow_Previews: PreviewProvider {
//    static var previews: some View {
//        TitleRow()
//            .background(Color("Wet Asphalt"))
//    }
//}
