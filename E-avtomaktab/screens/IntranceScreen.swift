import SwiftUI

struct IntranceScreen: View {
    @State var btnTapped = "calendar" //calendar
    @State var selector = 0
    var body: some View {
        NavigationView{
            VStack{
                VStack{
                    if btnTapped == "home" {
                        IntranceHomeScreen()
                    } else if btnTapped == "calendar" {
                        IntranceOportunityScreen()
                    } else if btnTapped == "functions" {
                        IntranceFuncScreen()
                    } else if btnTapped == "statistics" {
                        IntranceStaticsScreen()
                    } else if btnTapped == "tests" {
                        IntranceFuncScreen()
                    }
                }.frame(width: UIScreen.width, height: UIScreen.height*2.3/3)
                
                Spacer()
                HStack{
                    Button(action: {
                        self.btnTapped = "home"
                    }, label: {
                        NavigationBarButtonCell(image: (btnTapped == "home") ? "ic_home-nav-active" : "ic_home-nav", isActive: (btnTapped == "home") ? true : false)
                    }).offset(x: 0, y: (btnTapped == "home") ? -22 : 0)
                    
                    Spacer()
                    
                    Button(action: {
                        self.btnTapped = "calendar"
                    }, label: {
                        NavigationBarButtonCell(image: (btnTapped == "calendar") ? "ic_calendar-nav-active" : "ic_calendar-nav", isActive: (btnTapped == "calendar") ? true : false)
                    }).offset(x: 0, y: (btnTapped == "calendar") ? -22 : 0)
                    
                    Spacer()
                    
                    Button(action: {
                        self.btnTapped = "functions"
                    }, label: {
                        NavigationBarButtonCell(image: (btnTapped == "functions") ? "ic_chart-pie-nav-active" : "ic_chart-pie-nav", isActive: (btnTapped == "functions") ? true : false)
                    }).offset(x: 0, y: (btnTapped == "functions") ? -22 : 0)
                    
                    Spacer()
                    Button(action: {
                        self.btnTapped = "statistics"
                    }, label: {
                        NavigationBarButtonCell(image: (btnTapped == "statistics") ? "ic_radio-nav-active" :"ic_radio-nav", isActive: (btnTapped == "statistics") ? true : false)
                    }).offset(x: 0, y: (btnTapped == "statistics") ? -22 : 0)
                    
                    Spacer()
                    
                    Button(action: {
                        self.btnTapped = "tests"
                    }, label: {
                        NavigationBarButtonCell(image: (btnTapped == "tests") ? "ic_contrast-nav-active" : "ic_contrast-nav", isActive: (btnTapped == "tests") ? true : false)
                    }).offset(x: 0, y: (btnTapped == "tests") ? -22 : 0)
                    
                }
                .padding(.trailing,25)
                .padding(.leading,25)
                .frame(width: UIScreen.width, height: UIScreen.height/20)
                .background(Color(hex: "4F335A"))
                HStack{}.frame(height: 20)
            }
            .frame(maxWidth: .infinity)
                .edgesIgnoringSafeArea(.bottom)
            
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
