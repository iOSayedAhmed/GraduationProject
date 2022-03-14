//
//  ProfileViewModel.swift
//  ChatApp
//
//  Created by iOSayed on8/5/20.
//  Copyright © 2020 iOSayed All rights reserved.
//

import Foundation

enum ProfileViewModelType {
    case info, logout
}

struct ProfileViewModel {
    let viewModelType: ProfileViewModelType
    let title: String
    let handler: (() -> Void)?
}
