//
//  Request.swift
//  homework7.3
//
//  Created by Татьяна Березка on 9/17/20.
//  Copyright © 2020 Татьяна Березка. All rights reserved.
//

import Foundation

class Request {
    enum RequestState {
        case initial
        case inProgress
        case completed
    }
    var state: RequestState = .initial
    
    func sendrequest() {
//        посылает запрос
        state = .inProgress
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            self.requestDidComplete()
        }
    }
    

func requestDidComplete() {
    state = .completed
}
}
enum ImageType{
    case fullSize
    case light
}
