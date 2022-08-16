import Foundation

enum ActionType: String, Decodable {
    case sheet
    case push
}

struct Action: Decodable {
    let type: ActionType
    let destination: Route
}



