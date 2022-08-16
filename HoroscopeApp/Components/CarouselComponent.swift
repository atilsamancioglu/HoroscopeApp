

import Foundation
import SwiftUI

struct CarouselComponent: UIComponent {
    
    let uiModel: CarouselUIModel
    let id = UUID()
    
    func render() -> AnyView {
        CarouselView(uiModel: uiModel).toAnyView()
    }
    
}
