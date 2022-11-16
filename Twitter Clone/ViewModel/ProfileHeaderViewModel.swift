//
//  ProfileHeaderViewModel.swift
//  Twitter Clone
//
//  Created by Marlon Marques on 16/11/22.
//

enum ProfileFilterOptions: Int, CaseIterable {
    case tweets
    case replies
    case likes
    
    var description: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Tweets & Replies"
        case .likes: return "Likes"
        }
    }
}
