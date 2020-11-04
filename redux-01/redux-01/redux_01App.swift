//
//  redux_01App.swift
//  redux-01
//
//  Created by ihugo on 2020/11/4.
//

import SwiftUI

@main
struct redux_01App: App {
    var body: some Scene {
        WindowGroup {
            let state = State()
            let reducer: Reducer = { (state, action) -> State in
                switch action {
                case is IncreaseAction:
                    return State(counter: state.counter + 1)
                case is DecreaseAction:
                    return State(counter: state.counter - 1)
                default:
                    break
                }
                return state
            }
            ContentView().environmentObject(Store(reducer: reducer, state: state))
        }
    }
}
