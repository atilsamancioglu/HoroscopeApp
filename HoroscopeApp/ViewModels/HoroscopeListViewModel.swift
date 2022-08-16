import Foundation

@MainActor
class HoroscopeListViewModel: ObservableObject {
    
    private var service: NetworkService
    @Published var components: [UIComponent] = []
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func load() async {
        
        do {
            
            let screenModel = try await service.load(Constants.ScreenResources.horoscopeListing)
            self.components = try screenModel.buildComponents()
            
        } catch {
            print(error)
        }
        
    }
    
}
