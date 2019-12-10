//
//  ContentView.swift
//  RGBullsEye
//
//  Created by Xiaochun Shen on 2019/12/10.
//  Copyright © 2019 SXC. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                VStack {
                    /*@START_MENU_TOKEN@*/Color(red: 0.5, green: 0.5, blue: 0.5)/*@END_MENU_TOKEN@*/
                    Text("Match this color")
                }
                VStack {
                    /*@START_MENU_TOKEN@*/Color(red: 0.5, green: 0.5, blue: 0.5)/*@END_MENU_TOKEN@*/
                    Text("R: 127 G: 127 B: 127")
                }
            }
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("Hit Me!")
            }
            Slider(value: .constant(0.5))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewLayout(.fixed(width: 568, height: 320))
    }
}
