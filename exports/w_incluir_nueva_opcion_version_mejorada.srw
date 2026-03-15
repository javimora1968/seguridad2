$PBExportHeader$w_incluir_nueva_opcion_version_mejorada.srw
forward
global type w_incluir_nueva_opcion_version_mejorada from Window
end type
type cb_deseleccionar_todas from commandbutton within w_incluir_nueva_opcion_version_mejorada
end type
type cb_salvar from commandbutton within w_incluir_nueva_opcion_version_mejorada
end type
type dw_borrar_recursivo from datawindow within w_incluir_nueva_opcion_version_mejorada
end type
type cb_quitar from commandbutton within w_incluir_nueva_opcion_version_mejorada
end type
type cb_agregar from commandbutton within w_incluir_nueva_opcion_version_mejorada
end type
type dw_opciones_modulo_usuario from datawindow within w_incluir_nueva_opcion_version_mejorada
end type
type dw_opciones_modulo from datawindow within w_incluir_nueva_opcion_version_mejorada
end type
type cb_cerrar from commandbutton within w_incluir_nueva_opcion_version_mejorada
end type
type dw_lista_usuarios from datawindow within w_incluir_nueva_opcion_version_mejorada
end type
type st_2 from statictext within w_incluir_nueva_opcion_version_mejorada
end type
type st_1 from statictext within w_incluir_nueva_opcion_version_mejorada
end type
type dw_lista_modulos from datawindow within w_incluir_nueva_opcion_version_mejorada
end type
end forward

global type w_incluir_nueva_opcion_version_mejorada from Window
int X=823
int Y=360
int Width=4955
int Height=2772
boolean TitleBar=true
string Title="Insertar / Eliminar Opciones"
long BackColor=81324524
boolean ControlMenu=true
boolean MinBox=true
boolean MaxBox=true
boolean Resizable=true
cb_deseleccionar_todas cb_deseleccionar_todas
cb_salvar cb_salvar
dw_borrar_recursivo dw_borrar_recursivo
cb_quitar cb_quitar
cb_agregar cb_agregar
dw_opciones_modulo_usuario dw_opciones_modulo_usuario
dw_opciones_modulo dw_opciones_modulo
cb_cerrar cb_cerrar
dw_lista_usuarios dw_lista_usuarios
st_2 st_2
st_1 st_1
dw_lista_modulos dw_lista_modulos
end type
global w_incluir_nueva_opcion_version_mejorada w_incluir_nueva_opcion_version_mejorada

forward prototypes
public function boolean borrado_recursivo (string ls_modulo, string ls_usuario, string ls_opcion)
public function boolean insertar_recursivo (string ls_modulo, string ls_usuario, string ls_opcion, ref integer li_vueltas)
end prototypes

public function boolean borrado_recursivo (string ls_modulo, string ls_usuario, string ls_opcion);string ls_error,ls_opcion_hija
long ll_numero_hijos

dw_borrar_recursivo.SetFilter("opciones_por_modulo_id_opcion_padre = '"+ ls_opcion +" '")
dw_borrar_recursivo.Filter()
ll_numero_hijos=dw_borrar_recursivo.Rowcount()

//Messagebox("Mensaje","opcion: "+ls_opcion,Information!)

//Messagebox("Mensaje","Num hijos: "+string(ll_numero_hijos),Information!)
			
//si tiene hijos aun se eliminan estos primero
IF ll_numero_hijos > 0 Then
	
	Do while ll_numero_hijos > 0

		//Siempre lo que se borra realmente es la primera fila
		ls_opcion_hija=dw_borrar_recursivo.GetItemString(1,"id_opcion")
		borrado_recursivo(ls_modulo,ls_usuario,ls_opcion_hija)		
		
		dw_borrar_recursivo.SetFilter("opciones_por_modulo_id_opcion_padre = '"+ ls_opcion +" '")
		dw_borrar_recursivo.Filter()
		ll_numero_hijos=dw_borrar_recursivo.Rowcount()
		
	Loop

	//Una vez se hayan borrado los hijos se borra la opcion actual
	dw_borrar_recursivo.SetFilter("id_opcion = '"+ ls_opcion +" '")
	dw_borrar_recursivo.Filter()
	dw_borrar_recursivo.deleterow(1)
		
	Return True
	
Else//si no tiene hijos se puede proceder a eliminar la opcion

	dw_borrar_recursivo.SetFilter("id_opcion = '"+ ls_opcion +" '")
	dw_borrar_recursivo.Filter()
	dw_borrar_recursivo.deleterow(1)

  Return True

