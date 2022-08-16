

import Foundation

enum NetworkError: Error {
    case invalidUrl
    case invalidServerResponse
}

class Webservice: NetworkService {
    
    func load(_ resource: String) async throws -> ScreenModel {
            
        guard let url = Constants.ScreenResources.resource(for: resource) else {
            throw NetworkError.invalidUrl
        }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else {
                  throw NetworkError.invalidServerResponse
              }
        
        return try JSONDecoder().decode(ScreenModel.self, from: data)
    }
    
}
