$PBExportHeader$w_incluir_nueva_opcion_x_modulo.srw
forward
global type w_incluir_nueva_opcion_x_modulo from Window
end type
type sle_descripcion from singlelineedit within w_incluir_nueva_opcion_x_modulo
end type
type st_4 from statictext within w_incluir_nueva_opcion_x_modulo
end type
type cb_insetar_opcion from commandbutton within w_incluir_nueva_opcion_x_modulo
end type
type st_2 from statictext within w_incluir_nueva_opcion_x_modulo
end type
type sle_opcion_padre from singlelineedit within w_incluir_nueva_opcion_x_modulo
end type
type st_3 from statictext within w_incluir_nueva_opcion_x_modulo
end type
type sle_opcion from singlelineedit within w_incluir_nueva_opcion_x_modulo
end type
type cb_cerrar from commandbutton within w_incluir_nueva_opcion_x_modulo
end type
type st_1 from statictext within w_incluir_nueva_opcion_x_modulo
end type
type dw_lista_modulos from datawindow within w_incluir_nueva_opcion_x_modulo
end type
end forward

global type w_incluir_nueva_opcion_x_modulo from Window
int X=823
int Y=360
int Width=3456
int Height=1828
boolean TitleBar=true
string Title="Incluir Opciones X Modulo"
long BackColor=81324524
boolean ControlMenu=true
boolean MinBox=true
boolean MaxBox=true
boolean Resizable=true
sle_descripcion sle_descripcion
st_4 st_4
cb_insetar_opcion cb_insetar_opcion
st_2 st_2
sle_opcion_padre sle_opcion_padre
st_3 st_3
sle_opcion sle_opcion
cb_cerrar cb_cerrar
st_1 st_1
dw_lista_modulos dw_lista_modulos
end type
global w_incluir_nueva_opcion_x_modulo w_incluir_nueva_opcion_x_modulo

event open;dw_lista_modulos.SetTransObject(sqlca)
dw_lista_modulos.Retrieve()
COMMIT using sqlca;//se liberan las tablas
end event
on w_incluir_nueva_opcion_x_modulo.create
this.sle_descripcion=create sle_descripcion
this.st_4=create st_4
this.cb_insetar_opcion=create cb_insetar_opcion
this.st_2=create st_2
this.sle_opcion_padre=create sle_opcion_padre
this.st_3=create st_3
this.sle_opcion=create sle_opcion
this.cb_cerrar=create cb_cerrar
this.st_1=create st_1
this.dw_lista_modulos=create dw_lista_modulos
this.Control[]={this.sle_descripcion,&
this.st_4,&
this.cb_insetar_opcion,&
this.st_2,&
this.sle_opcion_padre,&
this.st_3,&
this.sle_opcion,&
this.cb_cerrar,&
this.st_1,&
this.dw_lista_modulos}
end on

on w_incluir_nueva_opcion_x_modulo.destroy
destroy(this.sle_descripcion)
destroy(this.st_4)
destroy(this.cb_insetar_opcion)
destroy(this.st_2)
destroy(this.sle_opcion_padre)
destroy(this.st_3)
destroy(this.sle_opcion)
destroy(this.cb_cerrar)
destroy(this.st_1)
destroy(this.dw_lista_modulos)
end on

type sle_descripcion from singlelineedit within w_incluir_nueva_opcion_x_modulo
int X=1458
int Y=272
int Width=1230
int Height=84
int TabOrder=40
BorderStyle BorderStyle=StyleLowered!
boolean AutoHScroll=false
long TextColor=33554432
int TextSize=-8
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_4 from statictext within w_incluir_nueva_opcion_x_modulo
int X=946
int Y=272
int Width=507
int Height=84
boolean Enabled=false
string Text="Descripcion: "
Alignment Alignment=Center!
boolean FocusRectangle=false
long TextColor=33554432
long BackColor=67108864
int TextSize=-8
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type cb_insetar_opcion from commandbutton within w_incluir_nueva_opcion_x_modulo
int X=1367
int Y=896
int Width=622
int Height=84
int TabOrder=50
string Text="Insertar Opcion"
int TextSize=-9
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;long ll_fila_modulo,ll_consecutivo_padre,ll_nivel_padre,ll_consecutivo_hijo,ll_nivel_hijo
string ls_modulo,ls_opcion,ls_opcion_padre,ls_descripcion,ls_descripcion_actual,ls_error
datetime ldt_ahora

ll_fila_modulo=dw_lista_modulos.Getselectedrow(0)
IF Isnull(ll_fila_modulo) or ll_fila_modulo=0 Then
	Messagebox("Error","Debe seleccionar módulo",StopSign!)
	Return
End IF

ls_modulo=dw_lista_modulos.GetItemString(ll_fila_modulo,"id_modulo")

IF isnull(sle_opcion.text) or sle_opcion.text='' Then
	Messagebox("Error","Digitar opcion",Stopsign!)
	Return
End IF

ls_opcion=sle_opcion.text

IF isnull(sle_descripcion.text) or sle_descripcion.text='' Then
	Messagebox("Error","Digitar descripcion",Stopsign!)
	Return
End IF

ls_descripcion=sle_descripcion.text

IF isnull(sle_opcion_padre.text) or sle_opcion_padre.text='' Then
	Messagebox("Error","Digitar opcion Padre",Stopsign!)
	Return
End IF

ls_opcion_padre=sle_opcion_padre.text

//se valida que esta opcion no este repetida

