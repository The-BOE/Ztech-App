//
//  ClientList_page.swift
//  latest
//
//  Created by user on 10/23/24.
//
import SwiftUI

struct clientListView: View{
    @State private var searchText = "" //Search bar text
    @State private var clientCount = 47 //Number of current clients
    @State private var requestCount = 5 //Number of client requests
    @State private var pendOrApp = "Pending"
    let s = ["Approved", "Pending"]
    
    
    var body: some View{
        NavigationView {
            List{
                
                //Client Title and count
                Section{}footer:{
                    
                    VStack {
                        Text(pendOrApp == "Approved" ? "Clients: \(clientCount)" : "Requested: \(requestCount)")
                            .modifier(CustomTextModifier(size: 30, color: .white))
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                            .bold()
                            .padding(.leading, 2)
                        
                        Rectangle()
                            .frame(height: 3)
                            .padding(.top, -13)
                    }
                }
                .listRowInsets(.init(top: 0, leading: 3, bottom: 0, trailing: 3))
                
                
                
                //Search bar for list of clients
                Section{
                    HStack{
                        TextField("Search...", text: $searchText)
                            .padding(7)
                            .padding(.horizontal, 25)
                            .background(Color(.systemGray6))
                            .cornerRadius(8)
                            .overlay(
                                HStack {
                                    Image(systemName: "magnifyingglass")
                                        .foregroundColor(.gray)
                                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                                        .padding(.leading, 8)
                                    
                                    if !searchText.isEmpty {
                                        Button(action: {
                                            self.searchText = ""
                                        }) {
                                            Image(systemName: "multiply.circle.fill")
                                                .foregroundColor(.gray)
                                                .padding(.trailing, 8)
                                        }
                                    }
                                }
                            )
                            .padding(.horizontal, 10)
                    }
                }
                .listSectionSpacing(.custom(15))
                
                
                
//Approved or Pending selector
                Section{}footer:{
                    Picker(selection: $pendOrApp, label: Text("Data")) {
                        ForEach(s, id: \.self) { imageName in
                            Text("\(imageName)")
                                .rotationEffect(Angle(degrees: 90))
                        }
                    }
                    .frame(maxWidth: .infinity)
                    .labelsHidden()
                    .pickerStyle(SegmentedPickerStyle())
                    .clipped()
                }
                .listRowInsets(.init(.init(top: 0, leading: 0, bottom: 0, trailing:0)))
                
                
                
//SCROLLING LIST OF
//                ForEach(clientArray.prefix(5), id: \.self){ client in
//                    Section{
//                        if pendOrApp == "Approved"{
//                            VStack{
//                                Spacer()
//                                
//                                HStack(alignment: .top) {
//                                    VStack(alignment: .leading) {
//                                        Text("\(client.name)")
//                                            .font(.system(size: 17))
//                                            .bold()
//                                        
//                                        let joinDate = formatDate(date: client.joined, format: "MMM d YYYY")
//                                        
//                                        Text("Joined \(joinDate[0]) \(joinDate[1]), \(joinDate[2])")
//                                            .font(.system(size: 11))
//                                            .italic()
//                                    }
//                                    
//                                    
//                                    
//                                    Spacer()
//                                    Text("\(client.number)")
//                                        .font(.system(size: 12))
//                                        .foregroundColor(.blue)
//                                        .padding(.top, 3)
//                                }
//                                
//                                Spacer()
//                                
//                                HStack {
//                                    VStack(alignment: .leading) {
//                                        Text("\(client.email)")
//                                        Text("\(client.joinLocation)")
//                                    }
//                                    .font(.system(size: 14))
//                                    
//                                    
//                                    Spacer()
//                                    
//                                    VStack(alignment: .trailing){
//                                        Text("Miss/make")
//                                            .foregroundColor(.gray)
//                                        
//                                        HStack {
//                                            Text("0")
//                                                .foregroundColor(.red)
//                                            
//                                            Text("137")
//                                                .foregroundColor(.green)
//                                        }
//                                    }
//                                    .font(.system(size: 14))
//                                    
//                                }
//                                
//                                
//                                Spacer()
//                            }
//                            .frame(height: 70)
//                        }
//                        
//                        
//                        
////                     PENDING CLIENTS
//                        else{
//                            VStack{
//                                Spacer()
//                                
//                                HStack(alignment: .top) {
//                                    VStack(alignment: .leading) {
//                                        Text("\(client.name)")
//                                            .font(.system(size: 17))
//                                            .bold()
//                                        
//                                        let requestDate = formatDate(date: client.joined, format: "MMM d YYYY")
//                                        
//                                        Text("Requested \(requestDate[0]) \(requestDate[1]), \(requestDate[2])")
//                                            .font(.system(size: 11))
//                                            .italic()
//                                    }
//                                    
//                                    
//                                    
//                                    Spacer()
//                                    Text("\(client.number)")
//                                        .font(.system(size: 12))
//                                        .foregroundColor(.blue)
//                                        .padding(.top, 3)
//                                }
//                                
//                                Spacer()
//                                
//                                HStack {
//                                    VStack(alignment: .leading) {
//                                        Text("\(client.email)")
//                                        Text("\(client.joinLocation)")
//                                    }
//                                    .font(.system(size: 14))
//                                    .frame(maxWidth: .infinity, alignment: .leading)
//                                    
//                                    
//                                    
//                                    
////                                    HStack{
////                                        Spacer()
////                                        
////                                        
//////                                  Accept Client button
////                                        Button{}label:{
////                                            Image(systemName: "person.fill.badge.plus")
////                                                .foregroundColor(.green)
////                                                .font(.system(size: 25))
////                                                .padding(.top, 4).padding(.trailing, -12)
////                                        }
////                                        
////                                        Spacer()
////                                        
//////                                  Decline Client button
////                                        Button{}label:{
////                                            Image(systemName: "person.fill.xmark")
////                                                .foregroundColor(.red)
////                                                .font(.system(size: 25))
////
////                                        }
////                                    }
//                                }
//                                
//                                
//                                Spacer()
//                            }
//                            .frame(height: 70)
//                            .swipeActions(edge: .trailing){
//                                Button{}label:{
//                                    Label("Accept", systemImage: "person.fill.badge.plus")
//                                }
//                                .tint(.green)
//                            }
//                            
//                            .swipeActions(edge: .leading){
//                                Button{}label:{
//                                    Label("Decline", systemImage: "person.fill.xmark")
//                                }
//                                .tint(.red)
//                            }
//                        }
//                        
//                    }
//                    .listSectionSpacing(.custom(12))
//                }
                
            }
        }
    }
    
}
    #Preview{
        clientListView()
    }
    
