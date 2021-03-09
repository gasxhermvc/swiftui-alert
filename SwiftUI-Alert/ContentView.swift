//
//  ContentView.swift
//  SwiftUI-Alert
//
//  Created by BillY-MAC on 9/3/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showMessage: Bool = false
    
    @State private var answer: Int = 0
    
    var body: some View {
        VStack (spacing: 10){
            Text("Who is the first president of america?")
                .font(.system(size: 17, weight: .bold,design: .default))
            
            HStack(spacing: 10) {
                Button {
                    showMessage.toggle()
                    self.answer = 1
                } label: {
                    Text("John Adams")
                        .font(.system(size: 14,weight: .medium))
                        .frame(width: 150, height: 50)
                        .background(Color.red)
                        .foregroundColor(.white)
                }
                
                Button {
                    showMessage.toggle()
                    self.answer = 2
                } label: {
                    Text("George Washington")
                        .font(.system(size: 14, weight: .medium))
                        .frame(width: 150, height: 50)
                        .background(Color.blue)
                        .foregroundColor(.white)
                }
            }.alert(isPresented: $showMessage, content: {
                alertMessage(self.answer)
            })
        }
    }
    
    func alertMessage(_ number: Int) -> Alert
    {
        
        let message: String = number == 1 ? "Wrong, Looser" : "Correct!!!"
        
        return Alert(title: Text("Your Answer"),message: Text(message),dismissButton: .default(Text("OK")))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
