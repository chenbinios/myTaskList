//
//  ContentView.swift
//  TDL
//
//  Created by chenbin on 9/2/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    var body: some View {
        TabView(selection: .constant(1),
                content:  {
            DialyMustDo().tabItem { Text("每日必做") }.tag(1)
            TotalTDLPage().tabItem { Text("总清单") }.tag(2)
        })
    }
}

#Preview {
    ContentView()
}
