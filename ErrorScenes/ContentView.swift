//
//  ContentView.swift
//  ErrorScenes
//
//  Created by Adrian Aranda Campanario on 20/5/24.
//

import SwiftUI

struct ContentView: View {
    var errorType: ErrorType
    var buttonText: String
    var action:() -> ()
    var errorTitle = ErrorTitle()
    var body: some View {
        ZStack(alignment: .top) {
            VStack {
                Image(errorType.rawValue)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                
                Text(getTitle())
                    .font(.custom("AmericanTypewriter", size: 24))
                    .bold()
                    .padding(.top, 30)
                Text(getCaption())
                    .font(.custom("AmericanTypewriter", size: 18))
                    .opacity(0.5)
                    .padding([.leading, .trailing], 50)
                Spacer()
                Button {
                    action()
                } label: {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundColor(.gray)
                        .overlay {
                            Text(buttonText)
                                .font(.custom("AmericanTypewriter", size: 18))
                                .foregroundColor(.white)
                        }
                }
                .frame(height: 70)
                .padding([.leading, .trailing], 20)
                
            }
        }
        .ignoresSafeArea(.all, edges: .top)
    }
    
    private func getTitle() -> String {
        switch(errorType) {
        case .connectionFailed:
            return errorTitle.connectionFailed
        case .brokenLink:
            return errorTitle.brokenLink
        case .noResult:
            return errorTitle.noResult
        case .notEnoughtSpace:
            return errorTitle.notEnoughtSpace
        case .opps:
            return errorTitle.opps
        case .pageNotFound:
            return errorTitle.pageNotFound
        }
    }
    
    private func getCaption() -> String {
        switch(errorType) {
        case .connectionFailed:
            return ErrorCaption.connectionFailedCaption.rawValue
        case .brokenLink:
            return ErrorCaption.brokenLinkCaption.rawValue
        case .noResult:
            return ErrorCaption.noResultCaption.rawValue
        case .notEnoughtSpace:
            return ErrorCaption.notEnoughtSpaceCaption.rawValue
        case .opps:
            return ErrorCaption.oppsCaption.rawValue
        case .pageNotFound:
            return ErrorCaption.pageNotFoundCaption.rawValue
        }
    }
}
#Preview {
    ContentView(errorType: .notEnoughtSpace, buttonText: "Go back") {
        
    }
}
