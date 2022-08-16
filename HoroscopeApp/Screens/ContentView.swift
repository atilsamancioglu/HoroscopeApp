//
//  ContentView.swift
//  HoroscopeApp
//
//  Created by Atil Samancioglu on 16.08.2022.
//



import SwiftUI

struct ContentView: View {
   
    @StateObject private var vm: HoroscopeListViewModel
    
    init() {
        _vm = StateObject(wrappedValue: HoroscopeListViewModel(service: Webservice()))
    }
   
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.components, id: \.id) { component in
                    component.render()
                }
                
                .navigationTitle("Horoscopes")
            }
            .listStyle(.plain)
            .task {
                await vm.load()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
