/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function guardar() {
   //Esta función se ejecuta al presionar el botón 'GUARDAR'.
   var isbn, titulo, autor, fecha, editorial;
   isbn = document.getElementById("isbn");
   titulo = document.getElementById("titulo");
   autor = document.getElementById("autor");
   fecha = document.getElementById("fecha");
   editorial = document.getElementById("editorial");
 
 location.href = "update.jsp?isbn="+isbn+"&titulo="+titulo+"&editorial="+editorial+"&fecha="+fecha+"&autor="+autor;
}


