import SwiftUI

struct ImagePickerButtonSubView: View {
    /// MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    @StateObject var hypeEvent: HypedEventModel
    @State var showImagePicker: Bool = false
    //™•••••••••••••••••••••••••••••••••••«
    
    ///™«««««««««««««««««««««««««««««««««««
    
    // MARK: -∆  body •••••••••
    var body: some View {
        
        if hypeEvent.imageComponent() == nil {
            //∆..........
            HStack {
                
                FormLabelView(text: "Image",
                              sfSymbolImage: "camera",
                              fgColorForImage: .purple,
                              imageFrameBgColor: .white)
                
                ///ººº..................................•••
                Spacer(minLength: 0) // Spaced Horizontally
                ///ººº..................................•••
                
                // MARK: -∆  pickImageProperty  '''''''''''''''''''''
                pickImgComputedProperty
            }
            /// ∆ END OF: HStack
            
        } else {
            //∆..........
            HStack {
                
                FormLabelView(text: "Image",
                              sfSymbolImage: "camera",
                              fgColorForImage: .purple,
                              imageFrameBgColor: .white)
                
                ///ººº..................................•••
                Spacer(minLength: 0) // Spaced Horizontally
                ///ººº..................................•••
                
                // MARK: -∆  removeImgComputedProperty  '''''''''''''''
                removeImgComputedProperty
                
            }
            // ∆ END OF: HStack
            
            // MARK: -∆  Shows Image if not = nil  '''''''''''''''''''''
            showImageIfNotNilComputedProperty
        }
        /// ∆ END OF: if-else
    }
    /// ∆ END OF: body
}
// MARK: END OF: ImagePickerButtonSubView

/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••

/// ™•••••••••••••••••••••••••••• ([ Preview ]) ••••••••••••••••••••••••••••™

// MARK: - Preview
struct ImagePickerButtonSubView_Previews: PreviewProvider {
    ///™«««««««««««««««««««««««««««««««««««
    static let t = HypedEventModel()
    ///™«««««««««««««««««««««««««««««««««««
    
    static var previews: some View {
        
        ImagePickerButtonSubView(hypeEvent: t.TEST_HYPED_EVENT1)
        //.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
