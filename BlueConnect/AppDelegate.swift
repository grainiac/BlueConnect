//
//  AppDelegate.swift
//  BlueConnect
//

import Cocoa
import CoreAudioKit

class AppDelegate: NSObject, NSApplicationDelegate {
    var btWindowController: CABTLEMIDIWindowController?

    func applicationDidFinishLaunching(_ notification: Notification) {
        // Ensure app behaves like a normal macOS app
        NSApplication.shared.setActivationPolicy(.regular)

        // Create and show the Bluetooth MIDI window
        btWindowController = CABTLEMIDIWindowController()
        btWindowController?.showWindow(nil)

        // Bring the app to the foreground
        NSApplication.shared.activate(ignoringOtherApps: true)

        // Make the window key and front
        btWindowController?.window?.makeKeyAndOrderFront(nil)

        // Auto-terminate when the window closes
        NotificationCenter.default.addObserver(forName: NSWindow.willCloseNotification,
                                               object: btWindowController?.window,
                                               queue: .main) { _ in
            NSApp.terminate(nil)
        }
    }
}

