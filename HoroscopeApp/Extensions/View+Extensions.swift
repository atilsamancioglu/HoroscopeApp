import Foundation
import SwiftUI

extension View {
    func toAnyView() -> AnyView {
        AnyView(self)
    }
}
