//
//  AppDelegate.swift
//  Legacy iOS Kit Starter
//
//  Created by Victor on 06.08.25.
//

import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    func applicationDidFinishLaunching(_ notification: Notification) {
        let task = Process()
        task.launchPath = "/usr/bin/open"
        task.arguments = ["-a", "Terminal", "/Users/victor/Legacy-iOS-Kit/restore.sh"]
        task.launch()
        NSApp.terminate(nil)
    }
}
