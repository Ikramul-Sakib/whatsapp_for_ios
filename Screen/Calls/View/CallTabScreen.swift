import SwiftUI
struct CallTabScreen: View {
    @State private var searchtext = ""
    @State private var callhistory = CallHistory.all
    var body: some View {
        NavigationStack{
            List{
                Section{
                    CallLinkSec()
                }
                
                Section{
                    ForEach(0..<12){
                        _ in RecentCallItemView()
                    }
                }header: {
                    Text("Recent")
                        .textCase(nil)
                        .font(.headline)
                        .bold()
                        .foregroundStyle(.whatsAppBlack)
                }
            }
            .navigationTitle("Calls")
            .searchable(text: $searchtext)
            .toolbar{
                leadingNavItem()
                trailingNavItem()
                principalNavItem()
            }
        }
    }
}
extension CallTabScreen {
    
    @ToolbarContentBuilder
    private func trailingNavItem() -> some ToolbarContent{
        ToolbarItem(placement: .topBarTrailing){
            Button{
            }
        label: {(Image(systemName:  "phone.arrow.up.right"))}
    }
}

    @ToolbarContentBuilder
    private func leadingNavItem() -> some ToolbarContent{
        ToolbarItem(placement: .topBarLeading){
            Button("Edit"){
            }
        }
    }
    
    @ToolbarContentBuilder
    private func principalNavItem() -> some ToolbarContent{
        ToolbarItem(placement: .principal){
            Picker("", selection: $callhistory){
                ForEach(CallHistory.allCases){
                    item in
                    Text(item.rawValue.capitalized)
                        .tag(item)
                }
            }
            .pickerStyle(.segmented)
            .frame(width: 170)
        }
    }
    
    private enum CallHistory : String, CaseIterable, Identifiable{
        case all,missed
        
        var id: String{
            return rawValue}
        }
    
}

private struct CallLinkSec: View {
    var body: some View {
        HStack{
            Image(systemName: "link")
                .padding(8)
                .background(Color(.systemGray6))
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundStyle(.blue)
            
            
            VStack(alignment: .leading){
                Text("Create Call link")
                    .foregroundStyle(.blue)
                Text("Sharee a link for whatsapp call")
                    .foregroundStyle(.gray)
                    .font(.caption)
            }
        }
    }
}
private struct RecentCallItemView:View {
    var body: some View {
        HStack{
            Circle()
                .frame(width: 45,height: 45)
            
            Recentcall()
            
            Spacer()
            
            Text("Yesterday")
                .foregroundStyle(.gray)
                .font(.system(size: 16))
            Image(systemName: "info.circle")
        }
    }
    private func Recentcall() ->some View{
        VStack(alignment: .leading){
            Text("Sakib")
            HStack(spacing: 5){
                Image(systemName: "phone.arrow.up.right.fill")
                Text("Outgoing")
                
            }
            .font(.system(size: 14))
            .foregroundColor(.gray)
        }
    }
}

#Preview {
    CallTabScreen()
}