End IF


end function

public function boolean insertar_recursivo (string ls_modulo, string ls_usuario, string ls_opcion, ref integer li_vueltas);string ls_opcion_padre,ls_error,ls_opcion_read
long i,ll_fila_insertada
boolean lb_exito,lb_insertar

//ls_opcion=dw_opciones_modulo.GetItemString(ll_fila_opcion,"opciones_por_modulo_id_opcion")

//se valida que la opcion no este repetida
lb_insertar=True

IF ls_opcion=ls_modulo Then//se trata de las opciones de primer nivel de todos los modulos 
//Transacciones, informes, accesorios (Etc). en las cuales
//el nombre de la opcion es igual al nombre del modulo este caso es especial ya que no
//debe hacerse nada con ella y realmente aqui termina la ejecucion del script
	Return True
End IF

For i=1 to dw_opciones_modulo_usuario.Rowcount()
	ls_opcion_read=dw_opciones_modulo_usuario.GetItemstring(i,"id_opcion")
	
	IF ls_opcion_read=ls_opcion Then
		
		IF li_vueltas =1 Then //solo si esta repetida especificamente la opcion que se desea
		//insertar se considera esto como error
			Messagebox("Error","Opcion: "+ls_opcion+". Ya asignada",Stopsign!)
			Return False
		Else//si se trata de las opciones padres de la que se desea insertar. simplemente
		//se salta el ciclo y no se inserta nada
			lb_insertar=False
			Exit
		End IF
	End IF
Next

IF lb_insertar Then

	ll_fila_insertada=dw_opciones_modulo_usuario.Insertrow(0)
	
	dw_opciones_modulo_usuario.SetItem(ll_fila_insertada,"id_modulo",ls_modulo)
	dw_opciones_modulo_usuario.SetItem(ll_fila_insertada,"id_usuario",ls_usuario)
	dw_opciones_modulo_usuario.SetItem(ll_fila_insertada,"id_opcion",ls_opcion)
	dw_opciones_modulo_usuario.SetItem(ll_fila_insertada,"usuario",usuario)
	dw_opciones_modulo_usuario.SetItem(ll_fila_insertada,"fec_registro",datetime(today(),now()))
	
End IF

li_vueltas=li_vueltas + 1

SELECT dba.opciones_por_modulo.id_opcion_padre  
INTO :ls_opcion_padre  
FROM dba.opciones_por_modulo  
WHERE ( dba.opciones_por_modulo.id_modulo = :ls_modulo ) AND  
  		( dba.opciones_por_modulo.id_opcion = :ls_opcion )   ;
		  
CHOOSE case sqlca.sqlcode
CASE 100//Ya no tiene padre
	Return True	
CASE -1
	ls_error=sqlca.sqlerrtext
	Rollback using sqlca;
	Messagebox("Error","No se pudo leer registros sobre la tabla: dba.opciones_por_modulo ."+&
	+"Mensaje: "+ls_error,Stopsign!)
	Return False
CASE 0//se verifica si la opcion padre existe o no.

	lb_exito=insertar_recursivo(ls_modulo,ls_usuario,ls_opcion_padre,li_vueltas)	
	If Not(lb_exito) Then
		Return False
	Else
		Return True
	End IF
END CHOOSE

	
	


end function

event open;dw_lista_modulos.SetTransObject(sqlca)
dw_lista_usuarios.SetTRansObject(sqlca)
dw_lista_modulos.Retrieve()
dw_lista_usuarios.Retrieve()

dw_opciones_modulo.SetTRansObject(sqlca)
dw_opciones_modulo_usuario.SetTransObject(sqlca)
dw_borrar_recursivo.SetTransObject(sqlca)

COMMIT using sqlca;//se liberan las tablas
end event

on w_incluir_nueva_opcion_version_mejorada.create
this.cb_deseleccionar_todas=create cb_deseleccionar_todas
this.cb_salvar=create cb_salvar
this.dw_borrar_recursivo=create dw_borrar_recursivo
this.cb_quitar=create cb_quitar
this.cb_agregar=create cb_agregar
this.dw_opciones_modulo_usuario=create dw_opciones_modulo_usuario
this.dw_opciones_modulo=create dw_opciones_modulo
this.cb_cerrar=create cb_cerrar
this.dw_lista_usuarios=create dw_lista_usuarios
this.st_2=create st_2
this.st_1=create st_1
this.dw_lista_modulos=create dw_lista_modulos
this.Control[]={this.cb_deseleccionar_todas,&
this.cb_salvar,&
this.dw_borrar_recursivo,&
this.cb_quitar,&
this.cb_agregar,&
this.dw_opciones_modulo_usuario,&
this.dw_opciones_modulo,&
this.cb_cerrar,&
this.dw_lista_usuarios,&
this.st_2,&
this.st_1,&
this.dw_lista_modulos}
end on

