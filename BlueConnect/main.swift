//
//  main.swift
//  BlueConnect
//

import Cocoa

struct AppMain {
    static func main() {
        let app = NSApplication.shared
        let delegate = AppDelegate()
        app.delegate = delegate
        app.run()
    }
}

AppMain.main()
