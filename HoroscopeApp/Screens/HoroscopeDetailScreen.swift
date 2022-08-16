import SwiftUI

struct HoroscopeDetailScreen: View {
    
    let horoscopeId: Int
    
    @StateObject private var vm: HoroscopeDetailViewModel
    
    init(horoscopeId: Int) {
        _vm = StateObject(wrappedValue: HoroscopeDetailViewModel(service: Webservice()))
        self.horoscopeId = horoscopeId
    }
    
    var body: some View {
        ScrollView {
            ForEach(vm.components, id: \.id) { component in
                component.render()
            }
            
        }.task {
            await vm.load(horoscopeId: horoscopeId)
        }
    }
}

