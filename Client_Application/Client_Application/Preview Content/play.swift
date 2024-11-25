//
//  play.swift
//  Client Application 2
//
//  Created by user on 10/27/24.
//

import SwiftUI

struct ContentView: View {
    @State var selectedDate = Date()

    var body: some View {
        NavigationView {
            VStack {
                MonthView(selectedDate: $selectedDate)
                Divider()
                DayView(selectedDate: selectedDate)
                Spacer()
            }
            .navigationBarTitle("Calendar")
        }
    }
}

struct MonthView: View {
    @Binding var selectedDate: Date
    var days: [Date] = generateDatesForMonth(date: Date())

    var body: some View {
        VStack {
            Text(monthTitle(for: selectedDate))
                .font(.headline)
            HStack {
                ForEach(["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"], id: \.self) { day in
                    Text(day)
                        .font(.subheadline)
                        .frame(maxWidth: .infinity)
                }
            }
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 7)) {
                ForEach(days, id: \.self) { day in
                    Text("\(Calendar.current.component(.day, from: day))")
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .padding()
                        .background(Calendar.current.isDate(day, inSameDayAs: selectedDate) ? Color.blue.opacity(0.3) : Color.clear)
                        .cornerRadius(8)
                        .onTapGesture {
                            selectedDate = day
                        }
                }
            }
            .padding(.top)
        }
    }

    private func monthTitle(for date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM yyyy"
        return formatter.string(from: date)
    }

    static func generateDatesForMonth(date: Date) -> [Date] {
        var dates: [Date] = []
        let calendar = Calendar.current
        let range = calendar.range(of: .day, in: .month, for: date)!
        let components = calendar.dateComponents([.year, .month], from: date)
        let startOfMonth = calendar.date(from: components)!

        for day in range {
            if let date = calendar.date(byAdding: .day, value: day - 1, to: startOfMonth) {
                dates.append(date)
            }
        }
        return dates
    }
}

struct DayView: View {
    var selectedDate: Date
    @State private var events = ["Meeting with Team", "Lunch with Alex", "Dentist Appointment"]

    var body: some View {
        VStack(alignment: .leading) {
            Text("Events for \(formattedDate(selectedDate))")
                .font(.headline)
            List(events, id: \.self) { event in
                Text(event)
            }
        }
        .padding()
    }

    private func formattedDate(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        return formatter.string(from: date)
    }
}


#Preview{
    ContentView()
}
