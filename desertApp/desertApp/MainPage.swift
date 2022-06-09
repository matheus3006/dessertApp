
import SwiftUI

struct MainPage: View {
    @State private var showDetails=false
    @State private var selectedItem=dessertData[0]
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.mainBGColor
                VStack{
                    DessertHomeTopBar()
                    SearchBarView()
                    ScrollView(.vertical, showsIndicators: false){
                        VStack{
                            ForEach(dessertData, id: \.self ){ item in
                                Button(action:{
                                    showDetails.toggle()
                                    selectedItem=item
                                    
                                }){
                                    DessertItemView(item:item)
                                }
                                
                            }
                            .background(
                                NavigationLink(
                                    destination:
                                        DesertDetails(dessert: selectedItem)
                                        .navigationBarBackButtonHidden(true )
                                    ,
                                    
                                    
                                    isActive: $showDetails){ EmptyView() }
                            )
                            
                            
                        }
                    }
                    
                    
                }
                
            }
            .edgesIgnoringSafeArea(.all)
        }
        
    }
}

struct MainPage_Previews: PreviewProvider {
    
    static var previews: some View {
        MainPage()
        
        
    }
}

