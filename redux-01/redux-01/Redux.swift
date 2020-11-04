//
//  Redux.swift
//  redux-01
//
//  Created by ihugo on 2020/11/4.
//

import Foundation

typealias Reducer = (State, Action) -> State

struct State {
    var counter = 0
}

protocol Action {}
class IncreaseAction: Action {}
class DecreaseAction: Action {}

class Store: ObservableObject {
    var reducer: Reducer
    @Published private (set) var state: State

    init(reducer: @escaping Reducer, state: State) {
        self.reducer = reducer
        self.state = state
    }

    func dispatch(action: Action) {
        self.state = self.reducer(self.state, action)
    }
}
