//
//  ContentView.swift
//  TabViewBug
//
//  Created by wanbo on 2020/10/25.
//

import SwiftUI

struct ContentView: View {
    
    @State var showPageView = false
    
    var body: some View {
        
        Button(action: {
            self.showPageView.toggle()
        }, label: {
            Text("show page view")
                .foregroundColor(Color.white)
                .background(Color.blue)
                .frame(width: 100, height: 100)
                .contentShape(Rectangle())
        })
        .sheet(isPresented: $showPageView, content: {
            Pageview()
        })
        
        
    }
}
