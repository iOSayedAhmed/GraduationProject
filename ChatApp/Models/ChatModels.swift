//
//  ChatModels.swift
//  ChatApp
//
//  Created by iOSayed on8/5/20.
//  Copyright © 2020 iOSayed All rights reserved.
//


import MessageKit
import CoreLocation

struct Message: MessageType {
    public var sender: SenderType
    public var messageId: String
    public var sentDate: Date
    public var kind: MessageKind
}

extension MessageKind {
    var messageKidString: String {
        switch self {
            
        case .text(_):
            return "text"
        case .attributedText(_):
            return "attributeed_text"
        case .photo(_):
            return "photo"
        case .video(_):
            return "video"
        case .location(_):
            return "location"
        case .emoji(_):
            return "emoji"
        case .audio(_):
            return "audio"
        case .contact(_):
            return "contact"
        case .custom(_):
            return "custom"
            //        @unknown default:
        }
        
    }
    
}

struct Sender: SenderType {
    public var photoURL: String
    public var senderId: String
    public var displayName: String
}
struct Media: MediaItem {
    var url: URL?
    var image: UIImage?
    var placeholderImage: UIImage
    var size: CGSize
}

struct Location: LocationItem {
    var location: CLLocation
    
    var size: CGSize
    
    
}
