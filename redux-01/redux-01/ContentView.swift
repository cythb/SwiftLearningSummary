//
//  ContentView.swift
//  redux-01
//
//  Created by ihugo on 2020/11/4.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var store: Store
    
    var body: some View {
        VStack {
            Text("\(store.state.counter)")
            Spacer().frame(height: 10)
            HStack {
                Button("+") {
                    store.dispatch(action: IncreaseAction())
                }
                Spacer().frame(width: 10)
                Button("-") {
                    store.dispatch(action: DecreaseAction())
                }
            }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
