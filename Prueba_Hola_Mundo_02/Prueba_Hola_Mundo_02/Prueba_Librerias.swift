//
//  Prueba_Librerias.swift
//  Prueba_Hola_Mundo_02
//
//  Created by alumno on 2/13/26.
//

import SwiftUI

struct Prueba_Librerias: View {
    @State var valor_color_picker =
    Color(.sRGB, red: 0.00, green: 0.00, blue: 0.00)
    @State var texto_compartir_link = ""
    
    
    var body: some View {

        
        Section {
            Divider().padding()
            VStack{
                Text("Sección de Color Picker")
                    .padding(15)
                Image("ColorWheel")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250, height: 250)
                    
                ColorPicker("Color Picker", selection: $valor_color_picker)
                        .padding(50)
                
                Stepper(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(4)/*@END_MENU_TOKEN@*/, in: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Range@*/1...10/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Label@*/Text("Stepper")/*@END_MENU_TOKEN@*/
                }
            }
            
            Divider().padding()
            VStack{
                Text("Sección Compartir Video")
                ShareLink(item: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZg5lwymFOnKnrdFndeDTFfL-oVWuTYruEVw&s")!)
                    .padding(15)
                TextField("Test Pegar Link", text: $texto_compartir_link)
                
            }
            VStack{
            
                DatePicker(selection: /*@START_MENU_TOKEN@*/.constant(Date())/*@END_MENU_TOKEN@*/, label: { /*@START_MENU_TOKEN@*/Text("Date")/*@END_MENU_TOKEN@*/ })
            }
        } .background(EllipticalGradient(colors:[Color.white, Color.gray], center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadiusFraction: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, endRadiusFraction: 2.5))
            .padding(10)
            

    }
 
    

}

#Preview {
    Prueba_Librerias()
}



