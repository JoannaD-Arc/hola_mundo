//
//  vista_juego_gato.swift
//  Prueba_Hola_Mundo_02
//
//  Created by alumno on 2/11/26.
//

import SwiftUI


struct VistaJuegoGato: View {
    var body: some View {
        Text("Juego del Gato")
        HStack{
            BotonTicTac()
            
            BotonTicTac()
            
            BotonTicTac()
        }
        
        HStack{
            BotonTicTac()
            
            BotonTicTac()
            
            BotonTicTac()
        }
        
        HStack{
            BotonTicTac()
            
            BotonTicTac()
            
            BotonTicTac()
        }
        
    }
    
}

#Preview {
    VistaJuegoGato()
}
