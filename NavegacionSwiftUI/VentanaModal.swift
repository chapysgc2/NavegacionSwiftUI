//
//  VentanaModal.swift
//  NavegacionSwiftUI
//
//  Created by Hazel Alain on 23/11/23.
//

import SwiftUI

struct VentanaModal: View {
    @Environment(\.presentationMode) var back
    var texto : String //cada vez que recibamos parametros colocaremos el tipo de dato por ejemplo en este caso seria String
    var body: some View {

        ZStack{
            Color.orange.edgesIgnoringSafeArea(.all)

            VStack{
                Text(texto)
                    .font(.title)
                    .foregroundColor(.white)
                    .bold()
                
                Button("Cerrar") {
                    back.wrappedValue.dismiss()
                }
            }
        }
       
    }
}

