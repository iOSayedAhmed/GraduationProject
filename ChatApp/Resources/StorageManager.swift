//
//  StorageManager.swift
//  ChatApp
//
//  Created by iOSayed on7/6/20.
//  Copyright © 2020 iOSayed All rights reserved.
//

import Foundation
import FirebaseStorage

/// Allows you to get, fetch, and upload files to firebase  storage

final class StorageManager {
    static let shared = StorageManager()
    
    private init() {}
    
    private let storage = Storage.storage().reference()
    /*
        /images/afraz9-gmail-com_profile_picture.png
        */
    
    public typealias uploadPictureCompletion = (Result<String,Error>) -> Void
    
    ///upload Picture to firebse storage and returns completion with url string to download
    public func uploadProfilePicture(with data:Data , fileName:String, completion: @escaping uploadPictureCompletion){
        
         storage.child("images/\(fileName)").putData(data, metadata: nil, completion: {[weak self] metadata, error in
            guard let stronSelf = self else {return}

            guard error == nil else {
                
                //faild
                print("faild to upload data to firebase for picture")
                completion(.failure(StorageErrors.faildToUpload))
                return
            }
            
            stronSelf.storage.child("images/\(fileName)").downloadURL(completion: { url, error in
                guard let url = url else {
                    print("Faild to get download url")
                    completion(.failure(StorageErrors.faildToGetDownloadUrl))
                    return
                }
                
                let urlString = url.absoluteString
                print("download url returned \(urlString)")
                completion(.success(urlString))
            })
            
            
        })
    }
    
    /// Upload image that will be sent in a conversation message
    public func uploadMessagePhoto(with data:Data , fileName:String, completion: @escaping uploadPictureCompletion){
        
        storage.child("message_images/\(fileName)").putData(data, metadata: nil, completion: { [weak self] metadata, error in
            
            guard error == nil else {
                
                //faild
                print("faild to upload data to firebase for picture")
                completion(.failure(StorageErrors.faildToUpload))
                return
            }
            
            self?.storage.child("message_images/\(fileName)").downloadURL(completion: { url, error in
                
                guard let url = url else {
                    print("Faild to get download url")
                    completion(.failure(StorageErrors.faildToGetDownloadUrl))
                    return
                }
                
                let urlString = url.absoluteString
                print("download url returned \(urlString)")
                completion(.success(urlString))
            })
            
            
        })
    }
    
    /// Upload video that will be sent in a conversation message
    public func uploadMessageVideo(with fileUrl:URL , fileName:String, completion: @escaping uploadPictureCompletion){
        
        storage.child("message_videos/\(fileName)").putFile(from: fileUrl, metadata: nil, completion: { [weak self] metadata, error in
            
            guard error == nil else {
                
                //faild
                print("faild to upload video file to firebase for picture")
                completion(.failure(StorageErrors.faildToUpload))
                return
            }
            
            self?.storage.child("message_videos/\(fileName)").downloadURL(completion: { url, error in
                
                guard let url = url else {
                    print("Faild to get download url")
                    completion(.failure(StorageErrors.faildToGetDownloadUrl))
                    return
                }
                
                let urlString = url.absoluteString
                print("download url returned \(urlString)")
                completion(.success(urlString))
            })
            
            
        })
    }
    
    
    public enum StorageErrors: Error {
        
        case faildToUpload
        case faildToGetDownloadUrl
    }
    
    public func downloadURL(for path :String , completion: @escaping (Result<URL, Error>)-> Void){
        let referance = storage.child(path)
        referance.downloadURL(completion: {url, error in
            guard let url = url , error == nil else {
                completion(.failure(StorageErrors.faildToGetDownloadUrl))
                return
            }
            completion(.success(url))
        })
        
    }
    
}
