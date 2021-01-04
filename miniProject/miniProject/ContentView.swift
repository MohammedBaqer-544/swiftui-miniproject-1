//
//  ContentView.swift
//  miniProject
//
//  Created by Mohammed on 1/3/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                
                Text("مرحباً بك ،، يمكنك اختيار الدراجة المناسبة لك من القائمة وأكمل بياناتك للحجز")
                    .multilineTextAlignment(.trailing)
                    .padding(.leading, 60.0)
                
                List(bikes) { bike in
                    
                    
                    
                    NavigationLink(
                        destination: RentDetails(bike: bike),
                        label: {
                            bicycle(bike: bike)
                            
                        })
                    
                    
                }
                .navigationBarTitle("تأجير الدراجات")
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct bicycle: View {
    
    var bike: Bike
    
    var body: some View {
        HStack {
            ZStack {
                Circle()
                    .frame(width: 50.0, height: 50.0)
                    .foregroundColor(.blue)
                
                Text(bike.number)
                    .foregroundColor(.white)
            }
            
            Image(bike.name)
                .resizable()
                .scaledToFit()
                .frame(width: 100.0, height: 100.0)
                .padding(.horizontal)
        }
        .padding(.horizontal)
    }
}
