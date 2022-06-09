
import SwiftUI

struct SearchBarView: View {
   @State var searchKey : String = ""
   var body:some View{
        HStack{
            Image(systemName:"magnifyingglass")
                .foregroundColor(.black)
                .padding()
            
            TextField("Search desserts ...",text: $searchKey)
       }
        .background(Color.white)
        .cornerRadius(30)
        .padding(.horizontal,25)
        .padding(.bottom)
       
       
   }
}

