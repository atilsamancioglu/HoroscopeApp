
import Foundation

struct CarouselRowUIModel: Decodable, Identifiable {
    
    let id = UUID()
    let horoscopeId: Int
    let imageUrl: URL
    
    private enum CodingKeys: String, CodingKey {
        case horoscopeId
        case imageUrl
    }
}

struct CarouselUIModel: Decodable {
    let items: [CarouselRowUIModel]
    let action: Action
}
