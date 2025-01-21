//
//  Login.swift
//  ZackApp
//
//  Created by user on 11/25/21.
//

import SwiftUI

let fieldcolor = Color(red: 239/255, green: 243/255, blue: 244/255)
let armyGreen = Color(red: 56/255, green: 61/255, blue: 24/255)


struct Login: View {
    @State var phoneNumber = ""
    @State var password = ""
    @State var didLogin: Bool = true
    @State var NavPath = NavigationPath()
    
    var body: some View {
        NavigationView{
            List{
                Section{
                    Image("Ztech_logo")
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                        .font(.system(size: 100))
                }
                .listRowInsets(.init(top: 100, leading: 10, bottom: 100, trailing: 10))
                .listSectionSpacing(.custom(didLogin ? 350: 150))
                
                
                
                
                
                if !didLogin{
                    Section{}header: {
                        Text("Invalid login attempt")
                            .modifier(CustomTextModifier(size: 15, color: .red))
                            .bold()
                            .italic()
                        
                    }.listSectionSpacing(.custom(59))
                }
                
                
                
                
                
                
                Section{
                    TextField("(000)000-0000", text: $phoneNumber)
                        .keyboardType(.decimalPad)
                        .onChange(of: phoneNumber) {
                            if !phoneNumber.isEmpty {
                                phoneNumber = phoneNumber.formatPhoneNumber()
                            }
                        }
                } header:{
                    Text("Phone Number")
                        .modifier(CustomTextModifier(size: 15, color: .white))
                        .bold()
                        .padding(.bottom, -5)
                    
                }.listSectionSpacing(.custom(10))
                
                
                
                
                Section{
                    SecureField("************", text: $password)
                } header: {
                    Text("Password")
                        .modifier(CustomTextModifier(size: 15, color: .white))
                        .bold()
                        .padding(.bottom, -5)
                }
                
                
                
                
                
                Section {
                    NavigationLink(destination: BarberView()){
                        Text("Login")
                            .modifier(CustomTextModifier(size: 20, color: .blue))
                            .bold()
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                    }
                    
                
                }footer: {
                    HStack{
                        Rectangle()
                            .fill(.gray)
                            .frame(height: 1)
                        
                        Button {
                            NavPath.append("newUser")
                        } label:{
                            Text("Register user ?")
                                .modifier(CustomTextModifier(size: 25, color: .blue))
                            .bold()
                        }
                        
                        Rectangle()
                            .fill(.gray)
                            .frame(height: 1)
                    }
                    .padding(.top, 15)
                }
            }
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
        }
    }
}



struct Login_Previews: PreviewProvider {
    static var previews: some View {
        
        Login()
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden(true)
    }
}






