//
//  SegundaVista.swift
//  NavegacionSwiftUI
//
//  Created by Hazel Alain on 23/11/23.
//

import SwiftUI

struct SegundaVista: View {
    var texto : String
    var body: some View {
        Text("Segunda vista")
            .navigationTitle(texto)
        
        NavigationLink(destination: TerceraVista()){
            Text("Ir a Tercera vista")
        }
    }
}

