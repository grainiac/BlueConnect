//
//  main.swift
//  BlueConnect
//
//  Created by Alex Skoruppa on 31.10.25.
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
