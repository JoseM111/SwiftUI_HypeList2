import SwiftUI

// MARK: -∆  EXTENSION OF: [( UpcomingSubView )] •••••••••

extension UpcomingSubView {
    
    // MARK: @------- [Computed some-View Properties] -------
    
    // ™ œœœœœ[ Button(New) ]œœœœœœœœœœœœœœœ
    var newButtonComponent: some View {
        //∆..........
        Button(action: { isShowingCreateView.toggle() }) {
            //∆..... LABEL .....
            Image(systemName: "calendar.badge.plus")
                .imageSFFormattedFrame(bgColor: .white, cornerR: 6)
                .cornerRadius(9)
                .modifier(
                    TextShadowModifier(
                        systemFontSize: 28,
                        systemFontWeight: .semibold,
                        fgColor: .netflixRed,
                        shadowColor: Color.gray.opacity(0.6),
                        shadow_Radius_AxisPoint: 5,
                        shadow_X_AxisPoint: 2,
                        shadow_Y_AxisPoint: 5)
                )
        }
        .padding(.trailing, 20)
        // ∆ END OF: Button
        // MARK: - sheet
        //--|............................................
        .sheet(isPresented: $isShowingCreateView) {
            //∆..........
            CreateHypedEventView()
        }
        //--|............................................
        .accentColor(.twitterBlue2)
        //∆ HANGER ™👕™ .................
    }
    /// ∆ END OF: newButtonComponent
}
// MARK: END OF: UpcomingSubView
