
import SwiftUI

struct SettingVIew: View {
    @State private var search = ""
    var body: some View {
        
        NavigationStack{
            
            ScrollView{
                HStack(alignment: .top){
                            
                    VStack(alignment: .leading){
                       
                    sett()
                            .padding()
                            .frame(width: 100,height: 80)
                            
                    
                    ForEach(0..<8){
                        _ in SettingMEnue()
                            .padding()
                    }
                    
                    
                    
                }
                Image(.qrcode)
    
                   Spacer()
                    
                }
            }
            .navigationTitle("Settings")
            .searchable(text: $search)
            
        }
        
        
        
    }
    
    private func sett() -> some View{
        HStack{
                
            VStack(alignment:.leading,spacing: 5){
                
                Button("Hi"){
                }
                .font(.system(size: 18))
                .bold()
                
                
                Text("018312")
                    .foregroundStyle(.gray)
                    .font(.system(size: 18))
                
                Text("Title")
            }
            Spacer()
        }
    }
    
    
    
    
    private func SettingMEnue() -> some View{
        
        HStack(alignment: .top){
            Image(.circle)
                
            Spacer()
                VStack{
                    Button("Hi"){
                    }
                    .font(.system(size: 18))
                    .bold()
                    
                
                Text("018312")
                    .foregroundStyle(.gray)
                    .font(.system(size: 18))
                
                
                }
                
            Spacer()
            
           
            
            
            
        }
        
        
        
        
    }
}






#Preview {
    SettingVIew()
}
