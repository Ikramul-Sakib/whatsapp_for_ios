import SwiftUI
struct MainTabView: View {
    init(){
        makeTabBarOpaque()
    }
    var body: some View {
        TabView{
                UpdateTabScreen()
                .tabItem {
                    Image(systemName: Tab.updates.icon)
                    Text(Tab.updates.title)
                }
            CallTabScreen()
                .tabItem
            {
                    Image(systemName: Tab.calls.icon)
                    Text(Tab.calls.title)
                }
                    
            CommunityView()
                .tabItem {
                    Image(systemName: Tab.communities.icon)
                    Text(Tab.calls.title)
                    
                }
                    
            ChannelTabScreen()
                        .tabItem { Image(systemName: Tab.chats.icon)
                            Text(Tab.chats.title)}
            
            SettingVIew()
                        .tabItem { Image(systemName: Tab.settings.icon)
                            Text(Tab.settings.title)}
                }
        }
    private func makeTabBarOpaque(){
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        UITabBar.appearance().standardAppearance = appearance
        UITabBar.appearance().scrollEdgeAppearance = appearance
    }
}
extension MainTabView{
    private func placeholderItemView(_ title:String) ->some View {
        
        ScrollView{
            VStack{
                ForEach(0..<80){
                    _ in Text(title)
                        .bold()
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .frame(height: 120)
                        .background(Color.green.opacity(0.5))
                }
            }
        }
        
    }

    
    private enum Tab:String{
        case updates,calls,communities,chats,settings
        fileprivate var title:String{
            return rawValue.capitalized
        }
        
        fileprivate var icon:String{
            switch self{
            case .updates:
                return "circle.dashed.inset.filled"
            case .calls:
                return "phone"
            case .communities:
                return "person.3"
            case .chats:
                return "message"
            case .settings:
                return "gear"
            }
        }
    }
}
#Preview {
    MainTabView()
}
