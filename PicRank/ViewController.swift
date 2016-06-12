//
//  ViewController.swift
//  PicRank
//
//  Created by Yutaka Omido on 2016/06/13.
//  Copyright © 2016年 Domikoapp. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet var imageView: NSImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let openPanel = NSOpenPanel();
        openPanel.allowsMultipleSelection = false
        openPanel.canChooseDirectories = false
        openPanel.canCreateDirectories = false
        openPanel.canChooseFiles = true
        let result=openPanel.runModal()
        if result == NSFileHandlingPanelOKButton {
            let img = NSImage(contentsOfURL: openPanel.URL!)
            self.imageView.image = img;
        }
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

