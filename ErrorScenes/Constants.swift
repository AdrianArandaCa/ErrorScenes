//
//  Constants.swift
//  ErrorScenes
//
//  Created by Adrian Aranda Campanario on 20/5/24.
//

import Foundation

enum ErrorType: String {
    case connectionFailed = "ConnectionFailed"
    case brokenLink = "BrokenLink"
    case noResult = "NoResult"
    case notEnoughtSpace = "NotEnoughSpace"
    case opps = "Opps"
    case pageNotFound = "PageNotFound"
}

enum ErrorCaption: String {
    case connectionFailedCaption = "Could not connect to the network, Please check and try again"
    case brokenLinkCaption = "Something went wrong, please Try again later"
    case noResultCaption = "Sorry there are no results for this search. Please try another"
    case notEnoughtSpaceCaption = "You do not have enought storage left to save this file"
    case oppsCaption = "Something wrong with your connection, please try again"
    case pageNotFoundCaption = "The page you are looking for doesn't seem to exist..."
}

struct ErrorTitle {
    let connectionFailed = "Connection Failed"
    let brokenLink = "Broken Link"
    let noResult = "No Result"
    let notEnoughtSpace = "Not Enought Space"
    let opps = "Opps"
    let pageNotFound = "Page Not Found"
}
