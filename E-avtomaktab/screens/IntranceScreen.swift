import SwiftUI

struct IntranceScreen: View {
    @State var btnTapped = "home"
    var body: some View {
        NavigationView{
            VStack{
                TabView{
                    VStack{
                        IntranceCardCell(image: "im_hero-1", header: "Ariza Holati", text: "Avtomaktabga yuborgan arizangiz holatini tekshiring", btnText: "Yuboorish")
                        HStack{
                            Image(systemName: "circle.fill")
                            Image(systemName: "circle")
                            Image(systemName: "circle")
                        }
                        
                        Spacer()
                        HStack{
                            Button(action: {
                                
                            }, label: {
                                NavigationBarButtonCell(image: "ic_home-nav-active", isActive: true)
                            })
                                .offset(x: 0, y: -22)
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                NavigationBarButtonCell(image: "ic_calendar-nav", isActive: false)
                            })
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                NavigationBarButtonCell(image: "ic_chart-pie-nav", isActive: false)
                            })
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                NavigationBarButtonCell(image: "ic_radio-nav", isActive: false)
                            })
                            Spacer()
                            Button(action: {
                                
                            }, label: {
                                NavigationBarButtonCell(image: "ic_contrast-nav", isActive: false)
                            })
                        }
                        .padding(.trailing,25)
                        .padding(.leading,25)
                        .frame(width: UIScreen.width, height: UIScreen.height/15)
                        .background(Color(hex: "4F335A"))
                    }
                }.tabViewStyle(PageTabViewStyle())
                
            }
                .navigationBarItems(
                    leading: Image("ic_e-logo"),
                    trailing: Image("ic_sign-in")
                )
        }
    }
}

struct IntranceScreen_Previews: PreviewProvider {
    static var previews: some View {
        IntranceScreen()
    }
}
