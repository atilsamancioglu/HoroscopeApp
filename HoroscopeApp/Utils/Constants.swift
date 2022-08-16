

import Foundation

struct Constants {
    
    struct ScreenResources {
        
        static let baseUrl = "localhost:8080"
        static let horoscopeListing = "horoscope-listing"
        
        static func horoscopeDetail(horoscopeId: Int) -> String {
            return "horoscope-detail/\(horoscopeId)"
        }
        
        static func resource(for resourceName: String) -> URL? {
            
            return URL(string: "http://\(baseUrl)/\(resourceName)")
            
        }
        
    }
    
    
    
    struct Urls {
        static let baseUrl = "http://localhost:3000"
        static let horoscopeListing = "\(baseUrl)/horoscope-listing"
    }
    
}
