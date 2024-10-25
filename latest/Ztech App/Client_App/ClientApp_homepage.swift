import SwiftUI



struct clientView: View {
    
    @StateObject var data = GridViewMode()
    @State var selected = ""
    @State var show = false
    @State var disabledButtons = false
    @State var detailHeight: Double = 400.0
    @State var showBooking = false
    @State var showHistory = false
    @State var showAppointment = false
    @State var selectDate: Date = Date()
    @State var theMonth = 0
    @State var dateofdate: Date = Date()
    @State var showCancel_Bool = false
    @State var appBooked = true
    @State private var chan: Int = 0
    
    @State private var path = NavigationPath()
    
    var amColor = Color(red:134/255, green: 171/255, blue: 247/255)
    var pmColor = Color(red:134/255, green: 171/255, blue: 247/255)
    var todaysDate = Date()
    var apps = appData
    
    var body: some View {
//        let screenSize: CGRect = UIScreen.main.bounds
//        let screenWidth = screenSize.width
//        var screenHeight = screenSize.height
        
        NavigationView {
            
                List{
                    
                    
                    Section{} header: {
                        VStack (alignment: .leading, spacing: 1){
                            
                            HStack(alignment: .center) {
                                HStack{
                                    Image(systemName: "person.fill")
                                        .modifier(CustomTextModifier(size: 15, color: .white))
                                        .bold()
                                    
                                    Text("Zachary Iyasere")
                                        .modifier(CustomTextModifier(size: 20, color: .white))
                                        .bold()
                                        .padding(.leading, -5)
                                }
//                                .padding(5)
                                
                                
                                Spacer()
                                
                                
                                Text("Joined 2014")
                                    .modifier(CustomTextModifier(size: 11, color: .white))
                                    .bold()
                                    .italic()
                            }
//                            .background(.blue)
//                            .cornerRadius(10)
                            
                            
                            
                            HStack(alignment: .bottom) {
                                HStack{
                                    Image(systemName: "phone.fill")
                                        .modifier(CustomTextModifier(size: 10, color: .white))
                                        .bold()
                                    
                                    Text("(916)896-9789")
                                        .modifier(CustomTextModifier(size: 13, color: .white))
                                        .bold()
                                        .padding(.leading, -6)
                                }
                                
                                Spacer()
                                
                                Text("347")
                                    .modifier(CustomTextModifier(size: 13, color: .green))
                                    .bold()
                            }
                            .padding(.top, 5)
                            
                            
                            
                            
                            HStack {
                                HStack(alignment: .top){
                                    Image(systemName: "mappin.and.ellipse")
                                        .modifier(CustomTextModifier(size: 10, color: .white))
                                        .bold()
                                    
                                    Text("Sacramento, CA")
                                        .modifier(CustomTextModifier(size: 13, color: .white))
                                        .bold()
                                        .padding(.leading, -6)
                                }
                                
                                Spacer()
                                
                                Text("12")
                                    .modifier(CustomTextModifier(size: 13, color: .red))
                                    .bold()
                            }
                            
                        }
                    }.listRowInsets(.init(top: 20, leading: 10, bottom: 0, trailing: 10))
                        .listSectionSpacing(.custom(30))
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Section{
                        
                        HStack{
                            Image(systemName: "book.closed")
                                .modifier(CustomTextModifier(size: 17, color: .blue))
                                .bold()
                            
                            Text("Book An Appointment")
                                .modifier(CustomTextModifier(size: 17, color: .blue))
                                .bold()
                        }
                        .background(
                            NavigationLink("", destination: BookAppointmentView().navigationBarBackButtonHidden(true))
                                .opacity(0)
                        )
                        .frame(maxWidth: .infinity)
                        
                    }header: {
                        Text("Appointments")
                            .modifier(CustomTextModifier(size: 15, color: .white))
                            .bold()
//
                    }
                    .listRowInsets(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
                    .listSectionSpacing(.custom(10))
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
//                    if appBooked {
                        Section{
                            
                            VStack(alignment: .leading){
                                Text("Next Appointment")
                                    .modifier(CustomTextModifier(size: 13, color: .white)).bold()
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                
                                HStack{
                                    Text("Monday")
                                        .modifier(CustomTextModifier(size: 25, color: .white))
                                        .bold()
                                    //                                            .frame(maxWidth: .infinity, alignment: .leading)
                                    
                                    Spacer()
                                    
                                    Text("3:00 AM")
                                        .modifier(CustomTextModifier(size: 20, color: .white))
                                        .bold()
                                }
                                .frame(maxWidth: .infinity, alignment: .leading)
                                .padding(.bottom, -1)
                                
                                
                                
                                
                                HStack {
                                    
                                    
                                    
                                    VStack (alignment: .leading){
                                        HStack {
//                                            Image(systemName: "calendar")
//                                                .modifier(CustomTextModifier(size: 15, color: .white))
//                                                .bold()
                                            
                                            Text("May 20, 2024")
                                                .modifier(CustomTextModifier(size: 15, color: .white))
                                                .bold()
                                        }
                                        
                                        
                                        HStack {
//                                            Image(systemName: "mappin.and.ellipse")
//                                                .modifier(CustomTextModifier(size: 14, color: .red))
//                                                .padding(.leading, -5)
                                            
                                            Text("Hayward, CA")
                                                .modifier(CustomTextModifier(size: 15, color: .white))
                                                .bold()
                                        }
                                    }
                                    
                                    Spacer()
                                    
                                    
                                    
                                    HStack{
                                        Image(systemName: "dollarsign")
                                            .padding(.trailing, -8)
                                            .modifier(CustomTextModifier(size: 18, color: .green))
                                            .bold()
                                        
                                        Text("30")
                                            .modifier(CustomTextModifier(size: 20, color: .green))
                                            .bold()
                                    }
                                    
                                }
                                .padding(.top, 3)
                            }
                            .navigationBarBackButtonHidden(true)
                            .navigationBarHidden(true)
                            .background(
                                NavigationLink("",
                                               destination: BookAppointmentView().navigationBarBackButtonHidden(true)
                                              )
                                .opacity(0)
                            )
                            
                        }
                    .listSectionSpacing(.custom(20))
//                    }
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Section{
                        HStack{
                            Image(systemName: "calendar")
                                .modifier(CustomTextModifier(size: 20, color: .blue))
                            
                            Text("Show Full History")
                                .modifier(CustomTextModifier(size: 17, color: .blue))
                                .bold()
                        }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    } header: {
                        Text("Cut History")
                            .modifier(CustomTextModifier(size: 15, color: .white))
                            .bold()
                            .padding(.bottom, -10)
                    }.listRowInsets(.init(top: 0, leading: 5, bottom: 0, trailing: 5))
                        .listSectionSpacing(10)
                    
                    
                    Section{
                        VStack(alignment: .leading){
                            Text("Recent appointment")
                                .foregroundColor(.white)
                                .font(.system(size: 13)).bold()
                                .frame(maxWidth: .infinity, alignment: .leading)
                            VStack {
                                HStack {
                                    Text("Feb 3, 2024")
                                        .foregroundColor(.white)
                                        .font(.system(size: 20)).bold()
                                    
                                    Spacer()
                                    
                                    Text("2:45PM")
                                        .foregroundColor(.white)
                                        .font(.system(size: 17)).bold()
                                }
                                
                                Text("Booked Dec 23, 2023")
                                    .modifier(CustomTextModifier(size: 11, color: .gray))
                                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                    .italic()
                            }
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }.listSectionSpacing(15)
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    
                    Section{
                        ForEach(0...3, id: \.self){ _ in
                            VStack(alignment: .leading){
                                
                                HStack {
                                    VStack(alignment: .leading) {
                                        HStack {
//                                            Image(systemName: "calendar")
//                                                .modifier(CustomTextModifier(size: 14, color: .white))
                                            
                                            Text("Mar 20, 2023")
                                                .modifier(CustomTextModifier(size: 15, color: .white))
                                                .bold()
                                        }
                                        
                                        
                                            
                                            Text("Sacramento, CA")
                                                .modifier(CustomTextModifier(size: 11, color: .green))
                                                .bold()
                                                .italic()
                                                
                                        
                                        
                                        Text("Booked Aug 3, 2019")
                                            .modifier(CustomTextModifier(size: 11, color: .gray))
                                            .italic()
//                                            .padding(.top, 1)
                                    }
                                    
                                    Spacer()
                                    
                                    HStack {
//                                        Image(systemName: "clock.fill")
//                                            .modifier(CustomTextModifier(size: 9, color: .white))
                                        
                                        
                                        Text("4:45PM")
                                            .modifier(CustomTextModifier(size: 15, color: .white))
                                            .bold()
                                    }
                                    
                                    
                                }
                            }
                            .frame(maxHeight: 60)
                        }.listRowInsets(.init(top: 10, leading: 15, bottom: 10, trailing: 15))
                    }
                }
                .scrollIndicators(.hidden)
                .navigationBarBackButtonHidden()
                .edgesIgnoringSafeArea(.bottom)
                .onTapGesture {
                    if showAppointment && !showCancel_Bool{
                        withAnimation{
                            self.detailHeight = 400.0
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                                showAppointment.toggle()
                                disabledButtons.toggle()
                                selected = ""
                                
                                // Put any code you want to be delayed here
                            }
                        }
                    }
                }
            
        }
    }
    
    
    
    
}
/* APPLICATION CHECKLIST
 
 
 */

struct client_Preview: PreviewProvider {
    static var previews: some View {
        clientView()
    }
}
