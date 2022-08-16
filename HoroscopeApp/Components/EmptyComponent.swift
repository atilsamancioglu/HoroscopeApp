

import Foundation
import SwiftUI

struct EmptyComponent: UIComponent {
    
    let id = UUID()
    
    func render() -> AnyView {
        EmptyView().toAnyView()
    }
    
}
