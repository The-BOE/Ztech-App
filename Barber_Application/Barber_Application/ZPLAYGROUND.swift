//import SwiftUI
//
//struct UpcomingAppointment: View {
//    @State private var pendOrApp: String = "Approved"
//    @EnvironmentObject var pendingArrayModel: PendingArrayModel
//    @EnvironmentObject var clientArrayModel: ClientArrayModel
//    @State private var showApp = false
//    let s = ["Approved", "Pending"]
//    
//    var body: some View {
//        Section {
//            if pendOrApp == "Pending" {
//                ForEach(pendingArrayModel.pendingArray, id: \.self) { client in
//                    ClientRow(client: client)
//                }
//            } else if pendOrApp == "Approved" {
//                ForEach(clientArrayModel.clientArray.suffix(from: 1), id: \.self) { client in
//                    ClientRow(client: client)
//                }
//                .id(clientArrayModel.clientArray) // Ensure list refreshes
//            }
//        } header: {
//            Text("Upcoming Appointments")
//                .foregroundColor(.white)
//                .padding(.leading, 20)
//        } footer: {
//            Picker(selection: $pendOrApp, label: Text("Data")) {
//                ForEach(s, id: \.self) { option in
//                    Text(option)
//                        .rotationEffect(Angle(degrees: 90))
//                }
//            }
//            .pickerStyle(SegmentedPickerStyle())
//        }
//    }
//}
//
//struct ClientRow: View {
//    let client: clientData
//    
//    var body: some View {
//        VStack(alignment: .leading) {
//            Text(client.name)
//                .font(.system(size: 15))
//                .bold()
//            Text("@Sacramento")
//                .font(.system(size: 13))
//                .foregroundColor(.orange)
//                .italic()
//        }
//        .padding()
//        .swipeActions {
//            Button(role: .destructive) {
//                // Add deletion logic here
//            } label: {
//                Label("Delete", systemImage: "trash")
//            }
//        }
//    }
//}
//
//#Preview{
//    UpcomingAppointment()
//        .environmentObject(ClientArrayModel())
//}
//
////struct UpcomingAppointment_Previews: PreviewProvider {
////    static var previews: some View {
////        let clientArrayModel = ClientArrayModel()
////        let pendingArrayModel = PendingArrayModel()
////        
////        return UpcomingAppointment()
////            .environmentObject(clientArrayModel)
////            .environmentObject(pendingArrayModel)
////    }
////}
////
//
