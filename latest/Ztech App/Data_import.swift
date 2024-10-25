import SwiftUI
//
struct client: Identifiable{
    var id = UUID().uuidString
    var name: String
    var email: String
    var phone_number: String
    var password: String
    var join_city: String
    
    var join_date: String
    
    var completed_appointments: Int
    var missed_appointments: Int
    var cancelled_appointments: Int
}
//
//
class dataPort: ObservableObject{
    @Published var clients: [client] = []
}
 
