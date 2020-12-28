import SwiftUI

// MARK: -∆  EXTENSION OF: [( ImagePickerButtonSubView )] •••••••••

extension ImagePickerButtonSubView {
    
    // MARK: @------- [Computed some-View Properties] -------
    
    var pickImgComputedProperty: some View {
        //∆..........
        Button(action: { showImagePicker = true }) {
            //∆..... LABEL .....
            Text("Pick Image")
                .modifier(
                    TextShadowModifier(
                        systemFontSize: 15,
                        systemFontWeight: .semibold,
                        fgColor: .white,
                        shadowColor: Color.black.opacity(0.15),
                        shadow_Radius_AxisPoint: 1,
                        shadow_X_AxisPoint: 3,
                        shadow_Y_AxisPoint: 2.5)
                )
        }
        /// ∆ END OF: Button
        //--|............................................
        .sheet(isPresented: $showImagePicker) {
            //∆..........
            ImagePicker(imageData: $hypeEvent.imageData)
        }
        .buttonStyle(
            PrimaryButtonStyle(
                paddingAll: 6, bgColorAlt: .clear,
                bgColor: .twitterBlue2, w: 120, h: 50)
        )
        .modifier(
            TextShadowModifier(
                systemFontSize: 15, systemFontWeight: .semibold,
                fgColor: .white,
                shadowColor: Color.black.opacity(0.15),
                shadow_Radius_AxisPoint: 1, shadow_X_AxisPoint: 3,
                shadow_Y_AxisPoint: 4.5)
        )
        //--|............................................
        
        
    }
    /// ∆ END OF: pickImageProperty
    
    var removeImgComputedProperty: some View {
        //∆..........
        Button(action: { hypeEvent.imageData = nil }) {
            //∆..... LABEL .....
            Text("Remove Image")
                .modifier(
                    TextShadowModifier(
                        systemFontSize: 15,
                        systemFontWeight: .semibold,
                        fgColor: .white,
                        shadowColor: Color.black.opacity(0.15),
                        shadow_Radius_AxisPoint: 1,
                        shadow_X_AxisPoint: 3,
                        shadow_Y_AxisPoint: 2.5)
                )
        }
        /// ∆ END OF: Button
        //--|............................................
        .sheet(isPresented: $showImagePicker) {
            //∆..........
            ImagePicker(imageData: $hypeEvent.imageData)
        }
        .buttonStyle(
            PrimaryButtonStyle(
                paddingAll: 6, bgColorAlt: .clear,
                bgColor: .netflixRed, w: 120, h: 50)
        )
        .modifier(
            TextShadowModifier(
                systemFontSize: 15,
                systemFontWeight: .semibold,
                fgColor: .white,
                shadowColor: Color.black.opacity(0.15),
                shadow_Radius_AxisPoint: 1,
                shadow_X_AxisPoint: 3,
                shadow_Y_AxisPoint: 4.5)
        )
        //--|............................................
    }
    /// ∆ END OF: removeImgComputedProperty
    
    var showImageIfNotNilComputedProperty: some View {
        //∆..........
        hypeEvent.imageComponent()?
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
    /// ∆ END OF: showImageIfNotNilComputedProperty
}
// MARK: END OF: ImagePickerButtonSubView
