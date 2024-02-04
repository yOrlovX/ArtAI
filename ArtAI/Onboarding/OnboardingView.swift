//
//  OnboardingView.swift
//  ArtAI
//
//  Created by Yaroslav Orlov on 30.01.2024.
//

import SwiftUI

enum OnboardingState {
    case first
    case second
    case third
}

struct OnboardingView: View {
    @State private var onboardingState: OnboardingState = .first
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            switch onboardingState {
            case .first:
                firstOnboardingState
            case .second:
                secondOnboardingState
            case .third:
                thirdOnboardingState
            }
        }
    }
}

private extension OnboardingView {
    private var firstOnboardingState: some View {
        ZStack(alignment: .top) {
            Image("onboarding1")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height * 0.7)
                .frame(width: UIScreen.main.bounds.width)
                .opacity(0.6)
            VStack(spacing: 14) {
                Spacer()
                Text("Create \nartwork \nwith AI")
                    .font(.system(size: 48))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Colors.lightGreen)
                Text("Create a ART.AI account to gain access to more creation tools, publish & curate your AI generated art!")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button(action: { onboardingState = .second }) {
                    Text("Get started")
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(maxWidth: .infinity, maxHeight: 48)
                        .background(Colors.lightGreen)
                        .cornerRadius(4)
                        .padding(.horizontal, 24)
                        .padding(.top, 20)
                }
            }
        }
    }
    
    private var secondOnboardingState: some View {
        ZStack(alignment: .top) {
            Image("onboarding2")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height * 0.7)
                .opacity(0.6)
            VStack(spacing: 14) {
                Spacer()
                Text("Create \nartwork \nwith AI")
                    .font(.system(size: 48))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Colors.lightGreen)
                Text("Create a ART.AI account to gain access to more creation tools, publish & curate your AI generated art!")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button(action: { onboardingState = .third }) {
                    Text("Get started")
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(maxWidth: .infinity, maxHeight: 48)
                        .background(Colors.lightGreen)
                        .cornerRadius(4)
                        .padding(.horizontal, 24)
                        .padding(.top, 20)
                }
            }
        }
    }
    
    private var thirdOnboardingState: some View {
        ZStack(alignment: .top) {
            Image("onboarding3")
                .resizable()
                .scaledToFill()
                .frame(height: UIScreen.main.bounds.height * 0.7)
                .opacity(0.6)
            VStack(spacing: 14) {
                Spacer()
                Text("Create \nartwork \nwith AI")
                    .font(.system(size: 48))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Colors.lightGreen)
                Text("Create a ART.AI account to gain access to more creation tools, publish & curate your AI generated art!")
                    .font(.system(size: 14))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.gray)
                Button(action: {}) {
                    Text("Get started")
                        .foregroundColor(.black)
                        .font(.system(size: 16, weight: .semibold))
                        .frame(maxWidth: .infinity, maxHeight: 48)
                        .background(Colors.lightGreen)
                        .cornerRadius(4)
                        .padding(.horizontal, 24)
                        .padding(.top, 20)
                }
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
