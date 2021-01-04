//
//  RentDetails.swift
//  miniProject
//
//  Created by Mohammed on 1/3/21.
//

import SwiftUI

struct RentDetails: View {
    
    @State var name: String = ""
    @State var phoneNumber: String = ""
    @State var hours: Int = 0
    @State var bicycle: Int = 0
//    @State var tcost: String = ""
    var bike: Bike
    @State var gggg: Double = 0.000000
    
    var body: some View {
        VStack {
            VStack {
                Image(bike.name)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300.0, height: 200.0)
                
                TextField("اسم المستخدم", text: $name)
                    .padding([.top, .bottom, .trailing])
                    .multilineTextAlignment(.trailing)
                
                TextField("الهاتف", text: $phoneNumber)
                    .multilineTextAlignment(.trailing)
                    .padding(.trailing)
                
                Stepper("عدد الساعات:  \(hours)", value: $hours)
                    .padding()
                
                Stepper("عدد الدراجات:  \(bicycle)", value: $bicycle)
                    .padding(.horizontal)
                
            }
            
            Spacer()

            let tttt = bike.cost
            
            let hhhh = Double(hours * bicycle)

            let gggg = tttt * hhhh

            Text("\(gggg)")
            
            Text("المبلغ الكلي")
            
            
            NavigationLink(
                destination: Receipt(name: $name, phoneNumber: $phoneNumber, hours: $hours, bicycle: $bicycle, gggg: $gggg//, tcost: $tcost
                ),
                label: {
                    Button(action: {

                        
                    }, label: {
                        ZStack {
                            Rectangle()
                                .foregroundColor(.blue)
                                .frame(height: 50.0)
                                .cornerRadius(15)
                            
                            Text("اضغط للمتابعة")
                                .foregroundColor(.white)
                        }
                    }).disabled(gggg != 0.000000)
                })
            
            
            
            
            
            
            
            
            
        }
        .padding()
        //                .onAppear{
        //                    self.bike.cost = Double(String(format: "%.2f",bike.cost * Double(hours) * Double(bicycle)))
        //                }
    }
}


struct RentDetails_Previews: PreviewProvider {
    static var previews: some View {
        RentDetails( bike: bikes[0])
    }
}
