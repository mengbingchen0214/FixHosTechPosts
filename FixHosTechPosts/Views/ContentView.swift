//
//  ContentView.swift
//  FixHosTechPosts
//
//  Created by jk on 2020/7/23.
//  Copyright © 2020 ssl. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MainView().environmentObject(UserData())
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
