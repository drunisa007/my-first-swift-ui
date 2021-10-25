//
//  ContentView.swift
//  First-Ui-test
//
//  Created by Drunisa on 10/25/21.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var isDark : Bool = false
    
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: isDark ?[Color("lightBlue"),Color("blueLight")]:[.black,.gray]), startPoint: .topLeading, endPoint: .bottomTrailing).edgesIgnoringSafeArea(.all)
            VStack{
              MainTitleView(title: "Cupertino, Cn")
                
              WeatherMainView(imageName: "cloud.sun.fill", weatherTitle: "76 °")
                
              Spacer()
                
                
              HStack(spacing:14){
                   WeatherSingleView(imageName: "cloud.snow.fill", titleName: "10 °")
                    WeatherSingleView(imageName: "cloud.drizzle.fill", titleName: "50 °")
                    WeatherSingleView(imageName: "cloud.snow.fill", titleName: "10 °")
                    WeatherSingleView(imageName: "cloud.snow.fill", titleName: "60 °")
                    WeatherSingleView(imageName: "cloud.snow.fill", titleName: "30 °")
                    WeatherSingleView(imageName: "cloud.snow.fill", titleName: "45 °")
                }
                
               Spacer()
                
               WeatherButtonView(title: "Change Time Of Day", isDark: $isDark)

               Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherSingleView: View {
    
    var imageName:String
    var titleName:String
    
    var body: some View {
        VStack(spacing:8){
            Text("TUE").font(.system(size: 20, weight: .bold)).foregroundColor(Color(.white))
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .frame(width: 40, height: 40)
                .aspectRatio( contentMode: .fit)
            Text(titleName).font(.system(size: 25, weight: .bold)).foregroundColor(Color(.white))
        }
    }
}


struct MainTitleView: View {
    var title:String
    var body: some View {
        Text(title)
            .foregroundColor(Color(.white))
            .font(.system(size: 25, weight: .medium, design: .default)).padding(.vertical,30)
    }
}

struct WeatherMainView: View {
    
    var imageName : String
    var weatherTitle : String
    
    var body: some View {
        VStack(spacing:4){
            Image(systemName: imageName)
                .resizable()
                .renderingMode(.original)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120,height: 120)
            Text("\(weatherTitle)").font(.system(size: 50, weight: .bold, design: .default))
                .foregroundColor(Color(.white))
            
        }
    }
}

