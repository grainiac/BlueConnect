//
//  AppDelegate.swift
//  BlueConnect
//

import Cocoa
import CoreAudioKit

class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        let btWindowController = CABTLEMIDIWindowController()
        btWindowController.showWindow(nil)

        // App automatisch beenden, wenn das Fenster geschlossen wird
        NotificationCenter.default.addObserver(forName: NSWindow.willCloseNotification, object: btWindowController.window, queue: .main) { _ in
            NSApp.terminate(nil)
        }
    }
}

