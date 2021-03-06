//
//  ContentView.swift
//  Pomodoro
//
//  Created by Luan Nguyen on 06/12/2020.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        VStack {
            VStack {
                TimeBar()
                TimeLabel()
            } //: STACK
            HStack(spacing: 30) {
                TimeButton(systemName: "10.circle.fill", color: Color(.systemIndigo), time: 10)
                TimeButton(systemName: "25.circle.fill", color: Color(.systemBlue), time: 25)
                TimeButton(systemName: "50.circle.fill", color: Color(.systemPurple), time: 50)
            } //: HSTACK
        } //: VSTACK
    }
}
