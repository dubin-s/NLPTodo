//
//  NLPTodoTests.swift
//  NLPTodoTests
//
//  Created by Spenser Dubin on 2/24/25.
//

import Testing
@testable import NLPTodo

struct NLPTodoTests {
    
    @Test func testEditListItem() async throws {
        var testableListItem = ListItem(title: "Laundry")
        let expectedListItem = ListItem(title: "Homework", description: "quiz for my NLP class")
        
        testableListItem.edit(title: "Homework", description: "quiz for my NLP class")

        #expect(testableListItem == expectedListItem)
    }
    
    @Test func testAddListItem() async throws {
        var expectedList: List = List(title: "Home", todos: [])
        let newListItem = ListItem(title: "Laundry")

        expectedList.add(newListItem)
    
        #expect(expectedList.todos.count == 1)
    }
    
    @Test func testUpdateStatus() async throws {
        var expectedList: List = List(title: "Home", todos: [
            ListItem(title: "Laundry")
        ])
        
        expectedList.updateStatus(item: &expectedList.todos[0], newStatus: .inProgress)
        
        #expect(expectedList.todos[0].status == .inProgress)
    }
    
    @Test func testRemoveListItem() async throws {
        var expectedList: List = List(title: "Home", todos: [
            ListItem(title: "Laundry")
        ])

        expectedList.remove(0)
    
        #expect(expectedList.todos.count == 0)
    }

}

