

import Foundation
import SwiftUI

struct RatingRowComponent: UIComponent {
    
    let uiModel: RatingRowUIModel
    
    let id = UUID()
    
    func render() -> AnyView {
        RatingView(rating: .constant(uiModel.rating)).toAnyView()
    }
    
}
