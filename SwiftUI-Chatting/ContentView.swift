//
//  ContentView.swift
//  SwiftUI-Chatting
//
//  Created by Bekzhan Talgat on 03.07.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messagesManager: MessagesManager = .init()
    
    var messageArray: [String] = [
        "Hello dude", "How are you doing",
        "I've been building SwiftUI application from scratch. And it is so much fun"
    ]
    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            VStack {
                VStack {
                    TitleRow()
                    
                    ScrollViewReader { proxy in
                        ScrollView {
                            ForEach(messagesManager.messages, id: \.id) { message in
                                MessageBubble(message: message)
                            }
                        }
                        .scrollIndicators(.hidden)
                        .padding(.top, 10)
                        .background(.white)
                        .cornerRadius(30, corners: [.topLeft, .topRight])
                        .onChange(of: messagesManager.lastMessageId) { id in
                            withAnimation {
                                proxy.scrollTo(id, anchor: .bottom)
                            }
                        }
                    }
                    
                }
                .background(Color("Wet Asphalt"))
                
                MessageField()
                    .environmentObject(messagesManager)
                    .background(.white)
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//            .preferredColorScheme(.dark)
//    }
//}
