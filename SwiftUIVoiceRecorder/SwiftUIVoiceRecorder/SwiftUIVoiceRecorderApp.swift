//
//  SwiftUIVoiceRecorderApp.swift
//  SwiftUIVoiceRecorder
//
//  Created by Luan Nguyen on 16/12/2020.
//

import SwiftUI

@main
struct SwiftUIVoiceRecorderApp: App {
    // MARK: - BODY
    var body: some Scene {
        WindowGroup {
            ContentView(audioRecorder: AudioRecorder())
        }
    }
}
