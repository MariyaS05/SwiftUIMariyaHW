//
//  ContentView.swift
//  SwiftUIMariyaHW
//
//  Created by Мария  on 9.12.22.
//

import SwiftUI

struct ContentView: View {
    @State var enteredText =  ""
    var body: some View {
        VStack {
            HStack (spacing: 10){
                Image("Vesti")
                    .resizable()
                    .frame(width: 120, height: 120)
                VStack(alignment: .leading, spacing : 20 ) {
                    Text("First").fontWeight(.medium)
                    Text("Middle").fontWeight(.medium)
                    Text("Last").fontWeight(.medium)
                }
                VStack(alignment: .leading, spacing: 10) {
                    TextField("Enter Name", text: $enteredText)
                        .textFieldStyle(.roundedBorder)
                
                    TextField("Enter Middle Name", text: $enteredText).textFieldStyle(.roundedBorder)
                 TextField("Enter Last Name", text: $enteredText).textFieldStyle(.roundedBorder)
                }
            }.padding()
                .padding(.bottom,-20)
            
            Spacer()
            
            BigTextView()
            Buttons()
            
        }
        
    }
}
struct Buttons : View {
    
    var body: some View {
        HStack(alignment: .center, spacing: 70) {
            Button("Save") {
                print("Save button tapped")
            }
            Button("Cancel") {
                print("Cancel button tapped")
            }
            Button("Clear") {
                print("Button clear tapped")
            }
        }
    }
}
struct BigTextView : View {
    @State var text =  "Notes:"
    var body: some View {
        VStack(alignment: .leading){
            Text(text).padding(20)
        }
        .position(CGPoint(x: 30, y: 20))
        .background(.gray)
        .padding()
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
