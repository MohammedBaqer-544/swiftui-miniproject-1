//
//  Receipt.swift
//  miniProject
//
//  Created by Mohammed on 1/3/21.
//

import SwiftUI

struct Receipt: View {
    
    @Binding var name: String
    @Binding var phoneNumber: String
    @Binding var hours: Int
    @Binding var bicycle: Int
    //    @Binding var tcost: String
    @Binding var gggg: Double
    @State var btnColor: Color = Color.blue
    @State var btnName: String = "ادفع الآن"
    
    var body: some View {
        VStack {
            
            Spacer()
            
            HStack {
                
                Spacer()
                
                Text("الفاتورة")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.trailing)
            }
            
            HStack {
                Text(name)
                
                Spacer()
                
                Text("الاسم :")
            }
            .padding(.vertical)
            
            HStack {
                Text(phoneNumber)
                
                Spacer()
                
                Text("رقم الهاتف :")
            }
            
            HStack {
                Text("\(hours)")
                
                Spacer()
                
                Text("الساعات :")
            }
            .padding(.vertical)
            
            HStack {
                Text("\(bicycle)")
                
                Spacer()
                
                Text("الدراجات :")
            }
            
            HStack {
                Text("\(gggg)")
                
                Spacer()
                
                Text("المبلغ :")
            }
            .padding(.vertical)
            
            Spacer()
            
            Button(action: {
                
                btnName = "تم الدفع"
                btnColor = Color.green
                
            }, label: {
                
                ZStack {
                    Rectangle()
                        .foregroundColor(btnColor)
                        .frame(height: 50.0)
                        .cornerRadius(15)
                    
                    Text(btnName)
                        .foregroundColor(.white)
                }
            })
            
        }
        .padding()
        
    }
}

struct Receipt_Previews: PreviewProvider {
    static var previews: some View {
        Receipt(name: .constant(""), phoneNumber: .constant(""), hours: .constant(0), bicycle: .constant(0), gggg: .constant(0.000010)//, tcost: .constant("")
        )
    }
}
