import SwiftUI

struct UpcomingSubView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    @State var isShowingCreateView: Bool = false
    ///™«««««««««««««««««««««««««««««««««««
    
    var body: some View {
        
        //.............................
        Text("Upcoming!")
            .navigationTitle("Upcoming")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: newButtonComponent)
        //.............................
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: UpcomingSubView

/// ™•••••••••••••••••••••••••••• ([ Preview ]) ••••••••••••••••••••••••••••™

// MARK: - Preview
struct UpcomingSubView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        NavigationView {
            UpcomingSubView()
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
