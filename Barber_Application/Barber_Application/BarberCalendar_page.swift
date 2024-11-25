//
//  BarberView_META.swift
//  latest
//
//  Created by user on 6/6/24.
//

import SwiftUI

let timess = Array(1...25)

struct CalendarView: View {
    @State var selectedDate = Date()
    @State var goHome = false
    
    
    
    
    var body: some View{
        NavigationView {
            List{
                
                Section{} footer:{
                    Button{
                        withAnimation(.easeIn(duration: 3)){
                            goHome = true
                        }
                    } label:{
                        Image(systemName: "chevron.left")
                            .modifier(CustomTextModifier(size: 25, color: .white))
                            .bold()
                        
                        
                        Text("Calendar")
                            .modifier(CustomTextModifier(size: 30, color: .white))
                            .bold()
                    }
                }
                .listRowInsets(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
                .listSectionSpacing(.custom(10))
                
                
                if goHome{
                    NavigationLink(
                        destination: BarberView(),
                        isActive: $goHome,
                        label: {
                            EmptyView()
                        }
                    )
                    .hidden()
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{
                    DatePicker(
                        "Select a date",
                        selection: $selectedDate,
                        displayedComponents: .date
                    )
                    .datePickerStyle(GraphicalDatePickerStyle())
                    //                .onChange(of: selectedDate, perform: adjustToNearest5Minutes)
                    .padding().padding()
                    //                    .colorScheme(.dark)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
                    .listRowInsets(.init(top: -35, leading: -25, bottom: -25, trailing: -25))
                    
                }
                .listSectionSpacing(.custom(20))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{}footer: {
                    var dispDate = formatDate(date: selectedDate, format: "MMMM d YYYY")
                    VStack(alignment: .leading) {
                        Text("\(dispDate[0]) \(dispDate[1]), \(dispDate[2])")
                            .modifier(CustomTextModifier(size: 25, color: .white))
                            .padding(.leading, 10)
                            .bold()
                        
                        Rectangle()
                            .fill(.white)
                            .frame(maxWidth: .infinity, maxHeight: 2)
                            .padding(.top, -14)
                    }
                }
                .listRowInsets(.init(top: 0, leading: 8, bottom: 0, trailing: 5))
                .listSectionSpacing(.custom(5))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                ForEach(0..<4){_ in
                    Section{
                        //                    HStack {
                        //
                        //                        Rectangle()
                        //                            .fill(.orange)
                        //                            .frame(width: 7, height: 55)
                        //
                        //
                        //                        HStack {
                        //                            VStack (alignment: .leading){
                        //                                Text("Zachary Iyasere")
                        //                                    .modifier(CustomTextModifier(size: 17, color: .white))
                        //                                    .bold()
                        //
                        //
                        //
                        //                                Text("Jan 3, 2024")
                        //                                    .modifier(CustomTextModifier(size: 15, color: .white))
                        //                                    .bold()
                        //                            }
                        //
                        //                            Spacer()
                        //
                        //                            Text("4:00 PM")
                        //                                .modifier(CustomTextModifier(size: 15, color: .white))
                        //                                .bold()
                        //                        }
                        //                    }
                        
                        
                        
                        
                        VStack (alignment: .leading){
                            
                            HStack(alignment: .center) {
                                Text("Zachary Iyasere")
                                    .modifier(CustomTextModifier(size: 17, color: .white))
                                    .bold()
                                
                                Spacer()
                                
                                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                                    Image(systemName: "phone")
                                        .modifier(CustomTextModifier(size: 12, color: .white))
                                        .padding(.trailing, -7)
                                    
                                    
                                    Text("(916)896-9789")
                                        .modifier(CustomTextModifier(size: 13, color: .white))
                                        .bold()
                                }
                            } //name and number HSTACK
                            //                                    .background(.blue)
                            .cornerRadius(7)
                            
                            
                            HStack{
                                Text("Jan 3, 2024")
                                    .modifier(CustomTextModifier(size: 15, color: .green))
                                    .bold()
                                
                                Spacer()
                                Text("4:00 PM")
                                    .modifier(CustomTextModifier(size: 15, color: .green))
                                    .bold()
                            }
                            //                            }
                            
                            //date and time values HSTACK
                        }.padding([.top, .bottom], 1)
                    }
                    .listSectionSpacing(.custom(10))
                    //                .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 15))
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                VStack (alignment: .leading){
                    
                    HStack(alignment: .top) {
                        Text("Zachary Iyasere")
                            .modifier(CustomTextModifier(size: 17, color: .white))
                            .bold()
                        
                        Spacer()
                        
                        HStack {
                            Image(systemName: "phone")
                                .modifier(CustomTextModifier(size: 13, color: .white))
                                .padding(.trailing, -7)
                            
                            
                            Text("(916)896-9789")
                                .modifier(CustomTextModifier(size: 13, color: .white))
                                .bold()
                        }
                    } //name and number HSTACK
                    //                                    .background(.blue)
                    .cornerRadius(7)
                    
                    
                    HStack{
                        Text("Jan 3, 2024")
                            .modifier(CustomTextModifier(size: 15, color: .green))
                            .bold()
                        
                        Spacer()
                        Text("4:00 PM")
                            .modifier(CustomTextModifier(size: 15, color: .green))
                            .bold()
                    }
                    //                            }
                    
                    //date and time values HSTACK
                }.padding([.top, .bottom], 1)
                
            }
            .scrollIndicators(.hidden)
            .navigationBarHidden(true)
        }
        
        
        
    }
}




#Preview {
    CalendarView()
}


