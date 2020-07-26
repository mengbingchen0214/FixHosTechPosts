//
//  NavigationDetail.swift
//  FixHosTechPosts
//
//  Created by jk on 2020/7/26.
//  Copyright © 2020 ssl. All rights reserved.
//

import SwiftUI

struct NavigationDetail: View {
    @EnvironmentObject var userData: UserData
    
    var element:Element
    var elementIndex: Int {
        userData.elements.firstIndex(where: { $0.id == element.id })!
    }
    private var numberFormatter: NumberFormatter {
        let f = NumberFormatter()
        f.numberStyle = .decimal
        return f
    }
    
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 12) {
                HStack {
                    DetailHead(element: element)
                }
                Form {
                    // 根据开放时间分组
                    Section(header: Text("设备组").font(.headline).foregroundColor(.purple)) {
                        Text("根据开放时间分组")
                        DetailDevice()
                        DetailDevice()
                        DetailDevice()
                    }
                    // 服务多台设备,医师和护士,根据所支持的检查项目分组
                    Section(header: Text("医师组").font(.headline).foregroundColor(.purple)) {
                        Text("服务多台设备,医师和护士,根据所支持的检查项目分组")
                        DetailDoctor()
                        DetailDoctor()
                        DetailDoctor()
                    }
                    
//                    Section(header: Text("检查项目").font(.headline).foregroundColor(.purple)) {
//                        Text("hlll")
//                    }
                    
                }
                
            }.padding()
                .frame(maxWidth: 1300)
                .offset(x: 0, y: -1)
        
        }
    }
}


struct NavigationDetail_Preview: PreviewProvider {
    static var previews: some View {
        NavigationDetail(element: elementData[0]).environmentObject(UserData())
    }
}
