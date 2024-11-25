//
//  CurrentAppointments.swift
//  Client Application 2
//
//  Created by user on 11/10/24.
//

import SwiftUI

struct CurrentAppointments: View {
    @State var searchText = ""
    
    var body: some View {
        
        NavigationView{
            List{
                
                //Page Title
                Section{}footer: {
                    Text("Current Appointments")
                        .modifier(CustomTextModifier(size: 25, color: .white))
                        .bold()
                }
                
                
                Section {
                    TextField("Search by month", text: $searchText)
                }
                .listRowSpacing(10)
                
                
                //list of currently booked appointments
                ForEach(0...3, id: \.self){ _ in
                    Section{
                        VStack(alignment: .leading){
                            HStack {
                                VStack (alignment: .leading){
                                    HStack(alignment: .bottom) {
                                        Text("Monday")
                                            .modifier(CustomTextModifier(size: 25, color: .white))
                                            .bold()
                                        
                                        Text("in Hayward, CA")
                                            .modifier(CustomTextModifier(size: 12, color: .white))
                                            .italic()
                                            .padding(.top, -18)
                                    }
                                    
                                    HStack {
                                        Text("October 20, 2024")
                                            .modifier(CustomTextModifier(size: 15, color: .green))
                                            .bold()
                                        
                                        Text("@3:00pm")
                                            .modifier(CustomTextModifier(size: 12, color: .white))
                                            .padding(.bottom, -3)
                                    }
                                }
                                
                                Spacer()
                                
                            }
                            .padding(.top, -8)
                        }
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true)
                        .background(
                            NavigationLink("",
                                           destination: BookAppointmentView().navigationBarBackButtonHidden(true))
                            
                            .opacity(0)
                        )
                    }
                    .listSectionSpacing(.custom(15))
                }
            }
        }
    }
}

#Preview {
    CurrentAppointments()
}