on w_incluir_nueva_opcion_version_mejorada.destroy
destroy(this.cb_deseleccionar_todas)
destroy(this.cb_salvar)
destroy(this.dw_borrar_recursivo)
destroy(this.cb_quitar)
destroy(this.cb_agregar)
destroy(this.dw_opciones_modulo_usuario)
destroy(this.dw_opciones_modulo)
destroy(this.cb_cerrar)
destroy(this.dw_lista_usuarios)
destroy(this.st_2)
destroy(this.st_1)
destroy(this.dw_lista_modulos)
end on

type cb_deseleccionar_todas from commandbutton within w_incluir_nueva_opcion_version_mejorada
int X=3214
int Y=412
int Width=1399
int Height=144
int TabOrder=50
boolean Enabled=false
string Text="Deseleccionar Todas"
int TextSize=-9
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;dw_opciones_modulo_usuario.Selectrow(0,false)
end event

type cb_salvar from commandbutton within w_incluir_nueva_opcion_version_mejorada
int X=3232
int Y=200
int Width=517
int Height=144
int TabOrder=70
string Text="Guardar Cambios"
int TextSize=-9
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;integer li_resultado
				
li_resultado=dw_opciones_modulo_usuario.Update(True,False)
//se asientan los cambios

IF li_resultado=1 Then
	Commit Using sqlca;
	Messagebox("Mensaje","Opciones actualizadas exitosamente.",Information!)
Else
	Rollback using sqlca;
	Messagebox("Mensaje","NO se pudo actualizar los cambios.",stopsign!)
End IF

end event

type dw_borrar_recursivo from datawindow within w_incluir_nueva_opcion_version_mejorada
int X=2098
int Y=136
int Width=1381
int Height=492
int TabOrder=60
boolean Visible=false
string DataObject="dw_opciones_modulo_usuario_edicion_borra"
BorderStyle BorderStyle=StyleLowered!
boolean LiveScroll=true
end type

type cb_quitar from commandbutton within w_incluir_nueva_opcion_version_mejorada
int X=2002
int Y=1228
int Width=137
int Height=72
int TabOrder=40
string Text="<<"
int TextSize=-8
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;long ll_fila_opcion_modulo_usuario,ll_fila_modulos,ll_fila_usuario
string ls_opcion,ls_modulo,ls_usuario
integer li_respuesta
Boolean lb_exito

ll_fila_modulos=dw_lista_modulos.Getselectedrow(0)

IF ll_fila_modulos > 0 Then
	
	ls_modulo=dw_lista_modulos.GetItemString(ll_fila_modulos,"id_modulo")
	
	ll_fila_usuario=dw_lista_usuarios.GetSelectedrow(0)
	
	IF ll_fila_usuario > 0 Then
		
		ls_usuario=dw_lista_usuarios.GetItemString(ll_fila_usuario,"id_usuario")	
		
		
		
		ll_fila_opcion_modulo_usuario=dw_opciones_modulo_usuario.Getselectedrow(0)
		
		
		
		IF ll_fila_opcion_modulo_usuario > 0 Then
			
			ls_opcion=dw_opciones_modulo_usuario.GetItemString(ll_fila_opcion_modulo_usuario,"id_opcion")
		
			li_respuesta=Messagebox("Advertencia","Esta seguro de eliminar esta opcion y sus "+&
			+"descendientes (en caso de tenerlas) para este usuario ?",Question!,Yesno!,2)
		
			IF li_respuesta=2 Then//se arrepintio
				Return
			End IF
		
	     //se recupera nuevamente todas las opciones que tiene este usuario en el modulo 
		  //elegido con el fin de a partir de esto empezar a eliminar opciones
		  dw_borrar_recursivo.Retrieve(ls_modulo,ls_usuario)			
			//se invoca funcion para que de manera recursiva elimine todos las opciones
			//hijas de la que va a ser eliminada
			
			lb_exito=borrado_recursivo(ls_modulo,ls_usuario,ls_opcion)		
			
			IF not(lb_exito) Then
				Rollback using sqlca;
				Messagebox("Mensaje","No se pudo eliminar la opcion: "+ls_opcion,Stopsign!)
				Return
			Else
				//se salvan los cambios
				dw_borrar_recursivo.Update(True,False)
				//se asientan los cambios
				Commit Using sqlca;
				Messagebox("Mensaje","Opción eliminada exitosamente.",Information!)
			End IF
			
			
			
			
			//se recupera para mostrar los cambios
			dw_opciones_modulo_usuario.Retrieve(ls_modulo,ls_usuario)
			
			//si se elimino la opcion exitosamente la idea es poner el foco en la opcion
			//inmediatamente anterior a la que se acaba de eliminar
			IF lb_exito Then
				//se valida que la opcion este en posicion superior a 1 para que al 
				//restarle uno no de un valor negativo
				IF ll_fila_opcion_modulo_usuario > 1  Then
					dw_opciones_modulo_usuario.Scrolltorow(ll_fila_opcion_modulo_usuario - 1)
					dw_opciones_modulo_usuario.SetFocus()
				End IF
			End IF
		
		Else
			Messagebox("Error","No hay opcion seleccionada",Stopsign!)
		End If
		
		
		
		
	Else
		Messagebox("Error","No hay usuario seleccionado",Stopsign!)
	End IF

