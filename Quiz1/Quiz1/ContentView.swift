//
//  ContentView.swift
//  Quiz1
//
//  Created by Varun Sidhu on 2022-03-10.
//

import SwiftUI

struct ContentView: View {
    
    @State var name: String = ""
    @State var nationality: String = ""
    @State var submit = false
    
    var body: some View {
        
        VStack {
            Text("Every Government Form Ever")
                .font(.system(size: 30))
            
            HStack {

                Text("Name: ")
                    .font(.system(size:20))

                TextField("Name ", text: $name)
                    .frame(width: 200, height: 30)

            }

            HStack {

                Text("Nationality: ")
                    .font(.system(size:20))

                TextField("Nationality ", text: $nationality)
                    .frame(width: 200, height: 30)

            }
            
      
            if submit {
                Text(name)
                Text(nationality)
            }
            
            HStack {
                
                Button(action:{submit.toggle()},
                       label: {
                            Text("Submit")
                                .frame(width: 90, height:30, alignment: .center)
                })
                
                Button(action:{}, 
                label: {
                            Text("+")
                                .frame(width: 25, height:30)
                })
                
            }
            
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
