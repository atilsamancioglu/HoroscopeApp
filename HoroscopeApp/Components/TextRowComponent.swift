

import Foundation
import SwiftUI

struct TextRowComponent: UIComponent {
    
    let id: UUID = UUID()
    
    let uiModel: TextRowUIModel
    
    func render() -> AnyView {
        Text(uiModel.text)
            .padding()
            .toAnyView()
    }
    
}

