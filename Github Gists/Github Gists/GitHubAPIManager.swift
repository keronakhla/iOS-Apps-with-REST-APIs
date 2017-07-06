//
//  GitHubAPIManager.swift
//  GitHub Gists
//
//  Created by Kerolos Nakhla on 7/4/17.
//  Copyright © 2017 Kerolos Nakhla. All rights reserved.
//

import Foundation
import Alamofire

class GitHubAPIManager { // class is responsible for our API interactions
    static let sharedInstance = GitHubAPIManager()
    
    func printPublicGists() -> Void {
        // TODO: implement
        Alamofire.request(GistRouter.getPublic())
            .responseString { response in
                if let recievedString = response.result.value {
                    print(recievedString)
                }
        }
    }




} // end of class
