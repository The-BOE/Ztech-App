//
//  ClientList_page.swift
//  latest
//
//  Created by user on 10/23/24.
//
import SwiftUI

struct barber_clientListView: View{
    @State private var searchText = ""

    var body: some View{
        NavigationView {
            List{
                HStack {
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
                
                
                ForEach(clientArray, id: \.self){ client in
                    Section{
                        
                        VStack{
                            Spacer()
                            
                            HStack(alignment: .top) {
                                VStack(alignment: .leading) {
                                    Text("\(client.name)")
                                        .font(.system(size: 17))
                                        .bold()
                                    
                                    let joinDate = formatDate(date: client.joined, format: "MMM d YYYY")
                                    
                                    Text("Joined \(joinDate[0]) \(joinDate[1]), \(joinDate[2])")
                                        .font(.system(size: 11))
                                        .italic()
                                }
                                
                                
                                
                                Spacer()
                                Text("\(client.number)")
                                    .font(.system(size: 12))
                                    .foregroundColor(.blue)
                            }
                            
                            Spacer()
                            
                            HStack {
                                VStack(alignment: .leading) {
                                    Text("\(client.email)")
                                    Text("\(client.joinLocation)")
                                }
                                .font(.system(size: 14))
                                
                                
                                Spacer()
                                
                                VStack(alignment: .trailing){
                                    Text("Miss/make")
                                        .foregroundColor(.gray)
                                    
                                    HStack {
                                        Text("0")
                                            .foregroundColor(.red)
                                        
                                        Text("137")
                                            .foregroundColor(.green)
                                    }
                                }
                                .font(.system(size: 14))
                                
                            }
                            
                            
                            Spacer()
                        }
                        .frame(height: 75)
                    }
                    .listSectionSpacing(.custom(12))
                }
            }
            .navigationBarHidden(true)
        }
    }
}

#Preview{
    barber_clientListView()
}