SELECT dba.opciones_por_modulo.descripcion  
INTO :ls_descripcion_actual  
FROM dba.opciones_por_modulo  
WHERE ( dba.opciones_por_modulo.id_modulo = :ls_modulo ) AND  
      ( dba.opciones_por_modulo.id_opcion = :ls_opcion )   ;
		
CHOOSE CASE sqlca.sqlcode
CASE -1 
	ls_error=sqlca.sqlerrtext
	Rollback using sqlca;
	Messagebox("Error","NO se pudo leer registros sobre la tabla: dba.opciones_por_modulo "+&
	+". Mensaje: "+ls_error,Stopsign!)
	Return	
CASE 0//ya estaba
	Rollback using sqlca;
	Messagebox("Error","La opciones : "+ls_opcion+". Ya existe en el modulo : "+ls_modulo+&
	+" por lo tanto no puede ser incluida nuevamente",Stopsign!)
	Return	
END CHOOSE

//el 100 no se valida porque significa que la opcion no existe y por lo tanto se puede continuar
//se consulta nivel del padre	

SELECT dba.opciones_por_modulo.consecutivo,   
       dba.opciones_por_modulo.nivel  
INTO :ll_consecutivo_padre,   
     :ll_nivel_padre  
FROM dba.opciones_por_modulo  
WHERE ( dba.opciones_por_modulo.id_modulo = :ls_modulo ) AND  
      ( dba.opciones_por_modulo.id_opcion = :ls_opcion_padre )   ;
		
CHOOSE CASE sqlca.sqlcode
CASE -1 
	ls_error=sqlca.sqlerrtext
	Rollback using sqlca;
	Messagebox("Error","NO se pudo leer registros sobre la tabla: dba.opciones_por_modulo "+&
	+". Mensaje: "+ls_error,Stopsign!)
	Return	
CASE 100//ya estaba
	Rollback using sqlca;
	Messagebox("Error","La opcion padre: "+ls_opcion_padre+". no se encontró en el modulo : "+ls_modulo+&
	+" para consultar su nivel",Stopsign!)
	Return	
END CHOOSE

IF isnull(ll_consecutivo_padre) Then
	Rollback using sqlca;
	Messagebox("Error","la opcion padre no tiene consecutivo asignado",Stopsign!)
	Return
End IF

ll_consecutivo_hijo=ll_consecutivo_padre//por ahora le doy el mismo consecutivo del padre

IF isnull(ll_nivel_padre) Then
	Rollback using sqlca;
	Messagebox("Error","la opcion padre no tiene nivel asignado",Stopsign!)
	Return
End IF

ll_nivel_hijo=ll_nivel_padre - 1

ldt_ahora=datetime(today(),now())

INSERT INTO dba.opciones_por_modulo  
		( id_modulo,   
		  id_opcion,   
		  descripcion,   
		  id_opcion_padre,   
		  id_usuario,   
		  fec_registro,   
		  consecutivo,   
		  nivel,   
		  objeto )  
VALUES ( :ls_modulo,   
		  :ls_opcion,   
		  :ls_descripcion,   
		  :ls_opcion_padre,   
		  :usuario,   
		  :ldt_ahora,   
		  :ll_consecutivo_hijo,   
		  :ll_nivel_hijo,   
		  null )  ;
		  
IF sqlca.sqlcode<>0 Then
	ls_error=sqlca.sqlerrtext
	Rollback using sqlca;
	Messagebox("Error","NO se pudo insertar registros sobre la tabla: dba.opciones_por_modulo "+&
	+". Mensaje: "+ls_error,Stopsign!)
	Return
End iF

	
	
	

end event
type st_2 from statictext within w_incluir_nueva_opcion_x_modulo
int X=946
int Y=404
int Width=507
int Height=84
boolean Enabled=false
string Text="Opcion Padre:"
Alignment Alignment=Center!
boolean FocusRectangle=false
long TextColor=33554432
long BackColor=67108864
int TextSize=-8
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type sle_opcion_padre from singlelineedit within w_incluir_nueva_opcion_x_modulo
int X=1458
int Y=404
int Width=1230
int Height=84
int TabOrder=40
BorderStyle BorderStyle=StyleLowered!
boolean AutoHScroll=false
long TextColor=33554432
int TextSize=-8
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type st_3 from statictext within w_incluir_nueva_opcion_x_modulo
int X=946
int Y=112
int Width=507
int Height=84
boolean Enabled=false
string Text="Opción"
Alignment Alignment=Center!
boolean FocusRectangle=false
long BackColor=81324524
int TextSize=-9
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type sle_opcion from singlelineedit within w_incluir_nueva_opcion_x_modulo
int X=1458
int Y=112
int Width=1230
int Height=84
int TabOrder=20
BorderStyle BorderStyle=StyleLowered!
boolean AutoHScroll=false
long TextColor=33554432
int TextSize=-8
int Weight=400
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type cb_cerrar from commandbutton within w_incluir_nueva_opcion_x_modulo
int X=1262
int Y=1232
int Width=864
int Height=84
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

type st_1 from statictext within w_incluir_nueva_opcion_x_modulo
int X=59
int Y=72
int Width=727
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

type dw_lista_modulos from datawindow within w_incluir_nueva_opcion_x_modulo
int X=59
int Y=156
int Width=727
int Height=1200
int TabOrder=30
string DataObject="dw_lista_modulos"
BorderStyle BorderStyle=StyleLowered!
boolean VScrollBar=true
boolean LiveScroll=true
end type

event clicked;long ll_fila_click

ll_fila_click=This.Getclickedrow()

IF ll_fila_click > 0 Then
	This.Selectrow(0,false)
	This.Selectrow(ll_fila_click,True)
End IF
end event

