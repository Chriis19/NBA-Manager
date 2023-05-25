import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var password = ""
    @State private var wrongUsername = 0
    @State private var wrongPassword = 0
    @State private var showingLoginScreen = false
    
    
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.blue.ignoresSafeArea()
                Button
                Image("MyCareer").scaledToFit().foregroundColor(.white)
                
                VStack{
                    TextField("Username", text: $username)
                    Text("Login").font(.largeTitle).bold().padding()
                }
            }
        }
        .navigationBarHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



