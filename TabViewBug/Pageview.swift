//
//  Pageview.swift
//  TabViewBug
//
//  Created by wanbo on 2020/11/2.
//

import SwiftUI

struct Pageview: View {
    
    @StateObject var vm = PageViewModel()
    
    var body: some View {
        VStack {
            
            DragViewBar().padding(.top, 14)
            
            TabView(selection: $vm.selectTabIndex) {
                
                TextView(index: "0").tag(0)
                TextView(index: "1").tag(1)
                TextView(index: "2").tag(2)
                TextView(index: "3").tag(3)
                TextView(index: "4").tag(4)
                TextView(index: "5").tag(5)
                
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
        }

    }
}

struct TextView: View {
    
    let index: String
    
    var body: some View {
        VStack {
            Text(index)
        }
        .onAppear { print(index) }
        
    }
}

struct DragViewBar: View {
    var body: some View {
        Rectangle()
            .frame(width:36.0,height:5.0).foregroundColor(Color.blue)
            .cornerRadius(100)
    }
}

class PageViewModel: ObservableObject {
    @Published var selectTabIndex = 0
}

