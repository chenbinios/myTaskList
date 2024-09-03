//
//  DialyMustDo.swift
//  TDL
//
//  Created by chenbin on 9/2/24.
//

import SwiftUI

struct DailyMustDo: View {
    var body: some View {
        NavigationView(content: {
            DailyList()
        })
        .navigationTitle("每日清单")
    }
}

struct DailyList:View {
    
    var toDoTasks:[DailyTaskInfoModel] = []
    
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
        .navigationTitle("My Daily list")
        .toolbar(content: {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    AddDailyTaskPage()
                } label: {
                    Image(systemName: "plus")

//                    Button(action: {
//
//                    }, label: {
//                        Image(systemName: "plus")
//                    })
                }
            }
        })
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
                .frame(width: 30, height: 30)
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
        HStack(alignment: .top,content: {
            Toggle(isOn: $isCkeck) {
            }
            .toggleStyle(CheckboxStyle())
            
            VStack(alignment: .leading, content: {
                Text(taskTitle)
                    .font(Font.system(size: 17))
                Text("detail description")
                    .font(Font.system(size: 15))
            })
        })
    }
}

#Preview {
    DailyMustDo()
}
