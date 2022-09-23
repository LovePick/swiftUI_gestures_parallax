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
            // MARK: - HEADER
            Spacer()
            
            ZStack {
                CircleGroupView(ShapeColor: .gray, ShapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }//: ZSTACK
            
            
            // MARK: - CENTER
            Text("The time that leads to mastery is dependent on tje intensity of our focus.")
                .font(.title3)
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: - FOOTER
            Spacer()
            Button {
                //Some action
                isOnboardingViewActive = true
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(Image.Scale.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
            }//: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
            

        }//: VSTACK
    }
}

// MARK: - PREVIEW
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
