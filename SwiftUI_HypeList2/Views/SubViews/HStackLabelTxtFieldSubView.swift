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
