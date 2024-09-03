import SwiftUI

struct UpdateTabScreen: View {
    @State private var SearchText = ""
    var body: some View {
        NavigationStack{
            List{
                StatusSectionHeader()
                    .listRowBackground(Color.clear)
                    StatusSection()
                Section{
                    RecentUpdateItemView()
                }
            header: {Text("Recent Updates")
            }
                Section{
                    ChannelListView()
                }
            header:{
                channelListHeader()
            }
            }
            .listStyle(.grouped)
            .navigationTitle("Updates")
            .searchable(text: $SearchText)
        }
    }
    private func channelListHeader() ->some View{
        HStack{
            Text("Channels")
                .bold()
                .font(.title3)
                .textCase(nil)
                .foregroundStyle(.whatsAppBlack)
            Spacer()
            
            Button{
            }
            label :{
                Image(systemName: "plus")
                    .padding(7)
                    .background(Color(.systemGray5))
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
extension UpdateTabScreen{
    enum Contant {
        static let imageDimen: CGFloat = 55
    }
}
private struct StatusSectionHeader:View {
    var body: some View {
        HStack(alignment: .top){
            Image(systemName: "circle.dashed")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .imageScale(.large)
            Text("Use Status to share photos, text and videos that disappear in 24 hours.")
            +
            Text(" ")
            +
            Text("\nStatus Privacy")
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .bold()
            Image(systemName: "xmark")
                .foregroundColor(.gray)
        }
        .padding()
        .background(.whatsAppWhite)
        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
        
    }
}
private struct StatusSection: View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: UpdateTabScreen.Contant.imageDimen, height: UpdateTabScreen.Contant.imageDimen)
            VStack(alignment: .leading)
            {
                Text("My Status")
                    .font(.callout)
                    .bold()
                Text("Add to my status")
                    .foregroundStyle(.gray)
                    .font(.system(size: 15))
                
            }
            Spacer()
            cameraButton()
            pencilButton()
            
        }
    }
    private func cameraButton() -> some View{
        Button{
        }
    label: {
        Image(systemName: "camera.fill")
            .padding(10)
            .background(Color(.systemGray5))
           
    }
}
    private func pencilButton() -> some View{
        Button{
        }
    label: {
        Image(systemName: "pencil")
            .padding(10)
            .background(Color(.systemGray5))
    }
}
}

private struct RecentUpdateItemView:View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: UpdateTabScreen.Contant.imageDimen, height: UpdateTabScreen.Contant.imageDimen)
            VStack(alignment: .leading)
            {
                Text("Sakib Hassan")
                    .font(.callout)
                    .bold()
                Text("1 hr ago")
                    .foregroundStyle(.gray)
                    .font(.system(size: 15))
}}}}
private struct ChannelListView:View {
    var body: some View {
        VStack(alignment: .leading){
        Text("Stay Updated on topics that matter to you. Find channels to follow below.")
                .foregroundStyle(.gray)
                .font(.callout)
                .padding(.horizontal)
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    ForEach(0..<5){_ in
                        channelItemView()
                    }
                }
            }
            
            Button("Explore more"){
                
            }
            .tint(.blue)
            .bold()
            .buttonStyle(.borderedProminent)
            .clipShape(.capsule)
            .padding(.vertical)
        }
    }
}
private struct channelItemView:View {
    var body: some View {
        
        VStack{
            Circle()
                .frame(width: 55, height: 55)
            Text("Real Madrid C.F")
            Button{
                
            }
            label :{
                Text("Follow")
                    .bold()
                    .padding(5)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.blue.opacity(0.2))
                    .clipShape(Capsule())
            }
        }
        .padding(.horizontal,16)
        .padding(.vertical)
        .overlay(RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4),lineWidth: 1))
        
       
        
    }
}

#Preview {
    UpdateTabScreen()
}
