//
//  File.swift
//  
//
//  Created by 日野森寛也 on 2024/05/23.
//

import ComposableArchitecture

@Reducer
public struct AboutCore {
    public init() { }
    
    @ObservableState
    public struct State: Equatable {
        var text: String
    }

    public enum Action {
        case onAppear
    }

    public var body: some ReducerOf<Self> {
        Reduce { state, action in
            switch action {
            case .onAppear:
                state.text = "About Feature"
                return .none
            }
        }
    }
}
