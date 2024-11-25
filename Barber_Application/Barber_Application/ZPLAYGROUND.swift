//import SwiftUI
//
//struct ContentView: View {
//    
//    @State private var path: [Fruit] = []
//        
//    var body: some View {
//        Text("asdfasdaf")
//        
//        Rectangle()
////        NavigationStack(path: $path) {
////            List {
////                NavigationLink(Fruit.apple.name, value: Fruit.apple)
////                NavigationLink(Fruit.orange.name, value: Fruit.orange)
////                NavigationLink(Fruit.banana.name, value: Fruit.banana)
////            }
////            .navigationTitle("Fruits")
////            .navigationDestination(for: Fruit.self) { fruit in
////                FruitView(fruit: fruit) { nextFruit in
////                    NavigationLink(value: nextFruit) {
////                        Text("Next is \(nextFruit.name)")
////                            .foregroundColor(.accentColor)
////                    }
////                    .buttonStyle(.plain)
////                }
////                .navigationBarBackButtonHidden()
////                .toolbar {
////                    ToolbarItem(placement: .navigationBarLeading) {
////                        Button {
////                            goBack()
////                        } label: {
////                            Image(systemName: "chevron.left")
////                        }
////                        
////                    }
////                }
////            }
////        }
//    }
//
//    func goBack() {
//        _ = path.popLast()
//    }
//}
////
//enum Fruit: String, Hashable, CaseIterable {
//    case banana = "🍌"
//    case orange = "🍊"
//    case peach = "🍑"
//    case apple = "🍎"
//    
//    static var random: Self {
//        Self.allCases.randomElement()!
//    }
//    
//    var color: Color {
//        switch self {
//        case .banana:
//            return .yellow
//        case .orange:
//            return .orange
//        case .peach:
//            return .pink
//        case .apple:
//            return .red
//        }
//    }
//    
//    var name: String {
//        switch self {
//        case .banana:
//            return "Banana"
//        case .orange:
//            return "Orange"
//        case .peach:
//            return "Peach"
//        case .apple:
//            return "Apple"
//        }
//    }
//}
//extension Fruit: Identifiable {
//    var id: String { self.rawValue }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
//
//struct FruitView<Link: View>: View {
//    let fruit: Fruit
//    var nextLink:  ((Fruit) -> Link)? = nil
//    
//    var body: some View {
//        ZStack {
//            fruit.color.opacity(0.2).ignoresSafeArea(.all)
//            VStack {
//                Text(fruit.rawValue)
//                    .font(.system(size: 100))
//                    .padding()
//                nextLink?(Fruit.random)
//            }
//        }
//        .navigationTitle("\(fruit.name)")
//    }
//}
