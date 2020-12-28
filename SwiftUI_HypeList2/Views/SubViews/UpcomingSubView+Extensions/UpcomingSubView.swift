import SwiftUI

struct UpcomingSubView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    @State var isShowingCreateView: Bool = false
    //™•••••••••••••••••••••••••••••••••••«
    @ObservedObject var data = DataController.shared
    ///™«««««««««««««««««««««««««««««««««««
    
    var body: some View {
        
        //.............................
        ScrollView {
            
            // MARK: -∆  VStack  '''''''''''''''''''''
            VStack {
                
                // MARK: -∆  Text("Upcoming!")  '''''''''''''''''''''
                if data.hypedEvents.count == 0 {
                    //∆..........
                    Text("Nothing upcoming at the moment...🤷🏾‍♂️\n" +
                            "Create a new event or checkout the discover tab")
                        .bold()
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 8)
                    //∆..........
                } else {
                    //∆..........
                    ForEach(data.hypedEvents) { event in
                        //∆..........
                        // MARK: -∆  HypedEventTileSubView  '''''''''''''''''''''
                       HypedEventTileCellSubView(hypedEvent: event)
                        .padding(.top, 15)
                    }
                }
                // ∆ END OF: if-else
                
            }
            // ∆ END OF: VStack
            .navigationTitle("Upcoming")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: newButtonComponent)
        }
        /// ∆ END OF PARENT: ScrollView
        //.............................
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: UpcomingSubView

/// ™•••••••••••••••••••••••••••• ([ Preview ]) ••••••••••••••••••••••••••••™

// MARK: - Preview
struct UpcomingSubView_Previews: PreviewProvider {
    ///™«««««««««««««««««««««««««««««««««««
    static let t = HypedEventModel()
    ///™«««««««««««««««««««««««««««««««««««
    
    static var previews: some View {
        
        Group {
            
            NavigationView {
                UpcomingSubView(data: DataController.shared)
            }
//            NavigationView {
//                UpcomingSubView(
//                    hypedEvents: [])
//            }
        }
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}
/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
