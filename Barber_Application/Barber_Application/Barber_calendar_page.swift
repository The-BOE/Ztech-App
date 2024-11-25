//
//  Untitled.swift
//  latest
//
//  Created by user on 10/23/24.
//
import SwiftUI

struct barber_calendarButton_View: View{
    @State private var selectedDate: Date = Date()
    @State private var addClient_Text: String = ""
    @State var addClient_Time: String = "12:00pm"
    let times2 = Array(1...12)
    
    var body: some View{
        var date = formatDate(date: selectedDate, format: "MMMM d, YYYY")
        
        
        List{
            
            Section{
                DatePicker(
                    "Select a date",
                    selection: $selectedDate,
                    displayedComponents: [.date]
                )
                .datePickerStyle(GraphicalDatePickerStyle())
                .colorScheme(.dark)
            }
            header:{
                Text("Calendar")
                    .padding(.bottom, -5).padding(.leading, 10)
                    .foregroundColor(.white)
            }
            .listSectionSpacing(.custom(10))
            .listRowInsets(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
            
            
            
            
            
            
            
            
            
            Section {
                HStack {
                    Button {}
                    label:{
                        Image(systemName: "plus")
                            .font(.system(size: 20))
                            .bold()
                    }
                    
                    
                    
                    TextField("", text: $addClient_Text)
                        .frame(maxWidth: 200)
                        .truncationMode(.tail)
                    
                    // Ensure text is truncated at the end if it exceeds the width
                    //                            .background(.white)
                    
                    
                    //                        Rectangle()
                    //                            .fill(.white)
                    //                            .frame(maxWidth: .infinity, maxHeight: 2)
                    //                            .padding(.top, -3)
                    
                    
                    
                    
                    Picker("a;sdkfad", selection: $addClient_Time) {
                        ForEach(times2, id: \.self){tim in
                            Text("\(tim):00")
                        }
                    }
                    
                    
                }
                .buttonStyle(BorderlessButtonStyle())
            }
            //        footer:{
            //            HStack{
            //                Image(systemName: "plus")
            //
            //                Section{
            //                    VStack{
            //                        Text("\(date[0]) \(date[1]) \(date[2])")
            //                            .modifier(CustomTextModifier(size: 15, color: .white))
            //                            .bold()
            //
            //
            //                        HStack{
            //                            TextField("", text: $addClient_Text)
            //
            //
            //                            Picker("", selection: $addClient_Time) {
            //                                ForEach(timess, id: \.self) {t in
            //                                    Text("\(t%13):00 PM")
            //                                }
            //                            }
            //                        }
            //                    }
            //                }
            //            }
            //        }
            
            
            
            
            
            //            Section{} footer: {
            //                var date = formatDate(date: selectedDate, format: "MMMM d, YYYY")
            //                VStack(alignment: .center) {
            //
            //                    Text("\(date[0]) \(date[1]) \(date[2])")
            //                        .modifier(CustomTextModifier(size: 15, color: .white))
            //                        .frame(maxWidth: .infinity, alignment: .leading)
            //                        .padding(.bottom, -3)
            //
            //                    Rectangle()
            //                        .fill(.gray)
            //                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 1)
            //                        .padding([.leading, .trailing], 1)
            //                }
            //                .padding(.bottom, -20)
            //            }
            //            .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            //            .listSectionSeparatorTint(.black)
            
            
            
            
            
            
            
            
            Section {
                let items = Array(1...1).map { "Item \($0)" }
                let scrollItems = Array(1...10).map { "ScrollItem \($0)" }
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    
                    VStack(alignment: .center) {
                        //                            var date = formatDate(date: selectedDate, format: "MMMM d, YYYY")
                        HStack {
                            Text("\(date[0]) \(date[1]) \(date[2])")
                                .padding(.leading, 2)
                            
                            Spacer()
                            
                            VStack {
                                HStack{
                                    Image(systemName: "person.fill")
                                        .font(.system(size: 13))
                                    
                                    Text("7")
                                }
                                
                                Text("$150")
                            }
                        }
                        .modifier(CustomTextModifier(size: 15, color: .white))
                        .padding(.bottom, -3)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .bold()
                        
                        Rectangle()
                            .fill(.gray)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 2)
                            .padding(.bottom, 8)
                    }
                    
                    
                    
                    ForEach(clientArray, id: \.self) { client in
                        HStack {
                            Rectangle()
                                .fill(.green)
                                .frame(width:4)
                            
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("\(client.name)")
                                        .modifier(CustomTextModifier(size: 15, color: .white))
                                    
                                    Text("\(client.number)")
                                        .modifier(CustomTextModifier(size: 15, color: .white))
                                }
                                .padding(.leading)
                                .padding([.top, .bottom], 10)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                //                                    .background(Color.gray.opacity(0.2))
                                
                                Text("$30")
                                    .padding(.trailing)
                                
                            }
                            .background(Color.gray.opacity(0.2))
                            .cornerRadius(8)
                            
                        }
                        
                    }
                }
                .padding(.top)
            }
            .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            .listRowBackground(
                EmptyView()
                    .background(Color.black)
            )
            .listSectionSpacing(.custom(5))
            //            }
            //        header:{
            //            Text("Clients")
            //        }
            
        }
    }
}


#Preview{
    barber_calendarButton_View()
}
