//  BarberView.swift
//  TEST/Barber_App
//
//  Created by user on 3/21/24.


import SwiftUI

struct BarberView: View {
    @StateObject var data = GridViewMode()
    @State private var color: Color = .blue
    @State private var date = Date.now
    @State private var days: [Date] = []
    @State private var thismon = getCurrentMonth()
    @State private var showIndicator: Int = 0
    @State private var showBlur = false
    @State private var showApp = false
    @State private var appointmentSelected: clientData = clientArray[0]
    @State private var selectedDate = Date()
    @State private var pendOrApp: String = "Approved"
    @State private var pendOrApp2: String = "Approved"
    @State private var price: Int = 30
    @State private var showCalendar = false
    @State private var selectedCity = "Select a city"
    
    let daysOfWeek = Date.capitalizedFirstLettersOfWeekdays
    let columns = Array(repeating: GridItem(.flexible()), count: 7)
    let s = ["Approved", "Pending"]
    
    //    @Binding var navPath: NavigationPath
    //    init() {
    //
    //        //       UITableView.appearance().separatorStyle = .none
    //        //       UITableViewCell.appearance().backgroundColor = .green
    //        //       UITableView.appearance().backgroundColor = .green
    //    }
    
    var body: some View {
        
        NavigationView{
            
            List{
                
                Section{
                    VStack {
                        Text("Zachary Iyasere")
                            .modifier(CustomTextModifier(size: 25, color: .blue))
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .bold()
                        
                        Text("Barber Since 2014")
                            .modifier(CustomTextModifier(size: 15, color: .white))
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .italic()
                    }
                    .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.108, green: 0.108, blue: 0.119)/*@END_MENU_TOKEN@*/)
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{}
            header: {
                HStack{
                    Button{
                        if price-5 != -5{
                            price=price-5
                        }
                        
                        
                    }label:{
                        Image(systemName: "arrowshape.left")
                            .modifier(CustomTextModifier(size: 25, color: .white))
                        
                    }
                    
                    Spacer()
                    
                    Text("$ \(price)")
                        .modifier(CustomTextModifier(size: 45, color: .white))
                        .bold()
                    
                    
                    Spacer()
                    
                    Button{price=price+5}label:{
                        Image(systemName: "arrowshape.right")
                            .modifier(CustomTextModifier(size: 25, color: .white))
                    }
                }
            }
            .listSectionSpacing(.custom(5))
                
                
                
                
                
                
                
                
                
                
                
                Section{
                    Text("Set Price")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        .modifier(CustomTextModifier(size: 20, color: .blue)).bold()
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                //    APPOINTMENTS    ================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================================
                //        APPOINTMENTS
                
                
                
                
                Section{
                    HStack{
                        Image(systemName: "calendar")
                            .modifier(CustomTextModifier(size: 20, color: .blue))
                        
                        Text("Calendar")
                            .modifier(CustomTextModifier(size: 20, color: .blue))
                            .bold()
                    }
                    .frame(maxWidth: .infinity)
                    .background(
                        NavigationLink("", destination: barber_calendarButton_View())
                            .opacity(0)
                    )
                } header: {
                    Text("Appointments")
                        .modifier(CustomTextModifier(size: 17, color: .white))
                        .bold()
                }
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{
                    VStack (alignment: .leading){
                        Text("Next Client")
                            .modifier(CustomTextModifier(size: 13, color: .gray)).bold()
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        HStack(alignment: .center) {
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
                            
                            HStack {
                                Image(systemName: "calendar")
                                    .modifier(CustomTextModifier(size: 10, color: .white))
                                
                                Text("Date")
                                    .modifier(CustomTextModifier(size: 10, color: .white))
                                    .padding(.leading, -5)
                            }
                            
                            Spacer()
                            
                            HStack {
                                Image(systemName: "clock")
                                    .modifier(CustomTextModifier(size: 10, color: .white))
                                    .bold()
                                
                                Text("Time")
                                    .modifier(CustomTextModifier(size: 10, color: .white))
                                    .padding(.leading, -5)
                            }
                        } //date and time labels HSTACK
                        .padding(.top, 1)
                        
                        //                            Button{} label:{
                        HStack{
                            Text("Jan 3, 2024")
                                .modifier(CustomTextModifier(size: 13, color: .green))
                                .bold()
                            
                            Spacer()
                            Text("4:00 PM")
                                .modifier(CustomTextModifier(size: 13, color: .green))
                                .bold()
                        }
                    }
                    .padding([.top, .bottom], 1)
                    .navigationBarBackButtonHidden(true)
                    .navigationBarHidden(true)
                    .background(
                        NavigationLink("", destination: barber_nextClientButton_View().navigationBarBackButtonHidden(true)
                                      )
                        .opacity(0)
                    )
                }
                .listSectionSpacing(.custom(10))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{
                    Picker(selection: $pendOrApp, label: Text("Data")) {
                        ForEach(s, id: \.self) { imageName in
                            Text("\(imageName)")
                                .rotationEffect(Angle(degrees: 90))
                        }
                    }
                    .labelsHidden()
                    .pickerStyle(SegmentedPickerStyle())
                    .clipped()
                }.listRowInsets(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
                    .listSectionSpacing(.custom(15))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section {
                    
                    if pendOrApp == "Pending"{
                        ForEach(clientArray, id: \.self){ cli in
                            VStack {
                                HStack{
                                    VStack(alignment: .leading){
                                        Text("\(cli.name)")
                                            .font(.system(size: 13))
                                            .padding(5)
                                            .background(
                                                RoundedRectangle(cornerRadius: 7)
                                                    .fill(Color.orange)
                                            )
                                        
                                        
                                        
                                        Text("@Sacramento")
                                            .modifier(CustomTextModifier(size: 13, color: .white))
                                            .italic()
                                    }
                                    
                                    
                                    Spacer()
                                    
                                    VStack (alignment: .trailing){
                                        Text("Wed, Jan 7")
                                            .font(.system(size: 15))
                                        
                                        
                                        Text("3:00pm")
                                            .font(.system(size: 13))
                                    }
                                    
                                }
                                
                            }.padding([.top, .bottom], 1)
                        }
                    }
                    
                    
                    if pendOrApp == "Approved"{
                        ForEach(clientArray, id: \.self) {client in
                            
                            Button {
                                appointmentSelected = client
                                showApp.toggle()
                            } label: {
                                VStack(alignment:.leading) {
                                    HStack {
                                        VStack(alignment: .leading){
                                            Text("\(client.name)")
                                                .padding(5)
                                                .font(.system(size: 13))
                                                .background(
                                                    RoundedRectangle(cornerRadius: 7)
                                                        .fill(Color.blue)
                                                )
                                            
                                            
                                            HStack {
                                                Image(systemName: "phone")
                                                    .font(.system(size: 13))
                                                    .bold()
                                                    .padding(.trailing, -7)
                                                
                                                
                                                Text("\(client.number)")
                                                    .font(.system(size: 13))
                                            }
                                            
                                        }
                                        
                                        Spacer()
                                        
                                        VStack(alignment: .trailing){
                                            Text("Mon, Feb 3")
                                                .font(.system(size: 15))
                                                .padding(.top, 1)
                                            
                                            
                                            
                                            Text("4:00 AM")
                                                .font(.system(size: 13))
                                        }
                                        
                                    }
                                    .foregroundColor(.white)
                                    
                                }.padding([.top, .bottom], 1)
                            }
                        }
                    }
                    //                            .listSectionSpacing(.custom(15))
                    
                }
                .listSectionSpacing(.custom(15))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{
                    let cities = ["Sacramento", "Elk Grove", "Hayward", "Los Angeles"]
                    Picker("Current city", selection: $selectedCity) {
                        ForEach(cities, id: \.self) {
                            Text($0)
                        }
                    }
                    .padding([.leading, .trailing])
                    
                    
                    
                    //                        HStack {
                    //                            Image(systemName: "mappin.and.ellipse")
                    //                                .modifier(CustomTextModifier(size: 18, color: .red))
                    //
                    //                            Text("Sacramento, CA")
                    //                                .modifier(CustomTextModifier(size: 13, color: .white))
                    //                                .bold()
                    //                                .padding(.leading, -3)
                    //                        }
                    //                        .padding(.leading, 10)
                    
                } header:{
                    Text("Location")
                        .padding(.bottom, -20)
                        .modifier(CustomTextModifier(size: 17, color: .white))
                        .bold()
                }
                .listSectionSpacing(.custom(30))
                .listRowInsets(.init(top: 10, leading: 5, bottom: 10, trailing: 0))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{
                    Picker(selection: $pendOrApp2, label: Text("Data")) {
                        ForEach(s, id: \.self) { imageName in
                            Text("\(imageName)")
                                .rotationEffect(Angle(degrees: 90))
                        }
                    }
                    .labelsHidden()
                    .pickerStyle(SegmentedPickerStyle())
                    .clipped()
                } header:{
                    Text("Clients")
                        .modifier(CustomTextModifier(size: 17, color: .white))
                        .bold()
                }
                .listRowInsets(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
                .listSectionSpacing(.custom(15))
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                Section{ //show clients button
                    Text(pendOrApp2 == "Pending" ? "Add 3 Clients" : "Show 94 Clients")
                        .modifier(CustomTextModifier(size: 17, color: .blue))
                        .bold()
                        .frame(maxWidth: .infinity)
                }
                .background(
                    NavigationLink("", destination: barber_clientListView())
                        .opacity(0)
                )
                
                
                
                
                
                
                
                Section{
                    let pendingClis = clientArray[0...2]
                    ForEach(pendingClis, id: \.self){ cli in
                        if pendOrApp2 == "Pending"{
                            VStack(alignment: .leading){
                                HStack {
                                    
                                    Text("\(cli.name)")
                                        .modifier(CustomTextModifier(size: 14, color: .orange))
                                        .bold()
                                    
                                    Spacer()
                                    
                                    HStack {
                                        Image(systemName: "phone.fill")
                                            .modifier(CustomTextModifier(size: 9, color: .white))
                                        
                                        Text("\(cli.number)")
                                            .modifier(CustomTextModifier(size: 11, color: .white))
                                    }
                                    
                                    
                                }
                                
                                
                                Group {
                                    HStack {
                                        HStack {
                                            Image(systemName: "mappin.and.ellipse")
                                                .modifier(CustomTextModifier(size: 9, color: .white))
                                            Text("\(cli.joinLocation)")
                                                .modifier(CustomTextModifier(size: 11, color: .white))
                                        }
                                        Spacer()
                                        
                                    }
                                    
                                    HStack {
                                        HStack{
                                            Image(systemName: "envelope.fill")
                                                .modifier(CustomTextModifier(size: 9, color: .white))
                                            Text("\(cli.email)")
                                                .modifier(CustomTextModifier(size: 11, color: .white))
                                        }
                                        Spacer()
                                        
                                    }
                                    
                                    HStack {
                                        let joinDate = formatDate(date: cli.joined, format: "MMM d YYYY")
                                        Image(systemName: "calendar.badge.plus")
                                            .modifier(CustomTextModifier(size: 9, color: .white))
                                        Text("\(joinDate[0]), \(joinDate[1]), \(joinDate[2])")
                                            .modifier(CustomTextModifier(size: 11, color: .white))
                                    }
                                }
                                
                                
                            }
                            .frame(maxHeight: 60)
                        }
                        
                        
                        
                        else{
                            VStack(alignment: .leading){
                                HStack {
                                    Text("\(cli.name)")
                                        .modifier(CustomTextModifier(size: 14, color: .blue))
                                        .bold()
                                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                    
                                    
                                    HStack {
                                        Image(systemName: "phone.fill")
                                            .modifier(CustomTextModifier(size: 9, color: .white))
                                            .padding(.trailing, -3)
                                        Text("\(cli.number)")
                                            .modifier(CustomTextModifier(size: 11, color: .white))
                                    }
                                }
                                
                                
                                
                                
                                HStack {
                                    Text("\(cli.joinLocation)")
                                        .modifier(CustomTextModifier(size: 11, color: .white))
                                    
                                    
                                    Spacer()
                                    
                                    
                                        Text("137")
                                            .foregroundColor(.green)
                                            .modifier(CustomTextModifier(size: 11))
                                    
                                        Text("13")
                                            .foregroundColor(.red)
                                    
                                    .modifier(CustomTextModifier(size: 11))
                                }
                                
                                
                            }.frame(maxHeight: 60)
                            
                        }
                        
                    }.listRowInsets(.init(top: 15, leading: 15, bottom: 15, trailing: 15))
                }
                .listSectionSpacing(.custom(20))
            }
            .padding(.top, -25)
            .blur(radius: showBlur ? 4 : 0)
            //                        .onAppear{
            //                            UITableView.appearance().separatorStyle = .none
            //                            UITableViewCell.appearance().backgroundColor = .green
            //                            UITableView.appearance().backgroundColor = .green
            //                        }
            //                        .listSectionSpacing(0)
            
            .frame(maxHeight: .infinity)
            
            
        }
    }
    
    
    
    func adjustToNearest5Minutes(_ date: Date) {
        let calendar = Calendar.current
        let minute = calendar.component(.minute, from: date)
        let remainder = minute % 5
        if remainder != 0 {
            let adjustedDate = calendar.date(byAdding: .minute, value: 5 - remainder, to: date) ?? date
            selectedDate = adjustedDate
        }
    }
}




#Preview {
    BarberView()
}
