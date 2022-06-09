
import SwiftUI

struct DessertHomeTopBar: View {
    var height = UIScreen.main.bounds.height
    
    var body: some View {
        HStack{
            Text("Home")
                .fontWeight(.bold)
                .frame(alignment:.center)
                .navigationBarItems(
                    leading:
                        Button(action:{}){
                            VStack {
                                Image("menu")
                                        .resizable()
                                        .font(.title)
                                        .padding(.horizontal)
                            }
                            .frame(width: 60, height: 23)
                                    
                            
                           
                            

                            
                        }
                )
        }
        .foregroundColor(Color.black1)
        .padding()
        .padding(.top, height < 750 ? 0 : 50)
        
    }
}
