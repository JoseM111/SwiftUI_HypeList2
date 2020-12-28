import SwiftUI

/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••

struct GenericTxtShadowSubView: View {
    /// MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    var text: String = currentDate(date: Date())
    var sysFontSize: CGFloat = 20
    var sysFontWeight: Font.Weight = .regular
    var fgColor: Color = .flowerRed
    var shadowColor: Color = Color.black.opacity(0.35)
    ///™«««««««««««««««««««««««««««««««««««
    
    // MARK: -∆  body •••••••••
    var body: some View {
        Text(text)
            .modifier(
                TextShadowModifier(
                    systemFontSize: sysFontSize, systemFontWeight: sysFontWeight,
                    fgColor: fgColor, shadowColor: shadowColor,
                    shadow_Radius_AxisPoint: 4, shadow_X_AxisPoint: 1,
                    shadow_Y_AxisPoint: 5))
    }
}
// MARK: END OF: GenericTxtShadowSubView

/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
