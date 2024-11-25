//
//  Appointment_2.swift
//  ZackApp
//
//  Created by user on 12/20/21.
//


/*TODO:
 - Integrate error popup from ZPLAYGROUND
 - Put @State variables into struct method instead of decl state vars
 - verify account with firebase
 */

import SwiftUI
var mygrey = Color(red: 230/255, green: 230/255, blue: 230/255)

struct New_Account: View {
    @State var first_name = ""
    @State var last_name = ""
    @State var email = ""
    @State var username = ""
    @State var password = ""
    @State var location = ""
    @State var phoneNumber = ""
    @State var selectedCity = "Select location"
    
    @State var firstX = false
    @State var lastX = false
    @State var emailX = false
    @State var passwdX = false
    @State var locationX = false
    @State var phoneX = false
    
    @State var errorPage: [String] = []
    @State var showErrorBool = false
    
    static let screenHeight = UIScreen.main.bounds.size.height
    var cities = ["Select location", "Hayward", "Sacramento", "Elk Grove"]
    
    var errors = [
        "first": "Enter your first name (no nicknames)",
        "last" : "Enter your last name (no nicknames)",
        "email": "Invalid email address",
        "pass" : "Password is less than 7 characters",
        "city" : "City not selected",
        "phone": "Invalid phone number"
    ]
   
