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
        let homePath = NSHomeDirectory() // oder: FileManager.default.homeDirectoryForCurrentUser.path
        let scriptPath = "\(homePath)/Legacy-iOS-Kit/restore.sh"
        
        let task = Process()
        task.launchPath = "/usr/bin/open"
        task.arguments = ["-a", "Terminal", scriptPath]
        task.launch()
        
        NSApp.terminate(nil)
    }
}
