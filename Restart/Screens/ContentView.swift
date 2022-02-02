//
//  ContentView.swift
//  Restart
//
//  Created by Simphiwe Kuse on 2022/01/31.
//

import SwiftUI

struct ContentView: View {
  @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
  
  var body: some View {
    ZStack {
      if isOnboardingViewActive {
        OnboardingView()
      } else {
        HomeView()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
      .previewDevice("iPhone 12 Pro Max")
  }
}
