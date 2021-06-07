//
//  ContentView.swift
//  war-challenge
//
//  Created by Siddhant Rathore on 31/05/21.
//

import SwiftUI



struct ContentView: View {
    
    @State private var playerCard = "card10"
    @State private var cpuCard = "card12"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    var body: some View {
        ZStack {
        
        Image("background").resizable().scaledToFill()
            .edgesIgnoringSafeArea(.all)
        
        VStack {
            
            Image("logo").resizable().scaledToFit().frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
           
            HStack{
                VStack{
                Image(playerCard)
                    Text("You").foregroundColor(.black)
                        
                }
                VStack{
                    
                Image(cpuCard)
                    Text("CPU").foregroundColor(.black)
            }
            }
            
            Button (action: {
                
                
                let playerRand = Int.random(in: 2...14)
            
                let cpuRand = Int.random(in: 2...14)
                
                
                
                
                //Update UI
                playerCard = "card" + String(playerRand)
                cpuCard = "card" + String(cpuRand)
                
                //Update Score
                
                if playerRand>cpuRand {
                    playerScore += 1
                }
                else if cpuRand>playerRand{
                    cpuScore += 1
                }
                
                
            }) {
                Image("dealbutton")
            }.padding(.all,20)
            
            
            HStack{
                
                VStack{
                    
                Text("Player")
                
                Text(String(playerScore))
                
                    
                }
               
                VStack{
                
                Text("CPU")
                    
                Text(String(cpuScore))
                    
                }
            }
          
        
            
            
            
                
            
            }
            
            
            
        
            
        }
            
            
        }
            
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
