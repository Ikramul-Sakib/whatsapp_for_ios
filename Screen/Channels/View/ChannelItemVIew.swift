
import SwiftUI

struct ChannelVIew: View {
    var body: some View {
        HStack(alignment: .top, spacing: 10){
            Circle()
                .frame(width: 60)
            
            VStack(alignment: .leading, spacing: 3){
                titleTextView()
                LastMessagePreView()
                
            }
        }
    }
    
    
    
    private func titleTextView() -> some View{
        HStack{
            Text("User name")
                .lineLimit(1)
                .bold()
            Spacer()
            
            Text("5.50 PM")
                .foregroundStyle(.gray)
                .font(.system(size: 15))
            
            
        }
        
    }
    private func LastMessagePreView() -> some View{

        Text("Hey")
            .font(.system(size: 16))
            .lineLimit(2)
            .foregroundStyle(.gray)
        
        
        
        
    }
    
    
    
}






#Preview {
    ChannelVIew()
}
