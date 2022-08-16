

import Foundation
import SwiftUI

protocol UIComponent {
    var id: UUID { get }
    func render() -> AnyView 
}
