
import Foundation
import SwiftUI

struct RowComponent: UIComponent {
    
    let id = UUID()
    let uiModel: RowUIModel
    
    func render() -> AnyView {
        
        HStack {
            if let imageUrl = uiModel.imageUrl {
                AsyncImage(url: imageUrl) { image in
                    image.resizable()
                        .frame(width: 100, height: 100)
                } placeholder: {
                    ProgressView()
                }.toAnyView()
            }
            
            VStack(alignment: .leading) {
                Text(uiModel.name)
                Text(uiModel.description ?? "").opacity(0.4)
            }
        }.padding()
            .toAnyView()
        
    }
    
}
