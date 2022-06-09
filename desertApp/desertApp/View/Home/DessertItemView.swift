import SwiftUI

struct DessertItemView:View{
   var item : Dessert
   var body:some View{
       ZStack(alignment:.topLeading){
          Color(.white)
            .frame(width:UIScreen.main.bounds.width/1.3)
            .cornerRadius(25)
            .padding(.horizontal,20)
            .padding(.vertical,5)
        
           
           HStack(alignment:.center) {
               Image(item.image)
                   .resizable()
                   .scaledToFill()
                   .clipShape(Circle())
                   .offset(x:-20)
                   .frame(width:100,height:100)
               
               VStack(alignment:.leading,spacing:10){
                   Text(item.name)
                       .font(.title3)
                       .fontWeight(.bold)
                       .foregroundColor(.primaryColor)
                       .padding(.trailing,20)
 
                   Text(item.type)
                       .font(.caption2)
                       .foregroundColor(.gray)
                   
                   Text(item.price)
                       .font(.caption2)
                       .foregroundColor(.black1)
                   
               }
               .padding(.vertical,30)
           }
           .padding(.horizontal,20)

       }
   }
}
