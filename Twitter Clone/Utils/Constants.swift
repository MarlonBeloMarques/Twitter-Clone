//
//  Constants.swift
//  Twitter Clone
//
//  Created by Marlon Marques on 12/09/22.
//

import Firebase

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGE = STORAGE_REF.child("profile_image")

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")
let REF_TWEETS = DB_REF.child("tweets")
let REF_USER_TWEETS = DB_REF.child("user-tweets")
