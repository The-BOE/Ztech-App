// Barber_Application/ClientModels.swift

import Foundation
import SwiftUI

// Assuming your existing clientData struct:
struct clientData: Hashable, Codable, Identifiable {
    let id: String
    var name: String
    var email: String
    var number: String
    var joined: Date
    var joinLocation: String
    var appointmentDate: Date
    var price: Double

    init(id: String = UUID().uuidString, name: String, email: String, number: String, joined: Date, joinLocation: String, appointmentDate: Date, price: Double) {
        self.id = id
        self.name = name
        self.email = email
        self.number = number
        self.joined = joined
        self.joinLocation = joinLocation
        self.appointmentDate = appointmentDate
        self.price = price
    }

    init?(from appointment: Appointment) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd" // adjust to match backend format
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ss"

        guard let appointmentDate = dateFormatter.date(from: appointment.order.appointmentDate),
              let orderedDate = dateFormatter.date(from: appointment.order.orderedOn) else {
            return nil
        }

        self.id = appointment.order.appointmentID ?? UUID().uuidString
        self.name = appointment.user.name
        self.email = appointment.user.email
        self.number = appointment.user.phoneNumber
        self.joined = orderedDate
        self.joinLocation = "DynamoDB"
        self.appointmentDate = appointmentDate
        self.price = appointment.order.amount
    }
}


class ClientArrayModel: ObservableObject {
    @Published var clientArray: [clientData] = []

    func loadApprovedAppointments() async {
        do {
            let appointments = try await AppointmentService.shared.fetchAppointments(status: "approved")
            let converted = appointments.compactMap { clientData(from: $0) }
            DispatchQueue.main.async {
                self.clientArray = converted
            }
        } catch {
            print("Failed to load approved appointments: \(error)")
        }
    }
}

class PendingArrayModel: ObservableObject {
    @Published var pendingArray: [clientData] = []

    func loadPendingAppointments() async {
        do {
            let appointments = try await AppointmentService.shared.fetchAppointments(status: "pending")
            let converted = appointments.compactMap { clientData(from: $0) }
            DispatchQueue.main.async {
                self.pendingArray = converted
            }
        } catch {
            print("Failed to load pending appointments: \(error)")
        }
    }
}
