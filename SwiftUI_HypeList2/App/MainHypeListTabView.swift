import SwiftUI

struct MainHypeListTabView: View {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    
    //™•••••••••••••••••••••••••••••••••••«
    
    ///™«««««««««««««««««««««««««««««««««««
    
    // MARK: -∆  body •••••••••
    var body: some View {
        
        //.............................
        Group {
            
            TabView {
                
                NavigationView {
                    
                    UpcomingSubView()
                }
                    // ∆ END OF: NavigationView
                    .tabItem {
                        Image(systemName: "calendar")
                        Text("Upcoming")
                    }
                //∆ HANGER ™👕™ .................
                
                Text("Placeholder #2")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Discover")
                    }
                
                Text("Placeholder #3")
                    .tabItem {
                        Image(systemName: "gobackward")
                        Text("Past")
                    }
            }
            /// ∆ END OF: TabView
        }
        // MARK: ||END__PARENT-Group||
        //.............................
        
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: MainHypeListTabView

/// @•••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••••
// MARK: Helper Function
func iAmHere(myStr: String) -> some View {
    return Button(action: {  }) {
        //∆..... LABEL .....
        Text("\(myStr)")
            .fixedSize(horizontal: false, vertical: true)
    }
    .buttonStyle(PrimaryButtonStyle(paddingAll: 20, bgColorAlt: .netflixRed,
                                    bgColor: .netflixRed, w: 200))
    .animation(.spring())
}

/// ™•••••••••••••••••••••••••••• ([ Preview ]) ••••••••••••••••••••••••••••™

// MARK: - Preview
struct MainHypeListTabView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MainHypeListTabView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

