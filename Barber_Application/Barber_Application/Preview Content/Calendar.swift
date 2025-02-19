//
//  Untitled.swift
//  latest
//
//  Created by user on 10/23/24.
//
import SwiftUI

struct barber_calendarButton_View: View{
    @EnvironmentObject var clientArrayModel: ClientArrayModel
    @State private var selectedDate: Date = Date()
    @State private var addClient_Text: String = ""
    @State var addClient_Time: Date = Date()
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
//                .frame(height: 300)
                
                
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
                        
                        DatePicker("", selection: $addClient_Time, displayedComponents: .hourAndMinute)
    //                        .datePickerStyle(.wheel)
                        
                        
                        
                    }
                    .buttonStyle(BorderlessButtonStyle())
                    .padding([.leading, .trailing])
                    .padding([.top, .bottom], 10)
                
            }
            header:{
                Text("Calendar")
                    .padding(.bottom, -5).padding(.leading, 10)
                    .foregroundColor(.white)
            }
            .listSectionSpacing(.custom(10))
            .listRowInsets(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
            
            
            
            

            
            
            
            
            
            
            
            Section {
                let items = Array(1...1).map { "Item \($0)" }
                let scrollItems = Array(1...10).map { "ScrollItem \($0)" }
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack(alignment: .center) {
                        
                        
//                        Rectangle()
//                            .fill(.gray)
//                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 2)
//                            .padding(.bottom, 8)
                    }
                    .padding([.leading, .trailing])
                    
                    
                    

                    

                    Section {
                        HStack(alignment: .center) {
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
                        
                        
                        var clientArray = clientArrayModel.clientArray
// Update
ForEach(clientArray, id: \.self) { client in
    HStack {
        Rectangle()
            .fill(.green)
            .frame(width:4)

        HStack {
            VStack(alignment: .leading) {
                Text("\(client.name)")
                    .modifier(CustomTextModifier(size: 15, color: .white))

                Text("4:30 PM")
                    .modifier(CustomTextModifier(size: 15, color: .white))
            }
            .padding(.leading)
            .padding([.top, .bottom], 10)
            .frame(maxWidth: .infinity, alignment: .leading)

            Text("$30")
                .padding(.trailing)
        }
        .background(Color.gray.opacity(0.2))
        .cornerRadius(8)
    }
    .swipeActions(edge: .leading) {
        Button(role: .destructive) {
            cancelAppointment(appointment: client, isPending: false)
        } label: {
            Image(systemName: "trash")
        }
        .tint(.red)
    }
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
        }
    }
}


#Preview{
    barber_calendarButton_View()
        .environmentObject(ClientArrayModel())
}
