import SwiftUI

struct HStackLabelTxtFieldSubView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    let labelTitle, sfSymbolImage: String
    let fgColorForImage: Color
    let txtFieldStr: String
    //™•••••••••••••••••••••••••••••••••••«
    let strBindingText: Binding<String>
    ///™«««««««««««««««««««««««««««««««««««
    
    var body: some View {
        
        HStack {
            
            FormLabelView(text: labelTitle,
                          sfSymbolImage: sfSymbolImage,
                          fgColorForImage: fgColorForImage,
                          imageFrameBgColor: .white)
            
            Divider().background(Color.black)
            
            TextField(txtFieldStr, text: strBindingText)
                .autocapitalization(.words)
        }
        /// ∆ END OF: HStack
    }
    /// ∆ END OF: body
}
/// ∆ END OF: HStackLabelTxtFieldSubView

/// ™•••••••••••••••••••••••••••• ([ Preview ]) ••••••••••••••••••••••••••••™

// MARK: - Preview
struct HStackLabelTxtFieldSubView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        HStackLabelTxtFieldSubView(labelTitle: "Test",
                                   sfSymbolImage: "calendar",
                                   fgColorForImage: .netflixRed,
                                   txtFieldStr: "Placeholder",
                                   strBindingText: .constant("Plceholder"))
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 440, height: 70))
    }
}

/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
