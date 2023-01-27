//
//  ContentView.swift
//  ProjectCalculator
//
//  Created by Victor Zarzar on 26/01/23.
//

import SwiftUI

struct ContentView: View {
   
    @State var result = 0
    @State var operation = 0
    
    func process(digit: Int) {
        result = (result * 10) + digit
    }
    
    var body: some View {
        //
        VStack (alignment: .trailing, spacing: 0) {
            Text("\(String(result).count)")
                .foregroundColor(Color.red)
            Spacer()
            HStack{
                Text(String(result))
                    .padding()
                    .lineLimit(1)
                    .font(.system(size: CGFloat(80 / Int((Double(String(result).count + 10) / 8.0)))))
                    .foregroundColor(Color.white)
                    .frame(width: .infinity)
                    .fixedSize(horizontal: true, vertical: false)
            }
            
            HStack {
                Button("AC") {
                    result = 0
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("+/-") {
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("%") {
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("X") {
                    
                }.padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                
            }.foregroundColor(Color.white)
            
            HStack {
                Button("7") {
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("8") {
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("9") {
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("X") {
                }.padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                
            }.foregroundColor(Color.white)
            
            HStack {
                Button("4") {
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("5") {
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("6") {
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("-") {
                }.padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                
            }.foregroundColor(Color.white)
            
            HStack {
                Button("1") {
                    process(digit: 1)
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("2") {
                    process(digit: 2)
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("3") {
                }.padding()
                    .frame(maxWidth: .infinity)
                
                Button("+") {
                    operation = 1
                }.padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.orange)
                
            }.foregroundColor(Color.white)
            
            GeometryReader { geometry in
                HStack {
                    Button("0") {
                        
                    }.padding()
                        .frame(minWidth: geometry.size.width / 2)
                    
                    Button(",") {
                        
                    }.padding()
                        .frame(maxWidth: .infinity)
                    
                    Button("=") {
                        
                    }.padding(.vertical, 40)
                        .frame(maxWidth: .infinity)
                        .background(Color.orange)
                    
                }.foregroundColor(Color.white)
                
            }.frame(maxHeight: 92)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.black)
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
}
