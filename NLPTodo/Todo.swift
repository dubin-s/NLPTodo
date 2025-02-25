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

public enum TodoListItemStatus: Equatable {
    case notStarted, inProgress, completed
}

public struct TodoList {
    public var title: String?
    public var todos: [TodoListItem]
    
    public init(title: String, todos: [TodoListItem]) {
        self.title = title
        self.todos = todos
    }
    
    public mutating func add(_ newItem: TodoListItem) {
        todos.append(newItem)
    }
    
    public func updateStatus(item: inout TodoListItem, newStatus: TodoListItemStatus) {
        item.status = newStatus
    }
    
    public mutating func remove(_ index: Int) {
        todos.remove(at: index)
    }
}

public struct TodoListItem: Equatable {
    public var title: String
    public var description: String?
    public var startDate: Date?
    public var endDate: Date?
    public var status: TodoListItemStatus
    
    public init(title: String, description: String? = nil, startDate: Date? = nil, endDate: Date? = nil) {
        self.title = title
        self.description = description
        self.startDate = startDate
        self.endDate = endDate
        self.status = .notStarted
    }
    
    public mutating func edit(title: String? = nil, description: String? = nil, startDate: Date? = nil, endDate: Date? = nil, status: TodoListItemStatus? = nil) {
        self.title = title ?? self.title
        self.description = description ?? self.description
        self.startDate = startDate ?? self.startDate
        self.endDate = endDate ?? self.endDate
        self.status = status ?? self.status
    }
}
