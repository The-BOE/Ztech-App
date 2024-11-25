//
//  BookAppointment_page.swift
//  latest
//
//  Created by user on 10/23/24.
//


import SwiftUI

//struct of BookingAppointment_page
struct BookAppointmentView: View{
    @State var selectedDate = Date()
    @State var solectedTime = "4:00 PM"
    @State var currentAppointmentBooked = true
    let timess = Array(1...25)
    
    var body: some View{
        
        
        NavigationView{
            List{
                   
                //List Section of Current Appointment down to the "Cancel Appointment" Button
                Section{
                    
                    if currentAppointmentBooked{
                        
                        //Head list item of the next upcoming appointment
                        VStack(alignment: .leading){
                            Text("Current Appointment")
                                .modifier(CustomTextModifier(size: 13, color: .white))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            HStack(alignment: .bottom) {
                                
                                Text("Monday")
                                    .modifier(CustomTextModifier(size: 25, color: .white))
                                    .bold()
                                //                                }
                                Spacer()
                                
                                Text("May 20, 2024")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                    .bold()
                            }
                            .padding(.top, -8)
                            
                            Text("in Hayward, CA")
                                .modifier(CustomTextModifier(size: 12, color: .white))
                                .italic()
                                .padding(.top, -18)
                        }
                        .navigationBarBackButtonHidden(true)
                        .navigationBarHidden(true)
                        .background(
                            NavigationLink("",
                                           destination: BookAppointmentView().navigationBarBackButtonHidden(true))
                            .opacity(0)
                        )
                        
                        //Cancel Appointment Button
                        HStack{
                            Image(systemName: "xmark")
                                .modifier(CustomTextModifier(size: 16, color: .red))
                                .bold()
                                .padding(.leading, 2)
                            
                            Text("Cancel Appointment")
                                .modifier(CustomTextModifier(size: 15, color: .red))
                                .bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        .frame(height: 15)
                    }
                }
                footer:{
                    //No cuttent appointment title
                    if !currentAppointmentBooked{
                        Text("No current appointments")
                            .modifier(CustomTextModifier(size: 15, color: .white))
                            .italic()
                        
                    }
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //Section of Date/Time picker
                Section{
                    
                    //Section List item of Date picker
                    VStack{
                        DatePicker(
                            "Select a date",
                            selection: $selectedDate,
                            displayedComponents: .date
                        )
                        .datePickerStyle(GraphicalDatePickerStyle())
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    }
                    
                    //Section List item of Date and Time Picker
                    VStack{
                        HStack{
                            HStack {
                                Image(systemName: "calendar")
                                    .modifier(CustomTextModifier(size: 10, color: .white))
                                
                                Text("Date")
                                    .modifier(CustomTextModifier(size: 17, color: .white))
                                    .padding(.leading, -5)
                            }
                            
                            Spacer()
                            
                            HStack {
                                Image(systemName: "clock")
                                    .modifier(CustomTextModifier(size: 11, color: .white))
                                    .bold()
                                
                                Text("Time")
                                    .modifier(CustomTextModifier(size: 17, color: .white))
                                    .padding(.leading, -5)
                            }
                        }
                        //                    .padding(.top, 2)
                        .padding(.bottom, -13)
                        
                        
                        var rescDate = compDate(date: selectedDate)
                        var rescTime = formatDate(date: selectedDate, format: "hh:mm a").joined(separator: " ")
                        
                        HStack{
                            Text("\(rescDate)") //CHANGE COLOR IF SELECTED
                                .modifier(CustomTextModifier(size: 17, color: .yellow))
                                .bold()
                            
                            Spacer()
                            
                            Picker("", selection: $solectedTime) {
                                ForEach(timess, id: \.self) {t in
                                    Text("\(t):00 PM")
                                }
                            }
                            .foregroundColor(.white)
                        }
                    }
                    .padding(20)
                }
                header:{
                    Text("Date and Time")
                }
                .listRowSeparator(.hidden)
                .listRowInsets(.init(top: -5, leading: 3, bottom: -5, trailing: 3))
                
                //        .listSectionSpacing(.custom(35))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //Schedule new appointment Button Section
                Section{
                    
                    //Schedule new appointment Button
                    Button {}label:{
                        HStack {
                            Image(systemName: "calendar.badge.plus")
                            Text("Schedule new appointment")
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        .modifier(CustomTextModifier(size: 17, color: .blue))
                        .bold()
                    }
                }
                .listSectionSpacing(.custom(20))
                
                
                
                
                
                
                
                
                
                //Return to the homescreen Button
                Section{
                    Button {
                        
                    }label:{
                        HStack{
                            Image(systemName: "arrow.uturn.left")
                                .bold()
                            Text("Return")
                        }
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        .modifier(CustomTextModifier(size: 17, color: .white))
                        .bold()
                    }
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview {
    BookAppointmentView()
}
