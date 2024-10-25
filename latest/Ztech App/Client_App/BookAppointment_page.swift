//
//  BookAppointment_page.swift
//  latest
//
//  Created by user on 10/23/24.
//
import SwiftUI

struct BookAppointmentView: View{
    @State var selectedDate = Date()
    @State var solectedTime = "4:00 PM"
    
//    let timess = Array(1...25)
    
    var body: some View{
        NavigationView{
            List{
                
                Section {}
            footer:{
                VStack {
                    Text("Current Appointment")
                        .modifier(CustomTextModifier(size: 17, color: .white))
                        .bold()
                    //                    .padding(.leading, -15)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                    VStack{
                        HStack{
                            
                            HStack{
                                Image(systemName: "calendar")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                
                                Text("Date")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                    .padding(.leading, -5)
                            }
                            
                            Spacer()
                            
                            HStack {
                                Image(systemName: "clock")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                    .bold()
                                
                                Text("Time")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                    .padding(.leading, -5)
                            }
                        } //date and time labels HSTACK
                        .padding(.top, 1)
                        
                        //                            Button{} label:{
                        HStack{
                            Text("Jan 3, 2024")
                                .modifier(CustomTextModifier(size: 17, color: .green))
                                .bold()
                            
                            Spacer()
                            Text("4:00 PM")
                                .modifier(CustomTextModifier(size: 17, color: .green))
                                .bold()
                        }
                    }
                    
                    Rectangle()
                        .fill(.gray)
                        .frame(maxWidth: .infinity, maxHeight:3)
                    
                }
            }
            .listRowInsets(.init(top: -15, leading: 5, bottom: 0, trailing: 5))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{
                    VStack{
                        
                        
                        DatePicker(
                            "Select a date",
                            selection: $selectedDate,
                            displayedComponents: .date
                        )
                        .datePickerStyle(GraphicalDatePickerStyle())
                        //                .onChange(of: selectedDate, perform: adjustToNearest5Minutes)
                        //                .padding().padding()
                        .padding(5)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                    }
                    
                    //            header:{
                    //                Text("Schedule New Appointment")
                    //                    .modifier(CustomTextModifier(size: 15, color: .white))
                    //                    .bold()
                    //                    .padding(.bottom, -10).padding(.top, 30)
                    //                    .padding(.leading, 10)
                    //            }
                    //            footer:{
                    //                VStack{
                    //                    Text("Schedule New Appointment")
                    //                        .modifier(CustomTextModifier(size: 17, color: .white))
                    //                        .bold()
                    //                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    //                        .padding(.bottom, -20).padding(.top, 20).padding(.leading, 17)
                    //
                    //                    DatePicker(
                    //                        "Select a date",
                    //                        selection: $selectedDate,
                    //                        displayedComponents: .date
                    //                    )
                    //                    .datePickerStyle(GraphicalDatePickerStyle())
                    //                    //                .onChange(of: selectedDate, perform: adjustToNearest5Minutes)
                    //                    //                .padding().padding()
                    //                    .padding(5)
                    //                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    //
                    //                }
                }
                .listRowInsets(.init(top: -5, leading: 0, bottom: -5, trailing: 0))
                //        .listSectionSpacing(.custom(35))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //            reschedule app
                Section{
                    VStack{
                        //                    Text("Schedule New Appointment")
                        //                        .modifier(CustomTextModifier(size: 18, color: .white))
                        //                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        //                        .bold()
                        //
                        
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
                }
            header:{
                Text("New Appointment")
                    .padding(.bottom, -3)
            }
                //            .listSectionSpacing(.custom(10))
            .listRowInsets(.init(top: 15, leading: 20, bottom: 8, trailing: 20))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{
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

//#Preview {
//    BookAppointmentView()
//}
