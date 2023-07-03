//
//  MessageField.swift
//  SwiftUI-Chatting
//
//  Created by Bekzhan Talgat on 03.07.2023.
//

import SwiftUI

struct MessageField: View {
    @State private var message = ""
    @EnvironmentObject var messagesManager: MessagesManager
    
    var body: some View {
        HStack {
            CustomTextField(
                placeholder: Text("Enter your message here").foregroundColor(.black),
                text: $message
            ).foregroundColor(Color("Wet Asphalt"))
            
            Button {
                messagesManager.sendMessage(text: message)
                message = ""
            } label: {
                Image(systemName: "paperplane.fill")
                    .foregroundColor(.white)
                    .padding(10)
                    .background(Color("Wet Asphalt"))
                    .cornerRadius(50)
            }
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .background(Color("Gray"))
        .cornerRadius(50)
        .padding()
    }
}

struct CustomTextField: View {
    var placeholder: Text
    @Binding var text: String
    var editingChanged: (Bool) -> () = {_ in}
    var commit: () -> () = {}
    
    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                placeholder
                    .opacity(0.5)
            }
            
            TextField("", text: $text, onEditingChanged: editingChanged, onCommit: commit)
        }
    }
}

//struct MessageField_Previews: PreviewProvider {
//    static var previews: some View {
//        MessageField()
//          .environmentObject(MessagesManger())
//    }
//}
