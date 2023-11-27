//
//  ContentView.swift
//  NavegacionSwiftUI
//
//  Created by Hazel Alain on 23/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var show = false
    @State private var texto = ""
    var body: some View {
        NavigationView {
            
            VStack {
                TextField("Texto", text: $texto)
                Button("abrir modal"){
                    
                    show.toggle()
                }
                .sheet(isPresented: $show){
                    VentanaModal(texto: texto)
                }
                .navigationTitle("Navegacion")
                .toolbar{
                    
                    HStack{
                        
                        NavigationLink(destination: SegundaVista(texto: texto)){
                            Image(systemName: "plus")
                        }
                        NavigationLink(destination: TerceraVista()){
                            Image(systemName: "camera")
                        }
                    }
                }
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
