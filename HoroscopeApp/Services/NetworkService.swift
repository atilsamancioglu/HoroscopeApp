
import Foundation

protocol NetworkService {
    func load(_ resourceName: String) async throws -> ScreenModel 
}
