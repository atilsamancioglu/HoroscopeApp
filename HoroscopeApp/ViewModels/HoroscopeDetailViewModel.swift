import Foundation

@MainActor 
class HoroscopeDetailViewModel: ObservableObject {
    
    private var service: NetworkService
    @Published var components: [UIComponent] = []
    
    init(service: NetworkService) {
        self.service = service
    }
    
    func load(horoscopeId: Int) async {
        do {
            let screenModel = try await service.load(Constants.ScreenResources.horoscopeDetail(horoscopeId: horoscopeId))
            self.components = try screenModel.buildComponents()
        } catch {
            print(error)
        }
    }
    
}
