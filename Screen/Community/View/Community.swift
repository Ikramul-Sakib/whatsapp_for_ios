import SwiftUI
struct CommunityView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                VStack(alignment: .leading,spacing: 10){
                    Image(.communities)
                    
                    Group{
                        Text("Stay Connected with Community")
                            .font(.title2)
                            .foregroundStyle(.black)
                        Text("Communities Bring Member  together in topic based groups. Any commumity you're added tp will appear  here")
                            .foregroundStyle(.gray)
                        
                        
                    }
                    .padding(.horizontal,5)
                    exampleButton()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                    newCommunityButton()
                }
                .padding()
                .navigationTitle("Communities")
                
            }
        }
    }
    
    private func exampleButton() -> some  View{
        Button("See Example Communities >"){
            
        }
    }
    
    private func newCommunityButton() -> some View{
        Button{
        }label: {
            Label("New Community", systemImage: "plus")
                .bold()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
                .foregroundColor(.white)
                .padding(10)
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                .padding()
            
            
            }
    }
}
#Preview {
    CommunityView()
}
