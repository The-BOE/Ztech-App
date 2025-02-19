//
//  NextClient_page.swift
//  latest
//
//  Created by user on 10/23/24.
//
import SwiftUI

struct barber_nextClientButton_View: View{
    @State var selectedDate = Date()
    @State private var solectedTime = "3:00 PM"
    let timess = Array(1...25)
    
    var body: some View{
        NavigationView {
            List {
                
                
                Section{
                    HStack {
                        VStack(alignment: .leading){
                            Text("Zachary Iyasere")
                                .modifier(CustomTextModifier(size: 17, color: .white))
                                .bold()
                            
                            
                            Text("May 3, 2024")
                                .modifier(CustomTextModifier(size: 13, color: .white))
                                .padding(.top, 1)
                            Text("@4:00pm")
                                .modifier(CustomTextModifier(size: 13, color: .white))
                        }
                        .padding(.top, 1)
                        
                        Spacer()
                        
                        HStack {
                            Button {}label:{
                                Image(systemName: "minus")
                                    .modifier(CustomTextModifier(size: 20, color: .blue))
                                    .bold()
                            }
                            
                            
                            Text("$25")
                                .modifier(CustomTextModifier(size: 25, color: .green))
                                .bold()
                            
                            
                            Button {}label:{
                                Image(systemName: "plus")
                                    .modifier(CustomTextModifier(size: 20, color: .blue))
                                    .bold()
                            }
                            
                        }
                    }
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{
                    DatePicker(
                        "Select a date",
                        selection: $selectedDate,
                        displayedComponents: [.date]
                    )
                    .datePickerStyle(GraphicalDatePickerStyle())
                    //                .onChange(of: selectedDate, perform: adjustToNearest5Minutes)
                    .colorScheme(.dark)
                    //                   .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                }
            header:{
                Text("Calendar")
                    .padding(.bottom, -5).padding(.leading, 10)
                    .foregroundColor(.white)
            }
            .listSectionSpacing(.custom(10))
            .listRowInsets(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section {
                    
                    //       footer: {
                    VStack (alignment: .leading){
                        HStack{
                            Text("Original Date")
                                .modifier(CustomTextModifier(size: 12, color: .white))
                            
                            Spacer()
                            
                            Text("Original Time")
                                .modifier(CustomTextModifier(size: 12, color: .white))
                        }
                        
                        
                        HStack{
                            Text("Jan 3, 2024")
                                .modifier(CustomTextModifier(size: 15, color: .white))
                                .bold()
                            
                            Spacer()
                            Text("4:00 PM")
                                .modifier(CustomTextModifier(size: 15, color: .white))
                                .bold()
                        }
                    }
                    .padding([.top, .bottom], 2)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    VStack {
                        HStack{
                            Text("New Date")
                                .modifier(CustomTextModifier(size: 12, color: .white))
                            
                            Spacer()
                            
                            Text("New Time")
                                .modifier(CustomTextModifier(size: 12, color: .white))
                        }
                        .padding(.bottom, -12)
                        
                        
                        
                        var rescDate = compDate(date: selectedDate)
                        var rescTime = formatDate(date: selectedDate, format: "hh:mm a").joined(separator: " ")
                        HStack{
                            Text("\(rescDate)") //CHANGE COLOR IF SELECTED
                                .modifier(CustomTextModifier(size: 15, color: .green))
                                .bold()
                            
                            Spacer()
                            
                            Picker("", selection: $solectedTime) {
                                ForEach(timess, id: \.self) {t in
                                    Text("\(t):00 PM")
                                }
                            }
                            .accentColor(.red)
                            
                            //                            .onAppear {
                            //                                UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.green], for: .normal)
                            //                            }
                        }
                        
                        
                    }
                }
            header:{
                Text("Reschedule Appointment")
                    .padding(.bottom, -10)
                    .foregroundColor(.white)
            }
            .listSectionSpacing(.custom(20))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{
                    HStack{
                        Image(systemName: "calendar.badge.checkmark")
                        
                        
                        Text("Reschedule Appointment")
                            .padding(.leading, -1)
                    }
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                    .foregroundColor(.blue)
                }
                .listSectionSpacing(.custom(20))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
// Update
Section {
    Text("Cancel Appointment")
        .modifier(CustomTextModifier(size: 15, color: .red))
        .frame(maxWidth: .infinity, alignment: .center)
        .onTapGesture {
            cancelAppointment(appointment: clientData, isPending: false)
        }
}
.listSectionSpacing(.custom(20))

                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{
                    ImageAndText(text: "Return", image: "arrowshape.turn.up.backward.fill", size: 17, bold: false)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        .background(
                            NavigationLink("", destination: BarberAppView().navigationBarBackButtonHidden(true))
                                .opacity(0)
                        )
                    
                }
                .listSectionSpacing(.custom(20))
                                
            }
            .navigationBarHidden(true)
        }
    }
}


#Preview {
    barber_nextClientButton_View()
}

