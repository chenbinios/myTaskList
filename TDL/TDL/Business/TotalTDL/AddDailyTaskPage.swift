//
//  AddDailyTaskPage.swift
//  TDL
//
//  Created by chenbin on 9/3/24.
//

import SwiftUI

struct AddDailyTaskPage: View {
    
    @State var titleValue:String = ""
    
    @State var descriptionValue:String = ""
    
    var body: some View {
        VStack(alignment: .leading,
               content: {
            Text("Title")
            TextEditor(text: $titleValue)
                .frame(height: 200)
                
            Text("Description")
            TextEditor(text: $descriptionValue)
                .frame(height: 200)
        })
        .background(Color.gray)
    }
}

#Preview {
    AddDailyTaskPage()
}
