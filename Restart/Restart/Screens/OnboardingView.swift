//
//  OnboardingView.swift
//  Restart
//
//  Created by Supapon Pucknavin on 23/9/2565 BE.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: - PROPERTY
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    
    
    // MARK: - BODY
    var body: some View {
        
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button {
                //Some action
                isOnboardingViewActive = false
            } label: {
                Text("Start")
            }

        } //: VSTACK
    }
}

// MARK: - PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
