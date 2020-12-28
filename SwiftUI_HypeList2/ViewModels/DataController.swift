import SwiftUI

import SwiftUI

class DataController: ObservableObject {
    // MARK: - ™PROPERTIES™
    ///™«««««««««««««««««««««««««««««««««««
    static var shared = DataController()
    //™•••••••••••••••••••••••••••••••••••«
    @Published var hypedEvents: [HypedEventModel] = []
    ///™«««««««««««««««««««««««««««««««««««
}
// MARK: END OF: HypedDataViewModel

