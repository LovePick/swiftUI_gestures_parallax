//
//  HomeView.swift
//  Restart
//
//  Created by Supapon Pucknavin on 23/9/2565 BE.
//

import SwiftUI

struct HomeView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = false
    
    // MARK: - BODY
    var body: some View {
        VStack(spacing: 20) {
            Text("Home")
                .font(.largeTitle)
            
            Button {
                //Some action
                isOnboardingViewActive = true
            } label: {
                Text("Restart")
            }

        }//: VSTACK
    }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