Else
	Messagebox("Error","No hay modulo seleccionado",Stopsign!)
End IF


end event
type cb_agregar from commandbutton within w_incluir_nueva_opcion_version_mejorada
int X=2002
int Y=1052
int Width=137
int Height=72
int TabOrder=30
string Text=">>"
int TextSize=-8
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;long ll_fila_modulos,ll_fila_usuario,ll_fila_opcion,i
string ls_modulo,ls_usuario,ls_opcion,ls_opcion_read
boolean lb_exito
integer li_vueltas,li_respuesta

ll_fila_modulos=dw_lista_modulos.Getselectedrow(0)

IF ll_fila_modulos > 0 Then
	
	ls_modulo=dw_lista_modulos.GetItemString(ll_fila_modulos,"id_modulo")
	
	ll_fila_usuario=dw_lista_usuarios.GetSelectedrow(0)
	
	IF ll_fila_usuario > 0 Then
		ls_usuario=dw_lista_usuarios.GetItemString(ll_fila_usuario,"id_usuario")		
		
		ll_fila_opcion=dw_opciones_modulo.GetSelectedrow(0)
		
		IF ll_fila_opcion > 0 Then
			
			ls_opcion=dw_opciones_modulo.GetItemString(ll_fila_opcion,"opciones_por_modulo_id_opcion")
			
			li_respuesta=Messagebox("Advertencia","Esta seguro de insertar esta opcion y sus "+&
			+"padres (en caso de tenerlas) para este usuario ?",Question!,Yesno!,2)
		
			IF li_respuesta=2 Then//se arrepintio
				Return
			End IF
			
			//Una vez se ha asignado la nueva opcion. se empieza a verificar si las opciones padres
			//de esta ya existen para insertarlas tambien a fin de que los caminos queden completos

			li_vueltas=1
			
			lb_exito=insertar_recursivo(ls_modulo,ls_usuario,ls_opcion,li_vueltas)		
			
			IF not(lb_exito) Then
				Rollback using sqlca;
				Messagebox("Mensaje","No se pudo insertar la opcion: "+ls_opcion,Stopsign!)
				Return
			Else
				//se salvan los cambios
				dw_opciones_modulo_usuario.Update(True,False)
				//se asientan los cambios
				Commit Using sqlca;
				Messagebox("Mensaje","Opción Insertada exitosamente.",Information!)
				
			End IF
			
			//se recupera para mostrar el cambio
			dw_opciones_modulo_usuario.Retrieve(ls_modulo,ls_usuario)
			
			//si se inserto la opcion exitosamente la idea es poner el foco en la opcion que
			//se acaba de insertar
			IF lb_exito Then
				For i=1 to dw_opciones_modulo_usuario.Rowcount()
					ls_opcion_read=dw_opciones_modulo_usuario.GetItemString(i,"id_opcion")
					//si se encuentra la opcion se da foco sobre ella
					IF ls_opcion_read=ls_opcion Then
						Exit
					End IF	
				Next
				
				//si encontro la opcion en el recorrido
				IF i <= dw_opciones_modulo_usuario.rowcount() Then
					dw_opciones_modulo_usuario.Scrolltorow(i)
					dw_opciones_modulo_usuario.SetFocus()
				End IF
			End IF
			
		Else
			Messagebox("Error","No hay opcion seleccionada",Stopsign!)					
		End IF
	
	Else
		Messagebox("Error","No hay usuario seleccionado",Stopsign!)		
	End IF
