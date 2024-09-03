//
//  DialyMustDo.swift
//  TDL
//
//  Created by chenbin on 9/2/24.
//

import SwiftUI

struct DialyMustDo: View {
    var body: some View {
        NavigationView(content: {
            DialyList()
        })
        .navigationTitle("每日清单")
    }
}

struct DialyList:View {
    
    var toDoTasks:String[] = []
    
    var body: some View {
        List {
            Section {
                NavigationLink {
                    Text("qklwej")
                } label: {
                    TaskListItem(taskTitle: "任务1")
                }
            } header: {
                Text("to do")
            }

            Section {
                NavigationLink {
                    Text("qklwej")
                } label: {
                    TaskListItem(taskTitle: "任务2")
                }
            } header: {
                Text("done")
            }
        }
        .navigationBarBackButtonHidden(false)
        .navigationTitle("My dialy list")
        .background(Color.blue)
        .navigationBarTitleDisplayMode(.inline)
        .font(.title)
        
    }
}

struct CheckboxStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            Image(systemName: configuration.isOn ? "checkmark.circle" : "circle")
                .resizable()
                .frame(width: 20, height: 20)
                .onTapGesture {
                    configuration.isOn.toggle()
                }
            configuration.label
        }
    }
}

struct TaskListItem:View {
    
    var taskTitle:String
    
    @State var isCkeck = false
    
    var body: some View {
        HStack(content: {
            Toggle(isOn: $isCkeck) {
            }
            .toggleStyle(CheckboxStyle())
            Text(taskTitle)
        })
    }
}

#Preview {
    DialyMustDo()
}
