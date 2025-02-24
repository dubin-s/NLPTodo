//
//  Todo.swift
//  NLPTodo
//
//  Created by Spenser Dubin on 2/24/25.
//

import Foundation

// add, remove, complete, edit (CRUD lmao)
// text only, maybe some genmojis
// send notifications
// date and time deadlines

public enum ListItemStatus: Equatable {
    case notStarted, inProgress, completed
}

public struct List {
    public var title: String?
    public var todos: [ListItem]
    
    public init(title: String, todos: [ListItem]) {
        self.title = title
        self.todos = todos
    }
    
    public mutating func add(_ newItem: ListItem) {
        todos.append(newItem)
    }
    
    public func updateStatus(item: inout ListItem, newStatus: ListItemStatus) {
        item.status = newStatus
    }
    
    public mutating func remove(_ index: Int) {
        todos.remove(at: index)
    }
}

public struct ListItem: Equatable {
    public var title: String
    public var description: String?
    public var startDate: Date?
    public var endDate: Date?
    public var status: ListItemStatus
    
    public init(title: String, description: String? = nil, startDate: Date? = nil, endDate: Date? = nil) {
        self.title = title
        self.description = description
        self.startDate = startDate
        self.endDate = endDate
        self.status = .notStarted
    }
    
    public mutating func edit(title: String? = nil, description: String? = nil, startDate: Date? = nil, endDate: Date? = nil, status: ListItemStatus? = nil) {
        self.title = title ?? self.title
        self.description = description ?? self.description
        self.startDate = startDate ?? self.startDate
        self.endDate = endDate ?? self.endDate
        self.status = status ?? self.status
    }
}
