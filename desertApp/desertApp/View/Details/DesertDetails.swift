
import SwiftUI

struct DesertDetails: View {
    @State var dessert:Dessert = dessertData[2] // as default value to test design
    @Environment(\.presentationMode)var presentationMode
    
    var body: some View {
        VStack(alignment: .leading){
            
            Header(image: dessert.image)
            
            VStack(alignment:.leading){
                ScrollView(.vertical,showsIndicators:false){
                    VStack(alignment: .leading) {
                        Text(dessert.name)
                            .foregroundColor(.primaryColor)
                            .font(.title)
                            .fontWeight(.bold)
                            .padding(.horizontal)
                            .padding(.vertical, 10)
                        
                        HStack{
                            Text(dessert.price)
                                .font(.title3)
                                .fontWeight(.bold)
                            Spacer()
                            AmountView()
                        }
                        .padding(.horizontal)
                        
                        HStack(spacing: 5){
                            SubInfoView(image:"gym",info:"100 Calories")
                            SubInfoView(image:"delivery",info:"Free Delivery")
                            SubInfoView(image:"time",info:"20-30 min")
                        }
                        .padding(.top,20)
                        .padding()
                        
                        Text("Description:")
                            .fontWeight(.medium)
                            .padding(.horizontal)
                        
                        Text(dessert.description)
                            .foregroundColor(.gray)
                            .fontWeight(.light)
                            .padding()
                        
                        
                    }
                    
                    
                }
                
                
            }
            Button(action:{}){
                Text("Add to Cart")
                    .foregroundColor(.white)
            }
            .padding()
            .frame(width:UIScreen.main.bounds.width/1.1)
            .background(Color.primaryColor)
            .cornerRadius(35)
            .padding()
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
        .statusBar(hidden:true)
        .navigationBarItems(
            leading:
                Button(action:{
                    self.presentationMode.wrappedValue.dismiss()
                    
                }){
                    Image(systemName: "chevron.backward")
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.5))
                    
                }
            
            ,
            trailing:
                Button(action: {}){
                    Image(systemName: "heart")
                        .font(.title)
                        .foregroundColor(Color.black.opacity(0.5))
                }
        )
        
    }
}

struct DesertDetails_Previews: PreviewProvider {
    static var previews: some View {
        DesertDetails()
    }
}


struct Header:View{
    var image : String
    
    
    
    var body:some View{
        ZStack(alignment: .top){
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width:UIScreen.main.bounds.width,height:
                        UIScreen.main.bounds.height/2)
                .cornerRadius(55,corners:[.bottomLeft,.bottomRight])
        }
        
        
    }
}

// MARK:Extend view to apply cornerRaduis
extension View{
    func cornerRadius(_ radius:CGFloat,corners:UIRectCorner)->some View{
        clipShape(RoundedCorner(radius: radius, corners: corners))
    }
    
    
}


struct RoundedCorner:Shape{
    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect:rect,byRoundingCorners:corners,cornerRadii:CGSize(width:radius,height:radius))
        
        return Path(path.cgPath)
    }
    
    
}


struct AmountView : View {
    var body: some View {
        HStack{
            Button(action:{}){
                Text("-")
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(width:35,height:35)
                    .background(Circle().stroke().foregroundColor(Color.borderColor))
                
            }
            
            
            Text("1")
                .font(.title2)
                .fontWeight(.bold)
            
            Button(action:{}){
                Text("+")
                    .font(.title)
                    .foregroundColor(.black)
                    .frame(width:35,height:35)
                    .background(Circle().stroke().foregroundColor(Color.borderColor))
                
            }
        }
        
    }
    
}


struct SubInfoView: View{
    var image: String
    var info: String
    var body: some View{
        HStack(spacing: 8){
            Image(image)
                .resizable()
                .frame(width: 20, height: 20)
            
            Text(info)
            
        }
    }
    
}
