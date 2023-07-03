//
//  MessageBubble.swift
//  SwiftUI-Chatting
//
//  Created by Bekzhan Talgat on 03.07.2023.
//

import SwiftUI

struct MessageBubble: View {
    let message: Message
    @State private var showTime: Bool = false
    
    var body: some View {
        VStack(alignment: message.received ? .leading : .trailing) {
            HStack {
                Text(message.text)
                    .padding()
                    .background(message.received ? Color("Gray") : Color("Wet Asphalt"))
                    .foregroundColor(message.received ? Color("Wet Asphalt") : Color("Gray"))
                    .cornerRadius(30)
            }
            .frame(maxWidth: 300, alignment: message.received ? .leading : .trailing)
            .onTapGesture {
                showTime.toggle()
            }
            
            if showTime {
                Text("\(message.timeStamp.formatted(.dateTime.hour().minute()))")
                    .font(.caption2)
                    .foregroundColor(.gray)
                    .padding(message.received ? .leading : .trailing)
            }
        }
        .frame(maxWidth: .infinity, alignment: message.received ? .leading : .trailing)
        .padding(message.received ? .leading : .trailing)
        .padding(.horizontal, 10)
    }
}

//struct MessageBubble_Previews: PreviewProvider {
//    static var previews: some View {
//        MessageBubble(message: .zero)
//    }
//}
