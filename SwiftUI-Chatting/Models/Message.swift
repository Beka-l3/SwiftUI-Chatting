//
//  Message.swift
//  SwiftUI-Chatting
//
//  Created by Bekzhan Talgat on 03.07.2023.
//

import Foundation

struct Message: Identifiable, Codable {
    let id: String
    
    let text: String
    let received: Bool
    let timeStamp: Date
    
    static let zero: Message = .init(id: "zero", text: "Message zero", received: false, timeStamp: Date())
    static let one: Message = .init(id: "one", text: "Message one", received: true, timeStamp: Date())
}