    var body: some View {
        NavigationView {
            
            ZStack {
                
                if showErrorBool{
                    showErrors(show: $showErrorBool, errs: $errorPage)
                }
                
                
                List{
                    Section{} header:{
                        Text("Create an Account")
                            .modifier(CustomTextModifier(size: 26, color: .white))
                            .bold()
                            .padding(.bottom, -40)
                            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    }
                    .listSectionSpacing(.custom(50))
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //                first name
                    Section {
                        TextField("First name", text: $first_name)
                    }header:{
                        if firstX{
                            HStack(alignment: .center){
                                Text("First Name")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                    .bold()
                                
                                Image(systemName: "asterisk")
                                    .modifier(CustomTextModifier(size: 10, color: .red))
                                    .bold()
                            }
                            .padding(.bottom, -5)
                        }
                        
                        else{
                            Text("First Name")
                                .modifier(CustomTextModifier(size: 15, color: .white))
                                .bold()
                                .padding(.bottom, -5)
                        }
                        
                    }
                    .padding(.leading, -10)
                    .listSectionSpacing(.custom(7))
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    //                last name last name
                    Section{
                        TextField("Last name", text: $last_name)
                    }header:{
                        if lastX{
                            HStack(alignment: .center){
                                Text("Last Name")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                    .bold()
                                
                                Image(systemName: "asterisk")
                                    .modifier(CustomTextModifier(size: 10, color: .red))
                                    .bold()
                            }
                            .padding(.bottom, -5)
                        }
                        
                        else{
                            Text("Last Name")
                                .modifier(CustomTextModifier(size: 15, color: .white))
                                .bold()
                                .padding(.bottom, -5)
                        }
                    }
                    .padding(.leading, -10)
                    .listSectionSpacing(.custom(7))
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Section{
                        TextField("Email", text: $email)
                    }header:{
                        if emailX{
                            HStack(alignment: .center){
                                Text("Email Address")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                    .bold()
                                
                                
                                Image(systemName: "asterisk")
                                    .modifier(CustomTextModifier(size: 10, color: .red))
                                    .bold()
                                
                            }
                            .padding(.bottom, -5)
                        }
                        
                        else{
                            Text("Email Address")
                                .modifier(CustomTextModifier(size: 15, color: .white))
                                .bold()
                                .padding(.bottom, -5)
                        }
                    }
                    .padding(.leading, -10)
                    .listSectionSpacing(.custom(7))
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Section{
                        SecureField("**************", text: $password)
                    }header:{
                        if passwdX{
                            HStack(alignment: .center){
                                Text("Password")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                    .bold()
                                
                                Image(systemName: "asterisk")
                                    .modifier(CustomTextModifier(size: 10, color: .red))
                                    .bold()
                            }
                            .padding(.bottom, -5)
                        }
                        
                        else{
                            Text("Password")
                                .modifier(CustomTextModifier(size: 15, color: .white))
                                .bold()
                                .padding(.trailing, -10).padding(.bottom, -5)
                        }
                    }
                    .padding(.leading, -10)
                    .listSectionSpacing(.custom(7))
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Section{
                        TextField("(000)000-0000", text: $phoneNumber)
                            .keyboardType(.decimalPad)
                            .onChange(of: phoneNumber) {
                                if !phoneNumber.isEmpty {
                                    phoneNumber = phoneNumber.formatPhoneNumber()
                                }
                            }
                    }header:{
                        if phoneX{
                            HStack(alignment: .center){
                                Text("Phone Number")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                    .bold()
                                
                                Image(systemName: "asterisk")
                                    .modifier(CustomTextModifier(size: 10, color: .red))
                                    .bold()
                            }
                            .padding(.bottom, -5)
                        }
                        
                        else{
                            Text("Phone Number")
                                .modifier(CustomTextModifier(size: 15, color: .white))
                                .bold()
                                .padding(.bottom, -5)
                        }
                    }
                    .padding(.leading, -10)
                    .listSectionSpacing(.custom(7))
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Section{

                            Picker("Cut Location", selection: $selectedCity) {
                                ForEach(cities, id: \.self) {
                                    Text($0)
                                }
                            }

                        
                        
                    }header:{
                        if locationX{
                            HStack{
                                Text("Haircut location")
                                    .modifier(CustomTextModifier(size: 15, color: .white))
                                    .bold()
                                
                                Image(systemName: "asterisk")
                                    .modifier(CustomTextModifier(size: 10, color: .red))
                                    .bold()
                            }
                            .padding(.bottom, -5)
                        }
                        
                        else {
                            Text("Haircut location")
                                .modifier(CustomTextModifier(size: 15, color: .white))
                                .bold()
                                .padding(.bottom, -5)
                        }
                    }
                footer:{
                    
                    
                    Text("City where I first cut you")
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .font(.system(size: 11))
                        .padding(.trailing, -10).padding(.top, -5)
                    
                }
                .padding(.leading, -10)
                .listSectionSpacing(.custom(7))
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Section{
                        Button {
                            var fieldList = client(
                                name: "\(first_name) \(last_name)",
                                email: email,
                                phone_number: phoneNumber,
                                password: password,
                                join_city: selectedCity,
                                join_date: compDate(date: Date()),
                                completed_appointments: 0,
                                missed_appointments: 0,
                                cancelled_appointments: 0
                            )
                            
                            print("\(selectedCity)")
                            showErrorBool = checkFields(clientInfo: fieldList)
                            
                            //                        if checkFields(clientInfo: fieldList){
                            //                            verifAcc(accInfo: fieldList)
                            //                        }
                            
                        } label: {
                            Text("Create account")
                                .frame(maxWidth: .infinity, alignment: .center)
                                .modifier(CustomTextModifier(size: 20, color: .blue))
                                .bold()
                        }
                        
                    } footer: {
                        Button{} label: {
                            HStack {
                                Rectangle()
                                    .fill(.gray)
                                    .frame(height: 1)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                                
                                Text("or Login")
                                    .modifier(CustomTextModifier(size: 15, color: .blue))
                                
                                
                                Rectangle()
                                    .fill(.gray)
                                    .frame(height: 1)
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            }
                        }
                        .padding(.top, 25)
                        
                    }
                    .listRowInsets(.init(top: 3, leading: 7, bottom: 3, trailing: 7))
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .listSectionSpacing(.custom(30))
                }
                
                
                
                
                
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    func checkFields(clientInfo: client) -> Bool {
        //    var fieldList = [
        //        "first name": first_name,
        //        "last name": last_name,
        //        "email": email,
        //        "password": password,
        //        "phone number": phoneNumber,
        //        "city": selectedCity
        //    ]
        
        //    name: first_name,
        //    email: email,
        //    phone_number: phoneNumber,
        //    password: password,
        //    join_city: selectedCity,
        //    join_date: compDate(date: Date()),
        //    completed_appointments: 0,
        //    missed_appointments: 0,
        //    cancelled_appointments: 0
        
        
        var ind = 0
        errorPage = []
        
        let name = clientInfo.name.components(separatedBy: " ")
        if name[0] == ""{
            ind = 1
            firstX = true
            errorPage.append(errors["first"]!)
        }else{ firstX = false }
        
        if name[1] == "" {
            ind = 1
            lastX = true
            errorPage.append(errors["last"]!)
        }else{ lastX = false }
        
        if clientInfo.email == ""{
            ind = 1
            emailX = true
            errorPage.append(errors["email"]!)
        }else{ emailX = false }
        
        if clientInfo.password.count < 7{
            ind = 1
            passwdX = true
            errorPage.append(errors["pass"]!)
        }else{ passwdX = false }
        
        
        if clientInfo.phone_number.count < 13{
            ind = 1
            phoneX = true
            errorPage.append(errors["phone"]!)
        }else{ phoneX = false }
        
        
        if clientInfo.join_city == "Select location"{
            ind = 1
            locationX = true
            errorPage.append(errors["city"]!)
        }else{ locationX = false }
        
        if ind == 1{
            return true
        }
        
        else{
            return false
        }
    }
}




struct New_Account_Preview: PreviewProvider {
    static var previews: some View {
        New_Account().navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}




struct showErrors: View{
    @Binding var show: Bool
    @Binding var errs: [String]
    
    var body: some View{
        Button {
            show.toggle()
        } label:{
            Rectangle()
                .fill(.gray)
                .opacity(0.7)
                .ignoresSafeArea()
        }.zIndex(1)
        
        VStack(alignment: .leading, spacing: 15){
            ForEach(errs, id: \.self){ror in
                HStack {
                    Image(systemName: "asterisk")
                        .modifier(CustomTextModifier(size: 8, color: .red))
                    Text("\(ror)")
                }
            }
            
        }.padding(15)
            .zIndex(2)
            .background{
                Rectangle()
                    .fill(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.108, green: 0.108, blue: 0.119)/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10)
            }
            .scrollContentBackground(.hidden)
    }
}




func verifAcc(accInfo: [String]) -> Bool {
    return true
}


//extension Color {
//    static let lightShadow = Color(red: 255 / 255, green: 255 / 255, blue: 255 / 255)
//    static let darkShadow = Color(red: 163 / 255, green: 177 / 255, blue: 198 / 255)
//    static let background = Color(red: 224 / 255, green: 229 / 255, blue: 236 / 255)
//    static let neumorphictextColor = Color(red: 132 / 255, green: 132 / 255, blue: 132 / 255)
//}
