import SwiftUI

struct CreateHypedEventView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    @Environment(\.presentationMode) var mode
    @StateObject var hypeEvent = HypedEventModel()
    @State private var showTime: Bool = false
    //™•••••••••••••••••••••••••••••••••••«
    var arrayOfDateHrsMin: DatePickerComponents = [.date, .hourAndMinute]
    ///™«««««««««««««««««««««««««««««««««««
    
    var body: some View {
        
        //.............................
        NavigationView {
            
            Form {
                
                // MARK: -∆ Label(Title) * Input(Family Vacation) '''''''''''''''''''''
                Section {
                    
                    HStackLabelTxtFieldSubView(
                        labelTitle: "Title", sfSymbolImage: "keyboard",
                        fgColorForImage: .netflixRed,
                        txtFieldStr: "",
                        strBindingText: $hypeEvent.title)
                }
                // ∆ END OF: Section
                //∆.....................................................
                
                // MARK: -∆ Label(Date) * Date-Picker  '''''''''''''''''''''
                Section {
                    //∆..........
                    DatePicker("Date", selection: $hypeEvent.date,
                               displayedComponents: showTime ? arrayOfDateHrsMin : [.date])
                        .datePickerStyle(GraphicalDatePickerStyle())
                    
                    Toggle(isOn: $showTime) {
                        //∆..........
                        FormLabelView(text: "Date",
                                      sfSymbolImage: "calendar",
                                      fgColorForImage: .twitterBlue2,
                                      imageFrameBgColor: .white)
                    }
                }
                // ∆ END OF: Section
                //∆.....................................................
                
                // MARK: -∆  Button(Custom-Image-Picker)  '''''''''''''''''''''
                Section {
                    
                    ImagePickerButtonSubView(hypeEvent: hypeEvent)
                }
                // ∆ END OF: Section
                
                // MARK: -∆  ColorPicker  '''''''''''''''''''''
                Section {
                    //∆..........
                    ColorPicker(selection: $hypeEvent.color) {
                        //∆..........
                        FormLabelView(text: "Color Picker",
                                      sfSymbolImage: "eyedropper",
                                      fgColorForImage: .yellow,
                                      imageFrameBgColor: .white)
                    }
                }
                // ∆ END OF: Section
                //∆.....................................................
                
                // MARK: -∆ Label(URL) * Input(URL)  '''''''''''''''''''''
                Section {
                    //∆..........
                    HStackLabelTxtFieldSubView(
                        labelTitle: "URL", sfSymbolImage: "link",
                        fgColorForImage: .neonOrange,
                        txtFieldStr: "Website",
                        strBindingText:  $hypeEvent.url)
                }
                // ∆ END OF: Section
                //∆.....................................................
            }
            // ∆ END OF: Form
            .navigationBarItems(leading: cancelBtnComponent, trailing: doneBtnComponent)
            .navigationTitle("Create")
        }
        // MARK: ||END__PARENT-NavigationView||
        //.............................
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: CreateHypedEventView

/// ™•••••••••••••••••••••••••••• ([ Preview ]) ••••••••••••••••••••••••••••™

// MARK: - Preview
struct CreateHypedEventView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CreateHypedEventView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}
/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••


/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
// MARK: -∆  EXTENSION OF: [( CreateHypedEventView )] •••••••••

extension CreateHypedEventView {
    
    // MARK: @------- [Computed some-View Properties] -------
    
    // ™ œœœœœ[ cancelBtnComponent ]œœœœœœœœœœœœœœœ
    var cancelBtnComponent: some View {
        //∆..........
        /// mode.wrappedValue.dismiss(): Will `dismiss`
        /// the sheet when the `button` is `pressed`
        Button(action: { mode.wrappedValue.dismiss() }) {
            //∆..... LABEL .....
            Text("Cancel")
        }
        
        
    }
    /// ∆ END OF: cancelBtnComponent
    
    // ™ œœœœœ[ doneBtnComponent ]œœœœœœœœœœœœœœœ
    var doneBtnComponent: some View {
        //∆..........
        Button(action: {
            /// ™ Adding a new event to the app
            DataController.shared.hypedEvents.append(hypeEvent)
            /// ™ Once the new event is added, it will dismiss the sheet
            mode.wrappedValue.dismiss()
        }) {
            //∆..... LABEL .....
            Text("Done")
        }
        
        
    }
    /// ∆ END OF: doneBtnComponent
    
}
// MARK: END OF: CreateHypedEventView

/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