Else
	Messagebox("Error","No hay modulo seleccionado",Stopsign!)
End IF
end event

type dw_opciones_modulo_usuario from datawindow within w_incluir_nueva_opcion_version_mejorada
int X=2162
int Y=648
int Width=2432
int Height=1968
int TabOrder=20
string DataObject="dw_opciones_modulo_usuario_edicion"
BorderStyle BorderStyle=StyleLowered!
boolean HScrollBar=true
boolean VScrollBar=true
boolean LiveScroll=true
end type

event clicked;Long ll_fila_click

ll_fila_click=This.Getclickedrow()

IF ll_fila_click > 0 Then
	This.Selectrow(0,false)
	This.Selectrow(ll_fila_click,True)
End IF
end event

type dw_opciones_modulo from datawindow within w_incluir_nueva_opcion_version_mejorada
int X=9
int Y=648
int Width=1966
int Height=1968
int TabOrder=80
string DataObject="dw_opciones_modulo_editar_usuario"
BorderStyle BorderStyle=StyleLowered!
boolean HScrollBar=true
boolean VScrollBar=true
boolean LiveScroll=true
end type

event clicked;Long ll_fila_click

ll_fila_click=This.Getclickedrow()

IF ll_fila_click > 0 Then
	This.Selectrow(0,false)
	This.Selectrow(ll_fila_click,True)
End IF
end event

type cb_cerrar from commandbutton within w_incluir_nueva_opcion_version_mejorada
int X=3214
int Y=48
int Width=325
int Height=72
int TabOrder=10
string Text="&Cerrar"
int TextSize=-9
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;close(parent)
end event

type dw_lista_usuarios from datawindow within w_incluir_nueva_opcion_version_mejorada
int X=1861
int Y=100
int Width=1271
int Height=500
int TabOrder=50
string DataObject="dw_lista_usuarios"
BorderStyle BorderStyle=StyleLowered!
boolean VScrollBar=true
boolean LiveScroll=true
end type

event clicked;long ll_fila_click,ll_fila_modulos
string ls_modulo,ls_usuario

//Se valida primero que todo que se haya seleccionado solo una fila

ll_fila_modulos=dw_lista_modulos.Getselectedrow(0)

IF ll_fila_modulos > 0 Then
	
	ls_modulo=dw_lista_modulos.GetItemString(ll_fila_modulos,"id_modulo")
	
	ll_fila_click=This.Getclickedrow()
	
	IF ll_fila_click > 0 Then
		This.Selectrow(0,false)
		This.Selectrow(ll_fila_click,True)
		ls_usuario=This.GetItemString(ll_fila_click,"id_usuario")		
	
		dw_opciones_modulo_usuario.Retrieve(ls_modulo,ls_usuario)	
	
	End IF
	
Else
	Messagebox("Error","No hay modulo seleccionado",Stopsign!)
End IF
end event

type st_2 from statictext within w_incluir_nueva_opcion_version_mejorada
int X=1861
int Y=16
int Width=1271
int Height=76
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleRaised!
string Text="Usuarios"
Alignment Alignment=Center!
boolean FocusRectangle=false
long TextColor=65535
long BackColor=8388608
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_1 from statictext within w_incluir_nueva_opcion_version_mejorada
int X=9
int Y=16
int Width=1655
int Height=76
boolean Enabled=false
boolean Border=true
BorderStyle BorderStyle=StyleRaised!
string Text="Módulo"
Alignment Alignment=Center!
boolean FocusRectangle=false
long TextColor=65535
long BackColor=8388608
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type dw_lista_modulos from datawindow within w_incluir_nueva_opcion_version_mejorada
int X=9
int Y=100
int Width=1655
int Height=500
int TabOrder=90
string DataObject="dw_lista_modulos"
BorderStyle BorderStyle=StyleLowered!
boolean VScrollBar=true
boolean LiveScroll=true
end type

event clicked;long ll_fila_click
string ls_modulo

ll_fila_click=This.Getclickedrow()

IF ll_fila_click > 0 Then
	This.Selectrow(0,false)
	This.Selectrow(ll_fila_click,True)
	ls_modulo=This.GetItemString(ll_fila_click,"id_modulo")
	
	dw_opciones_modulo.Retrieve(ls_modulo)
	dw_opciones_modulo_usuario.Reset()//se limpia opciones por modulo y usuario
End IF
end event

