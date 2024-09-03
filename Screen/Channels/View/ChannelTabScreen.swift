import SwiftUI
struct ChannelTabScreen: View {
    @State private var Searchtext = ""
    var body: some View {
        NavigationStack{
            List{
                ArcheiveButton()
                
                ForEach( 0..<12){_ in
                    ChannelVIew()
                }
            
                InboxFooterView()
                    .listRowSeparator(.hidden)
            }
            .navigationTitle("Chats")
                .searchable(text: $Searchtext)
                .listStyle(.plain)
                .toolbar{
                    leadingNavItem()
                    trailingNavItem()
                    
                }
        }
    }
}



    extension ChannelTabScreen {
        @ToolbarContentBuilder
        
        private func leadingNavItem() -> some ToolbarContent{
            ToolbarItem(placement: .topBarLeading){
                Menu{
                    Button{
                        
                    }label: {
                        Label("Select Chat",systemImage: "checkmark.circle")
                    }
                    
                }label: {
                Image(systemName: "ellipsis.circle")
                    
                }
            }
        }
        @ToolbarContentBuilder
        private func trailingNavItem() -> some ToolbarContent{
            ToolbarItemGroup(placement: .topBarTrailing){
                
                aiButton()
                CameraButton()
                NewChatButton()
                
                }
        }
        
        private func aiButton() -> some View{
            Button{
                
            }label: {
                Image(.circle)
            }
        }
        private func NewChatButton() -> some View{
            Button{
                
            }label: {
                Image(.plus)
            }
        }
        
        private func CameraButton() -> some View{
            Button{
                
            }label: {
                Image(systemName: "camera")
            }
        }
        private func ArcheiveButton() -> some View{
            Button{
                
            }label: {
                Label("Archeived", systemImage:  "archivebox.fill" )
                    .bold()
                    .padding()
                    .foregroundColor(.gray)
                
            }
        }
        private func InboxFooterView() -> some View{
            HStack{
                Image(systemName: "lock.fill")
                (
                Text("Your Personal Messages are")
                +
                Text(" end-to-end encrypted")
                    .foregroundStyle(.blue)
                
                )
            }
            .foregroundStyle(.gray)
            .font(.caption)
            .padding(.horizontal)
            
            
            
        }
    }

#Preview {
    ChannelTabScreen()
}
