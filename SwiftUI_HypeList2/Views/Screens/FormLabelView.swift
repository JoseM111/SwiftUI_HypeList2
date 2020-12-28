import SwiftUI

struct FormLabelView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    let text, sfSymbolImage: String
    let fgColorForImage: Color
    var imageFrameBgColor: Color = .black
    ///™«««««««««««««««««««««««««««««««««««
    
    
    var body: some View {
        
        Label(title: {
            //∆..........
            Text(text)
                .modifier(
                    TextShadowModifier(
                        systemFontSize: 17,
                        systemFontWeight: .semibold,
                        fgColor: Color.primary.opacity(0.6),
                        shadowColor: Color.black.opacity(0.35),
                        shadow_Radius_AxisPoint: 1,
                        shadow_X_AxisPoint: 3,
                        shadow_Y_AxisPoint: 2.5)
                )
            //∆..........
        }, icon: {
            //∆..........
            Image(systemName: sfSymbolImage)
                .imageSFFormattedFrame(paddingForFrame: 1,
                                       bgColor: imageFrameBgColor, cornerR: 4)
                .font(.system(size: 20, weight: Font.Weight.bold))
                .aspectRatio(contentMode: .fit)
                .modifier(
                    TextShadowModifier(
                        systemFontSize: 20,
                        systemFontWeight: .semibold,
                        fgColor: fgColorForImage,
                        shadowColor: Color.gray.opacity(0.8),
                        shadow_Radius_AxisPoint: 2,
                        shadow_X_AxisPoint: 2,
                        shadow_Y_AxisPoint: 2.5)
                )
        })
        .padding(.leading, 5)
        /// ∆ END OF: Label
    }
    // ∆ END OF: body
}
/// ∆ END OF: LabelSubView

// MARK: - Preview
struct FormLabelView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        FormLabelView(text: "Title", sfSymbolImage: "keyboard",
                     fgColorForImage: .skyPink)
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 440, height: 170))
    }
}
