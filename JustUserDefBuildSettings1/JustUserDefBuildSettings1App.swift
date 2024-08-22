//
//  JustUserDefBuildSettings1App.swift
//  JustUserDefBuildSettings1
//
//  Created by Daryl Cox on 08/21/2024.
//  Copyright © JustMacApps 2023-2024. All rights reserved.
//

import Foundation
import SwiftUI

@main
struct JustUserDefBuildSettings1App: App 
{

    struct ClassInfo
    {
        
        static let sClsId        = "JustUserDefBuildSettings1App"
        static let sClsVers      = "v1.0201"
        static let sClsDisp      = sClsId+"(.swift).("+sClsVers+"):"
        static let sClsCopyRight = "Copyright (C) JustMacApps 2023-2024. All Rights Reserved."
        static let bClsTrace     = true
        static let bClsFileLog   = true
        
    }

    // App Data field(s):

    let sAppBundlePath:String = Bundle.main.bundlePath

    var body: some Scene 
    {

        let _ = xcgLogMsg("\(ClassInfo.sClsDisp):body(some Scene) \(AppGlobalInfo.sGlobalInfoAppCopyRight)...")
        let _ = xcgLogMsg("\(ClassInfo.sClsDisp):body(some Scene) - 'sAppBundlePath' is [\(sAppBundlePath)]...")
        
        WindowGroup 
        {

            ContentView()
                .onOpenURL(perform: 
                { url in
                    
                    xcgLogMsg("\(ClassInfo.sClsDisp):ContentView.onOpenURL() performed for the URL of [\(url)]...")

                })

        }
        .handlesExternalEvents(matching: [])

    }

    func xcgLogMsg(_ sMessage:String)
    {

    //  self.appDelegate.xcgLogMsg("\(sMessage)")
        print("\(sMessage)")

        // Exit...

        return

    }   // End of func xcgLogMsg().

}   // End of struct JustUserDefBuildSettings1App(App).

