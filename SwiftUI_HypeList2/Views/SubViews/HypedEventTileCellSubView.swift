import SwiftUI

struct HypedEventTileCellSubView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    var hypedEvent: HypedEventModel
    let date: String = currentDate(date: Date())
    let colorWithOpacity: Color = Color.black.opacity(0.35)
    //™•••••••••••••••••••••••••••••••••••«
    ///™«««««««««««««««««««««««««««««««««««
    
    
    var body: some View {
        
        //.............................
        VStack(alignment: .center, spacing: 0, content: {
            
            // MARK: -∆  Image  '''''''''''''''''''''
            if hypedEvent.imageComponent() != nil {
                //∆..........
                hypedEvent.imageComponent()?
                    .imageFormattedFrame(.fit, w: FULL_UI_SCREEN_WIDTH, h: 220)
                //∆..........
            }
            // ∆ END OF: if-statement
            
            // MARK: -∆  Rectangle-Line  '''''''''''''''''''''
            Rectangle().foregroundColor(.netflixRed)
                .frame(height: 15)
            
            // MARK: -∆  Title  '''''''''''''''''''''
            HStack {
                
                Text(hypedEvent.title)
                    .bold()
                    .font(.title)
                
                ///ººº..................................•••
                Spacer(minLength: 0) // Spaced Horizontally
                ///ººº..................................•••
            }
            // ∆ END OF: HStack
            .padding(10)
            .padding(.leading, 10)
            
            // MARK: -∆  Date '''''''''''''''''''''
            HStack {
                
                Image(systemName: "calendar")
                    .modifier(TextShadowModifier(
                                systemFontSize: 18, systemFontWeight: .semibold,
                                fgColor: .netflixRed,
                                shadowColor: colorWithOpacity,
                                shadow_Radius_AxisPoint: 4, shadow_X_AxisPoint: 1,
                                shadow_Y_AxisPoint: 5))
                
                GenericTxtShadowSubView(text: date, sysFontSize: 15,
                                        sysFontWeight: .semibold,
                                        fgColor: .lightBlack,
                                        shadowColor: colorWithOpacity)
                
                
                ///ººº..................................•••
                Spacer(minLength: 0) // Spaced Horizontally
                ///ººº..................................•••
                
                GenericTxtShadowSubView(text: "Next Event: \(hypedEvent.dateAsStr)",
                                        sysFontSize: 15,
                                        sysFontWeight: .semibold,
                                        fgColor: .twitterBlue2,
                                        shadowColor: colorWithOpacity)
                
                Image(systemName: "clock.fill")
                    .modifier(TextShadowModifier(
                                systemFontSize: 18, systemFontWeight: .semibold,
                                fgColor: .lightBlack,
                                shadowColor: colorWithOpacity,
                                shadow_Radius_AxisPoint: 4, shadow_X_AxisPoint: 1,
                                shadow_Y_AxisPoint: 5))
            }
            // ∆ END OF: HStack
            .padding(.horizontal, 20)
            .font(.body)
        })
        // MARK: ||END__PARENT-VSTACK||
        .padding(.bottom, 50)
        .modifier(OuterFrameCardModifier(
                    modifierFrameWidth: 380,
                    modifierFrameHeight: 400,
                    bgColor: .white, shadowColor: .clear,
                    overlayRectStrokeColor: .black,
                    overlayRectShadowColor: .black))
        //.............................
        
    }
    // MARK: |||END OF: body|||
    
    
}
// MARK: END OF: HypedEventTileSubView

/// ™•••••••••••••••••••••••••••• ([ Preview ]) ••••••••••••••••••••••••••••™

// MARK: - Preview
struct HypedEventTileSubView_Previews: PreviewProvider {
    // MARK: - ™PROPERTY™
    ///™«««««««««««««««««««««««««««««««««««
    static let t = HypedEventModel()
    ///™«««««««««««««««««««««««««««««««««««
    
    static var previews: some View {
        
        HypedEventTileCellSubView(hypedEvent: t.TEST_HYPED_EVENT1)//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}
/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••

