
import Foundation

struct RowUIModel: Decodable {
    let id: Int
    let name: String    
    let imageUrl: URL?
    let description: String?
}
    
struct ListUIModel: Decodable {
    let rows: [RowUIModel]
    let action: Action
}
