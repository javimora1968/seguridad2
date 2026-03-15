$PBExportHeader$w_detalle_usuario.srw
forward
global type w_detalle_usuario from Window
end type
type cb_ver_firma from commandbutton within w_detalle_usuario
end type
type cb_asignar_firma from commandbutton within w_detalle_usuario
end type
type p_firma from picture within w_detalle_usuario
end type
type cb_denegar2 from commandbutton within w_detalle_usuario
end type
type cb_denegar4 from commandbutton within w_detalle_usuario
end type
type cb_denegar3 from commandbutton within w_detalle_usuario
end type
type cb_denegar6 from commandbutton within w_detalle_usuario
end type
type cb_denegar7 from commandbutton within w_detalle_usuario
end type
type cb_denegar5 from commandbutton within w_detalle_usuario
end type
type cb_denegar1 from commandbutton within w_detalle_usuario
end type
type cb_permitir5 from commandbutton within w_detalle_usuario
end type
type cb_permitir7 from commandbutton within w_detalle_usuario
end type
type cb_permitir6 from commandbutton within w_detalle_usuario
end type
type cb_permitir3 from commandbutton within w_detalle_usuario
end type
type cb_permitir4 from commandbutton within w_detalle_usuario
end type
type cb_permitir2 from commandbutton within w_detalle_usuario
end type
type cb_permitir1 from commandbutton within w_detalle_usuario
end type
type dw_horarios from datawindow within w_detalle_usuario
end type
type st_1 from statictext within w_detalle_usuario
end type
type cb_1 from commandbutton within w_detalle_usuario
end type
type cb_cancel from commandbutton within w_detalle_usuario
end type
type cb_ok from commandbutton within w_detalle_usuario
end type
type dw_person from uo_dwlist within w_detalle_usuario
end type
end forward

global type w_detalle_usuario from Window
int X=146
int Y=200
int Width=3406
int Height=2080
boolean TitleBar=true
string Title="Detalle Usuario"
long BackColor=12632256
boolean ControlMenu=true
WindowType WindowType=response!
cb_ver_firma cb_ver_firma
cb_asignar_firma cb_asignar_firma
p_firma p_firma
cb_denegar2 cb_denegar2
cb_denegar4 cb_denegar4
cb_denegar3 cb_denegar3
cb_denegar6 cb_denegar6
cb_denegar7 cb_denegar7
cb_denegar5 cb_denegar5
cb_denegar1 cb_denegar1
cb_permitir5 cb_permitir5
cb_permitir7 cb_permitir7
cb_permitir6 cb_permitir6
cb_permitir3 cb_permitir3
cb_permitir4 cb_permitir4
cb_permitir2 cb_permitir2
cb_permitir1 cb_permitir1
dw_horarios dw_horarios
st_1 st_1
cb_1 cb_1
cb_cancel cb_cancel
cb_ok cb_ok
dw_person dw_person
end type
global w_detalle_usuario w_detalle_usuario

type variables
string id_usu, nombre_usu
long il_personid,error1
end variables

event open;integer i
long ll_fila_insertada,ll_filas_recuperadas,ll_fila_usuario
datetime ldt_ahora

//W_principal_manejador_menus.Enabled = False
id_usu= message.stringparm

dw_person.SetTransObject(sqlca)
dw_person.f_highlight(FALSE)
dw_horarios.SetTransObject(sqlca)

dw_person.Modify("e_mail1.password=1")

IF id_usu <> "0" THEN //es para modificar

  dw_person.Retrieve(id_usu)
  ll_filas_recuperadas=dw_horarios.Retrieve(id_usu)  
  
  IF ll_filas_recuperadas=0 Then //el usuario seleccionado no tiene asignado horario de
  //acceso a los sistemas. se le da tratamiento como de nuevo en lo que respecta a horarios
  
	  //se lee hora del servidor
	  ldt_ahora=f_hora_servidor()
	  
	  For i=1 to 7
		
		ll_fila_insertada=dw_horarios.Insertrow(0)
		
		dw_horarios.SetItem(ll_fila_insertada,"id_modulo",'m_seguridad')//se llena con m_seguridad
		//por ahora
		dw_horarios.SetItem(ll_fila_insertada,"id_usuario",id_usu)
		dw_horarios.SetItem(ll_fila_insertada,"dia",i)	
		
		//Por ahora habilito por defecto todas las horas de todos los dias
		dw_horarios.SetItem(ll_fila_insertada,"hora_0",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_1",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_2",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_3",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_4",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_5",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_6",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_7",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_8",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_9",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_10",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_11",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_12",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_13",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_14",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_15",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_16",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_17",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_18",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_19",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_20",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_21",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_22",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"hora_23",'S')		
		dw_horarios.SetItem(ll_fila_insertada,"id_usuario_registra",usuario)			
		dw_horarios.SetItem(ll_fila_insertada,"fec_registro",ldt_ahora)
		
		
	  Next
  
  End IF
  
  
ELSE//para insertar

  ll_fila_usuario=dw_person.InsertRow(0)
  
  //se lee hora del servidor
  ldt_ahora=f_hora_servidor()
  
  dw_person.SetItem(ll_fila_usuario,"fec_cambio_clave",ldt_ahora)
  
  dw_horarios.AcceptText()
  
  For i=1 to 7
	
	ll_fila_insertada=dw_horarios.Insertrow(0)
	
	dw_horarios.SetItem(ll_fila_insertada,"id_modulo",'m_seguridad')//se llena con m_seguridad
	//por ahora
	dw_horarios.SetItem(ll_fila_insertada,"id_usuario",id_usu)
	dw_horarios.SetItem(ll_fila_insertada,"dia",i)	
	
	//Por ahora habilito por defecto todas las horas de todos los dias
	dw_horarios.SetItem(ll_fila_insertada,"hora_0",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_1",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_2",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_3",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_4",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_5",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_6",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_7",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_8",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_9",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_10",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_11",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_12",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_13",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_14",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_15",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_16",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_17",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_18",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_19",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_20",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_21",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_22",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"hora_23",'S')		
	dw_horarios.SetItem(ll_fila_insertada,"id_usuario_registra",usuario)			
	dw_horarios.SetItem(ll_fila_insertada,"fec_registro",ldt_ahora)
	
  Next
  
  
END IF
end event

on w_detalle_usuario.create
this.cb_ver_firma=create cb_ver_firma
this.cb_asignar_firma=create cb_asignar_firma
this.p_firma=create p_firma
this.cb_denegar2=create cb_denegar2
this.cb_denegar4=create cb_denegar4
this.cb_denegar3=create cb_denegar3
this.cb_denegar6=create cb_denegar6
this.cb_denegar7=create cb_denegar7
this.cb_denegar5=create cb_denegar5
this.cb_denegar1=create cb_denegar1
this.cb_permitir5=create cb_permitir5
this.cb_permitir7=create cb_permitir7
this.cb_permitir6=create cb_permitir6
this.cb_permitir3=create cb_permitir3
this.cb_permitir4=create cb_permitir4
this.cb_permitir2=create cb_permitir2
this.cb_permitir1=create cb_permitir1
this.dw_horarios=create dw_horarios
this.st_1=create st_1
this.cb_1=create cb_1
this.cb_cancel=create cb_cancel
this.cb_ok=create cb_ok
this.dw_person=create dw_person
this.Control[]={this.cb_ver_firma,&
this.cb_asignar_firma,&
this.p_firma,&
this.cb_denegar2,&
this.cb_denegar4,&
this.cb_denegar3,&
this.cb_denegar6,&
this.cb_denegar7,&
this.cb_denegar5,&
this.cb_denegar1,&
this.cb_permitir5,&
this.cb_permitir7,&
this.cb_permitir6,&
this.cb_permitir3,&
this.cb_permitir4,&
this.cb_permitir2,&
this.cb_permitir1,&
this.dw_horarios,&
this.st_1,&
this.cb_1,&
this.cb_cancel,&
this.cb_ok,&
this.dw_person}
end on

on w_detalle_usuario.destroy
destroy(this.cb_ver_firma)
destroy(this.cb_asignar_firma)
destroy(this.p_firma)
destroy(this.cb_denegar2)
destroy(this.cb_denegar4)
destroy(this.cb_denegar3)
destroy(this.cb_denegar6)
destroy(this.cb_denegar7)
destroy(this.cb_denegar5)
destroy(this.cb_denegar1)
destroy(this.cb_permitir5)
destroy(this.cb_permitir7)
destroy(this.cb_permitir6)
destroy(this.cb_permitir3)
destroy(this.cb_permitir4)
destroy(this.cb_permitir2)
destroy(this.cb_permitir1)
destroy(this.dw_horarios)
destroy(this.st_1)
destroy(this.cb_1)
destroy(this.cb_cancel)
destroy(this.cb_ok)
destroy(this.dw_person)
end on

type cb_ver_firma from commandbutton within w_detalle_usuario
int X=1253
int Y=1116
int Width=485
int Height=92
int TabOrder=20
string Text="&Ver Firma"
int TextSize=-8
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;STRING ls_usuario
blob lb_foto

SetPointer(HourGlass!)
//Inicialmente se limpia el picture para garantizar que en los no tengan foto  asignada
//no se muestre nada
p_firma.picturename = ""	
ls_usuario = dw_person.GetItemString(dw_person.GetRow(),"id_usuario")

SELECTBLOB dba.usuarios.firma
INTO :lb_foto
FROM dba.usuarios  
WHERE ( dba.usuarios.id_usuario = :ls_usuario )   ;
CHOOSE CASE sqlca.sqlcode
CASE -1
	//Si falla lo hago al metodo antiguo
	MessageBox("Atención","No se pudo recuperar la firma del Empleado.")
	p_firma.picturename = ""
CASE 100
	Rollback using sqlca;
	Messagebox("Error","No se encontró el usuario: "+ls_usuario,Stopsign!)
	Return 1
End choose

IF IsNull(lb_foto) Then 
	p_firma.picturename=""			
Else
	p_firma.SetPicture(lb_foto)		
End IF		

end event
type cb_asignar_firma from commandbutton within w_detalle_usuario
int X=1253
int Y=1024
int Width=485
int Height=92
int TabOrder=20
string Text="Asignar &Firma"
int TextSize=-8
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//Este articulo muestra la manera de incluir un BMP o un archivo gráfico en un campo Bynary de una base de datos.
string ls_defext = "BMP" 
string ls_filtro = "Archivos JPG(*.jpg),*.jpg, Archivos GIFs(*.gif),*.gif, Mapa de Bits(*.bmp),*.bmp" 
integer li_resul_abre,ii_fh,i
string ls_named, ls_parametro, ls_error, ls_usuario, nombre_archivo, nombre_completo
long ll_fila_actual
blob gb_blob

li_resul_abre = GetFileOpenName("Seleccionar Archivo",nombre_completo,ls_named,ls_defext,ls_filtro) 
IF li_resul_abre = 1 Then 
   ll_fila_actual = dw_person.Getrow()
   ii_fh = fileopen(nombre_completo, streammode!)     
   IF ii_fh = 1 Then 
      fileread(ii_fh, gb_blob) 
      IF IsNull(gb_blob) Then 
         MessageBox("A","Blob nulo") 
         fileclose(ii_fh) 
      Else
         fileclose(ii_fh)                             
      End IF
      p_firma.setpicture(gb_blob) 
		ls_usuario = dw_person.GetItemString(ll_fila_actual,"id_usuario")
    	UPDATEBLOB dba.usuarios 
      SET firma = :gb_blob  
      WHERE ( dba.usuarios.id_usuario = :ls_usuario ) ;
		CHOOSE CASE sqlca.sqlcode
		CASE -1
			ls_error = sqlca.sqlerrtext
			ROLLBACK USING SQLCA;
			Messagebox("Error","No se pudo actualizar registros sobre la tabla: dba.usuarios. "+&
			+"Mensaje: "+ls_error,Stopsign!)
			Return 
		CASE 100
			Rollback using sqlca;
			Messagebox("Error","No se encontro el usuario " + ls_usuario,Stopsign!)
			Return
		END CHOOSE
		COMMIT USING SQLCA; 
	End IF
End IF 

end event

type p_firma from picture within w_detalle_usuario
int X=2409
int Y=996
int Width=946
int Height=312
boolean Border=true
BorderStyle BorderStyle=StyleLowered!
boolean FocusRectangle=false
end type

type cb_denegar2 from commandbutton within w_detalle_usuario
int X=2757
int Y=1420
int Width=325
int Height=60
int TabOrder=120
string Text="Denegar"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(2,"hora_0",'N')
dw_horarios.SetItem(2,"hora_1",'N')	
dw_horarios.SetItem(2,"hora_2",'N')
dw_horarios.SetItem(2,"hora_3",'N')
dw_horarios.SetItem(2,"hora_4",'N')
dw_horarios.SetItem(2,"hora_5",'N')
dw_horarios.SetItem(2,"hora_6",'N')
dw_horarios.SetItem(2,"hora_7",'N')
dw_horarios.SetItem(2,"hora_8",'N')
dw_horarios.SetItem(2,"hora_9",'N')
dw_horarios.SetItem(2,"hora_10",'N')	
dw_horarios.SetItem(2,"hora_11",'N')
dw_horarios.SetItem(2,"hora_12",'N')
dw_horarios.SetItem(2,"hora_13",'N')
dw_horarios.SetItem(2,"hora_14",'N')
dw_horarios.SetItem(2,"hora_15",'N')
dw_horarios.SetItem(2,"hora_16",'N')
dw_horarios.SetItem(2,"hora_17",'N')
dw_horarios.SetItem(2,"hora_18",'N')
dw_horarios.SetItem(2,"hora_19",'N')
dw_horarios.SetItem(2,"hora_20",'N')
dw_horarios.SetItem(2,"hora_21",'N')
dw_horarios.SetItem(2,"hora_22",'N')
dw_horarios.SetItem(2,"hora_23",'N')

end event

type cb_denegar4 from commandbutton within w_detalle_usuario
int X=2757
int Y=1564
int Width=325
int Height=60
int TabOrder=150
string Text="Denegar"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(4,"hora_0",'N')
dw_horarios.SetItem(4,"hora_1",'N')	
dw_horarios.SetItem(4,"hora_2",'N')
dw_horarios.SetItem(4,"hora_3",'N')
dw_horarios.SetItem(4,"hora_4",'N')
dw_horarios.SetItem(4,"hora_5",'N')
dw_horarios.SetItem(4,"hora_6",'N')
dw_horarios.SetItem(4,"hora_7",'N')
dw_horarios.SetItem(4,"hora_8",'N')
dw_horarios.SetItem(4,"hora_9",'N')
dw_horarios.SetItem(4,"hora_10",'N')	
dw_horarios.SetItem(4,"hora_11",'N')
dw_horarios.SetItem(4,"hora_12",'N')
dw_horarios.SetItem(4,"hora_13",'N')
dw_horarios.SetItem(4,"hora_14",'N')
dw_horarios.SetItem(4,"hora_15",'N')
dw_horarios.SetItem(4,"hora_16",'N')
dw_horarios.SetItem(4,"hora_17",'N')
dw_horarios.SetItem(4,"hora_18",'N')
dw_horarios.SetItem(4,"hora_19",'N')
dw_horarios.SetItem(4,"hora_20",'N')
dw_horarios.SetItem(4,"hora_21",'N')
dw_horarios.SetItem(4,"hora_22",'N')
dw_horarios.SetItem(4,"hora_23",'N')

end event

type cb_denegar3 from commandbutton within w_detalle_usuario
int X=2757
int Y=1492
int Width=325
int Height=60
int TabOrder=80
string Text="Denegar"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(3,"hora_0",'N')
dw_horarios.SetItem(3,"hora_1",'N')	
dw_horarios.SetItem(3,"hora_2",'N')
dw_horarios.SetItem(3,"hora_3",'N')
dw_horarios.SetItem(3,"hora_4",'N')
dw_horarios.SetItem(3,"hora_5",'N')
dw_horarios.SetItem(3,"hora_6",'N')
dw_horarios.SetItem(3,"hora_7",'N')
dw_horarios.SetItem(3,"hora_8",'N')
dw_horarios.SetItem(3,"hora_9",'N')
dw_horarios.SetItem(3,"hora_10",'N')	
dw_horarios.SetItem(3,"hora_11",'N')
dw_horarios.SetItem(3,"hora_12",'N')
dw_horarios.SetItem(3,"hora_13",'N')
dw_horarios.SetItem(3,"hora_14",'N')
dw_horarios.SetItem(3,"hora_15",'N')
dw_horarios.SetItem(3,"hora_16",'N')
dw_horarios.SetItem(3,"hora_17",'N')
dw_horarios.SetItem(3,"hora_18",'N')
dw_horarios.SetItem(3,"hora_19",'N')
dw_horarios.SetItem(3,"hora_20",'N')
dw_horarios.SetItem(3,"hora_21",'N')
dw_horarios.SetItem(3,"hora_22",'N')
dw_horarios.SetItem(3,"hora_23",'N')

end event

type cb_denegar6 from commandbutton within w_detalle_usuario
int X=2757
int Y=1708
int Width=325
int Height=60
int TabOrder=100
string Text="Denegar"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(6,"hora_0",'N')
dw_horarios.SetItem(6,"hora_1",'N')	
dw_horarios.SetItem(6,"hora_2",'N')
dw_horarios.SetItem(6,"hora_3",'N')
dw_horarios.SetItem(6,"hora_4",'N')
dw_horarios.SetItem(6,"hora_5",'N')
dw_horarios.SetItem(6,"hora_6",'N')
dw_horarios.SetItem(6,"hora_7",'N')
dw_horarios.SetItem(6,"hora_8",'N')
dw_horarios.SetItem(6,"hora_9",'N')
dw_horarios.SetItem(6,"hora_10",'N')	
dw_horarios.SetItem(6,"hora_11",'N')
dw_horarios.SetItem(6,"hora_12",'N')
dw_horarios.SetItem(6,"hora_13",'N')
dw_horarios.SetItem(6,"hora_14",'N')
dw_horarios.SetItem(6,"hora_15",'N')
dw_horarios.SetItem(6,"hora_16",'N')
dw_horarios.SetItem(6,"hora_17",'N')
dw_horarios.SetItem(6,"hora_18",'N')
dw_horarios.SetItem(6,"hora_19",'N')
dw_horarios.SetItem(6,"hora_20",'N')
dw_horarios.SetItem(6,"hora_21",'N')
dw_horarios.SetItem(6,"hora_22",'N')
dw_horarios.SetItem(6,"hora_23",'N')

end event

type cb_denegar7 from commandbutton within w_detalle_usuario
int X=2757
int Y=1780
int Width=325
int Height=60
int TabOrder=140
string Text="Denegar"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(7,"hora_0",'N')
dw_horarios.SetItem(7,"hora_1",'N')	
dw_horarios.SetItem(7,"hora_2",'N')
dw_horarios.SetItem(7,"hora_3",'N')
dw_horarios.SetItem(7,"hora_4",'N')
dw_horarios.SetItem(7,"hora_5",'N')
dw_horarios.SetItem(7,"hora_6",'N')
dw_horarios.SetItem(7,"hora_7",'N')
dw_horarios.SetItem(7,"hora_8",'N')
dw_horarios.SetItem(7,"hora_9",'N')
dw_horarios.SetItem(7,"hora_10",'N')	
dw_horarios.SetItem(7,"hora_11",'N')
dw_horarios.SetItem(7,"hora_12",'N')
dw_horarios.SetItem(7,"hora_13",'N')
dw_horarios.SetItem(7,"hora_14",'N')
dw_horarios.SetItem(7,"hora_15",'N')
dw_horarios.SetItem(7,"hora_16",'N')
dw_horarios.SetItem(7,"hora_17",'N')
dw_horarios.SetItem(7,"hora_18",'N')
dw_horarios.SetItem(7,"hora_19",'N')
dw_horarios.SetItem(7,"hora_20",'N')
dw_horarios.SetItem(7,"hora_21",'N')
dw_horarios.SetItem(7,"hora_22",'N')
dw_horarios.SetItem(7,"hora_23",'N')

end event

type cb_denegar5 from commandbutton within w_detalle_usuario
int X=2757
int Y=1636
int Width=325
int Height=60
int TabOrder=170
string Text="Denegar"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(5,"hora_0",'N')
dw_horarios.SetItem(5,"hora_1",'N')	
dw_horarios.SetItem(5,"hora_2",'N')
dw_horarios.SetItem(5,"hora_3",'N')
dw_horarios.SetItem(5,"hora_4",'N')
dw_horarios.SetItem(5,"hora_5",'N')
dw_horarios.SetItem(5,"hora_6",'N')
dw_horarios.SetItem(5,"hora_7",'N')
dw_horarios.SetItem(5,"hora_8",'N')
dw_horarios.SetItem(5,"hora_9",'N')
dw_horarios.SetItem(5,"hora_10",'N')	
dw_horarios.SetItem(5,"hora_11",'N')
dw_horarios.SetItem(5,"hora_12",'N')
dw_horarios.SetItem(5,"hora_13",'N')
dw_horarios.SetItem(5,"hora_14",'N')
dw_horarios.SetItem(5,"hora_15",'N')
dw_horarios.SetItem(5,"hora_16",'N')
dw_horarios.SetItem(5,"hora_17",'N')
dw_horarios.SetItem(5,"hora_18",'N')
dw_horarios.SetItem(5,"hora_19",'N')
dw_horarios.SetItem(5,"hora_20",'N')
dw_horarios.SetItem(5,"hora_21",'N')
dw_horarios.SetItem(5,"hora_22",'N')
dw_horarios.SetItem(5,"hora_23",'N')

end event

type cb_denegar1 from commandbutton within w_detalle_usuario
int X=2761
int Y=1348
int Width=325
int Height=60
int TabOrder=60
string Text="Denegar"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(1,"hora_0",'N')
dw_horarios.SetItem(1,"hora_1",'N')	
dw_horarios.SetItem(1,"hora_2",'N')
dw_horarios.SetItem(1,"hora_3",'N')
dw_horarios.SetItem(1,"hora_4",'N')
dw_horarios.SetItem(1,"hora_5",'N')
dw_horarios.SetItem(1,"hora_6",'N')
dw_horarios.SetItem(1,"hora_7",'N')
dw_horarios.SetItem(1,"hora_8",'N')
dw_horarios.SetItem(1,"hora_9",'N')
dw_horarios.SetItem(1,"hora_10",'N')	
dw_horarios.SetItem(1,"hora_11",'N')
dw_horarios.SetItem(1,"hora_12",'N')
dw_horarios.SetItem(1,"hora_13",'N')
dw_horarios.SetItem(1,"hora_14",'N')
dw_horarios.SetItem(1,"hora_15",'N')
dw_horarios.SetItem(1,"hora_16",'N')
dw_horarios.SetItem(1,"hora_17",'N')
dw_horarios.SetItem(1,"hora_18",'N')
dw_horarios.SetItem(1,"hora_19",'N')
dw_horarios.SetItem(1,"hora_20",'N')
dw_horarios.SetItem(1,"hora_21",'N')
dw_horarios.SetItem(1,"hora_22",'N')
dw_horarios.SetItem(1,"hora_23",'N')

end event

type cb_permitir5 from commandbutton within w_detalle_usuario
int X=2405
int Y=1636
int Width=325
int Height=60
int TabOrder=180
string Text="&Permitir"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(5,"hora_0",'S')
dw_horarios.SetItem(5,"hora_1",'S')	
dw_horarios.SetItem(5,"hora_2",'S')
dw_horarios.SetItem(5,"hora_3",'S')
dw_horarios.SetItem(5,"hora_4",'S')
dw_horarios.SetItem(5,"hora_5",'S')
dw_horarios.SetItem(5,"hora_6",'S')
dw_horarios.SetItem(5,"hora_7",'S')
dw_horarios.SetItem(5,"hora_8",'S')
dw_horarios.SetItem(5,"hora_9",'S')
dw_horarios.SetItem(5,"hora_10",'S')	
dw_horarios.SetItem(5,"hora_11",'S')
dw_horarios.SetItem(5,"hora_12",'S')
dw_horarios.SetItem(5,"hora_13",'S')
dw_horarios.SetItem(5,"hora_14",'S')
dw_horarios.SetItem(5,"hora_15",'S')
dw_horarios.SetItem(5,"hora_16",'S')
dw_horarios.SetItem(5,"hora_17",'S')
dw_horarios.SetItem(5,"hora_18",'S')
dw_horarios.SetItem(5,"hora_19",'S')
dw_horarios.SetItem(5,"hora_20",'S')
dw_horarios.SetItem(5,"hora_21",'S')
dw_horarios.SetItem(5,"hora_22",'S')
dw_horarios.SetItem(5,"hora_23",'S')

end event

type cb_permitir7 from commandbutton within w_detalle_usuario
int X=2405
int Y=1780
int Width=325
int Height=60
int TabOrder=130
string Text="&Permitir"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(7,"hora_0",'S')
dw_horarios.SetItem(7,"hora_1",'S')	
dw_horarios.SetItem(7,"hora_2",'S')
dw_horarios.SetItem(7,"hora_3",'S')
dw_horarios.SetItem(7,"hora_4",'S')
dw_horarios.SetItem(7,"hora_5",'S')
dw_horarios.SetItem(7,"hora_6",'S')
dw_horarios.SetItem(7,"hora_7",'S')
dw_horarios.SetItem(7,"hora_8",'S')
dw_horarios.SetItem(7,"hora_9",'S')
dw_horarios.SetItem(7,"hora_10",'S')	
dw_horarios.SetItem(7,"hora_11",'S')
dw_horarios.SetItem(7,"hora_12",'S')
dw_horarios.SetItem(7,"hora_13",'S')
dw_horarios.SetItem(7,"hora_14",'S')
dw_horarios.SetItem(7,"hora_15",'S')
dw_horarios.SetItem(7,"hora_16",'S')
dw_horarios.SetItem(7,"hora_17",'S')
dw_horarios.SetItem(7,"hora_18",'S')
dw_horarios.SetItem(7,"hora_19",'S')
dw_horarios.SetItem(7,"hora_20",'S')
dw_horarios.SetItem(7,"hora_21",'S')
dw_horarios.SetItem(7,"hora_22",'S')
dw_horarios.SetItem(7,"hora_23",'S')

end event

type cb_permitir6 from commandbutton within w_detalle_usuario
int X=2405
int Y=1708
int Width=325
int Height=60
int TabOrder=90
string Text="&Permitir"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(6,"hora_0",'S')
dw_horarios.SetItem(6,"hora_1",'S')	
dw_horarios.SetItem(6,"hora_2",'S')
dw_horarios.SetItem(6,"hora_3",'S')
dw_horarios.SetItem(6,"hora_4",'S')
dw_horarios.SetItem(6,"hora_5",'S')
dw_horarios.SetItem(6,"hora_6",'S')
dw_horarios.SetItem(6,"hora_7",'S')
dw_horarios.SetItem(6,"hora_8",'S')
dw_horarios.SetItem(6,"hora_9",'S')
dw_horarios.SetItem(6,"hora_10",'S')	
dw_horarios.SetItem(6,"hora_11",'S')
dw_horarios.SetItem(6,"hora_12",'S')
dw_horarios.SetItem(6,"hora_13",'S')
dw_horarios.SetItem(6,"hora_14",'S')
dw_horarios.SetItem(6,"hora_15",'S')
dw_horarios.SetItem(6,"hora_16",'S')
dw_horarios.SetItem(6,"hora_17",'S')
dw_horarios.SetItem(6,"hora_18",'S')
dw_horarios.SetItem(6,"hora_19",'S')
dw_horarios.SetItem(6,"hora_20",'S')
dw_horarios.SetItem(6,"hora_21",'S')
dw_horarios.SetItem(6,"hora_22",'S')
dw_horarios.SetItem(6,"hora_23",'S')

end event

type cb_permitir3 from commandbutton within w_detalle_usuario
int X=2405
int Y=1492
int Width=325
int Height=60
int TabOrder=70
string Text="&Permitir"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(3,"hora_0",'S')
dw_horarios.SetItem(3,"hora_1",'S')	
dw_horarios.SetItem(3,"hora_2",'S')
dw_horarios.SetItem(3,"hora_3",'S')
dw_horarios.SetItem(3,"hora_4",'S')
dw_horarios.SetItem(3,"hora_5",'S')
dw_horarios.SetItem(3,"hora_6",'S')
dw_horarios.SetItem(3,"hora_7",'S')
dw_horarios.SetItem(3,"hora_8",'S')
dw_horarios.SetItem(3,"hora_9",'S')
dw_horarios.SetItem(3,"hora_10",'S')	
dw_horarios.SetItem(3,"hora_11",'S')
dw_horarios.SetItem(3,"hora_12",'S')
dw_horarios.SetItem(3,"hora_13",'S')
dw_horarios.SetItem(3,"hora_14",'S')
dw_horarios.SetItem(3,"hora_15",'S')
dw_horarios.SetItem(3,"hora_16",'S')
dw_horarios.SetItem(3,"hora_17",'S')
dw_horarios.SetItem(3,"hora_18",'S')
dw_horarios.SetItem(3,"hora_19",'S')
dw_horarios.SetItem(3,"hora_20",'S')
dw_horarios.SetItem(3,"hora_21",'S')
dw_horarios.SetItem(3,"hora_22",'S')
dw_horarios.SetItem(3,"hora_23",'S')

end event

type cb_permitir4 from commandbutton within w_detalle_usuario
int X=2405
int Y=1564
int Width=325
int Height=60
int TabOrder=160
string Text="&Permitir"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(4,"hora_0",'S')
dw_horarios.SetItem(4,"hora_1",'S')	
dw_horarios.SetItem(4,"hora_2",'S')
dw_horarios.SetItem(4,"hora_3",'S')
dw_horarios.SetItem(4,"hora_4",'S')
dw_horarios.SetItem(4,"hora_5",'S')
dw_horarios.SetItem(4,"hora_6",'S')
dw_horarios.SetItem(4,"hora_7",'S')
dw_horarios.SetItem(4,"hora_8",'S')
dw_horarios.SetItem(4,"hora_9",'S')
dw_horarios.SetItem(4,"hora_10",'S')	
dw_horarios.SetItem(4,"hora_11",'S')
dw_horarios.SetItem(4,"hora_12",'S')
dw_horarios.SetItem(4,"hora_13",'S')
dw_horarios.SetItem(4,"hora_14",'S')
dw_horarios.SetItem(4,"hora_15",'S')
dw_horarios.SetItem(4,"hora_16",'S')
dw_horarios.SetItem(4,"hora_17",'S')
dw_horarios.SetItem(4,"hora_18",'S')
dw_horarios.SetItem(4,"hora_19",'S')
dw_horarios.SetItem(4,"hora_20",'S')
dw_horarios.SetItem(4,"hora_21",'S')
dw_horarios.SetItem(4,"hora_22",'S')
dw_horarios.SetItem(4,"hora_23",'S')

end event

type cb_permitir2 from commandbutton within w_detalle_usuario
int X=2405
int Y=1420
int Width=325
int Height=60
int TabOrder=110
string Text="&Permitir"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(2,"hora_0",'S')
dw_horarios.SetItem(2,"hora_1",'S')	
dw_horarios.SetItem(2,"hora_2",'S')
dw_horarios.SetItem(2,"hora_3",'S')
dw_horarios.SetItem(2,"hora_4",'S')
dw_horarios.SetItem(2,"hora_5",'S')
dw_horarios.SetItem(2,"hora_6",'S')
dw_horarios.SetItem(2,"hora_7",'S')
dw_horarios.SetItem(2,"hora_8",'S')
dw_horarios.SetItem(2,"hora_9",'S')
dw_horarios.SetItem(2,"hora_10",'S')	
dw_horarios.SetItem(2,"hora_11",'S')
dw_horarios.SetItem(2,"hora_12",'S')
dw_horarios.SetItem(2,"hora_13",'S')
dw_horarios.SetItem(2,"hora_14",'S')
dw_horarios.SetItem(2,"hora_15",'S')
dw_horarios.SetItem(2,"hora_16",'S')
dw_horarios.SetItem(2,"hora_17",'S')
dw_horarios.SetItem(2,"hora_18",'S')
dw_horarios.SetItem(2,"hora_19",'S')
dw_horarios.SetItem(2,"hora_20",'S')
dw_horarios.SetItem(2,"hora_21",'S')
dw_horarios.SetItem(2,"hora_22",'S')
dw_horarios.SetItem(2,"hora_23",'S')

end event

type cb_permitir1 from commandbutton within w_detalle_usuario
int X=2405
int Y=1348
int Width=325
int Height=60
int TabOrder=190
string Text="&Permitir"
int TextSize=-7
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;//para el lunes	
dw_horarios.SetItem(1,"hora_0",'S')
dw_horarios.SetItem(1,"hora_1",'S')	
dw_horarios.SetItem(1,"hora_2",'S')
dw_horarios.SetItem(1,"hora_3",'S')
dw_horarios.SetItem(1,"hora_4",'S')
dw_horarios.SetItem(1,"hora_5",'S')
dw_horarios.SetItem(1,"hora_6",'S')
dw_horarios.SetItem(1,"hora_7",'S')
dw_horarios.SetItem(1,"hora_8",'S')
dw_horarios.SetItem(1,"hora_9",'S')
dw_horarios.SetItem(1,"hora_10",'S')	
dw_horarios.SetItem(1,"hora_11",'S')
dw_horarios.SetItem(1,"hora_12",'S')
dw_horarios.SetItem(1,"hora_13",'S')
dw_horarios.SetItem(1,"hora_14",'S')
dw_horarios.SetItem(1,"hora_15",'S')
dw_horarios.SetItem(1,"hora_16",'S')
dw_horarios.SetItem(1,"hora_17",'S')
dw_horarios.SetItem(1,"hora_18",'S')
dw_horarios.SetItem(1,"hora_19",'S')
dw_horarios.SetItem(1,"hora_20",'S')
dw_horarios.SetItem(1,"hora_21",'S')
dw_horarios.SetItem(1,"hora_22",'S')
dw_horarios.SetItem(1,"hora_23",'S')

end event

type dw_horarios from datawindow within w_detalle_usuario
int X=9
int Y=1240
int Width=2354
int Height=684
int TabOrder=50
string DataObject="dw_horario_acceso"
BorderStyle BorderStyle=StyleLowered!
boolean VScrollBar=true
boolean LiveScroll=true
end type

type st_1 from statictext within w_detalle_usuario
int X=1778
int Y=1052
int Width=544
int Height=136
boolean Enabled=false
string Text="! No olvide asignar Empresa al Usuario !"
Alignment Alignment=Center!
boolean FocusRectangle=false
long BackColor=15780518
int TextSize=-8
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

type cb_1 from commandbutton within w_detalle_usuario
int X=27
int Y=1024
int Width=498
int Height=92
int TabOrder=40
string Text="Asignar Empresa"
int TextSize=-8
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;string usu 
int  li_planid,LI_RETURN
string ls_firstname, ls_lastname, DEVOLUCION

dw_person.AcceptText()

li_return = dw_person.Update()
IF li_return > 0 then
	COMMIT using sqlca;
	error1 = 0
ELSE
   ROLLBACK using sqlca;
	MESSAGEBOX("ERROR","Error al salvar el Usuario")
	RETURN
END IF

usu = dw_person.getitemstring(dw_person.getrow(),1)
OpenWithParm(w_asignar_empresa_usuario,usu)
end on

type cb_cancel from commandbutton within w_detalle_usuario
int X=891
int Y=1024
int Width=361
int Height=92
int TabOrder=200
string Text="Cancel"
boolean Cancel=true
int TextSize=-8
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;CloseWithReturn(parent,0)
//W_principal_manejador_menus.Enabled = True
end event

type cb_ok from commandbutton within w_detalle_usuario
int X=526
int Y=1024
int Width=361
int Height=92
int TabOrder=30
string Text="OK"
boolean Default=true
int TextSize=-8
int Weight=700
string FaceName="Arial"
FontCharSet FontCharSet=Ansi!
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

event clicked;int  li_planid,LI_RETURN
string ls_firstname, ls_lastname, DEVOLUCION,ls_identificacion,ls_id_usuario_read,&
ls_nombre_usuario_read,ls_id_usuario,ls_error,ls_ind_ausencia_temporal
date ld_fecha_inicio_vacaciones,ld_fecha_fin_vacaciones

dw_person.AcceptText()

ls_ind_ausencia_temporal=dw_person.GetItemString(dw_person.getrow(),"ind_ausencia_temporal")

IF ls_ind_ausencia_temporal='S' Then
	ld_fecha_inicio_vacaciones=Date(dw_person.GetItemdatetime(dw_person.Getrow(),"desde"))
	ld_fecha_fin_vacaciones=Date(dw_person.GetItemdatetime(dw_person.Getrow(),"hasta"))	
	
	IF isnull(ld_fecha_inicio_vacaciones)  Then
		Messagebox("Error","Debe definirse fecha inicial de ausencia temporal",Stopsign!)		
		dw_person.setcolumn("desde")		
		dw_person.SetFocus()
		Return		
	End IF
	
	IF Isnull(ld_fecha_fin_vacaciones) Then
		Messagebox("Error","Debe definirse fecha final de ausencia temporal",Stopsign!)		
		dw_person.setcolumn("hasta")		
		dw_person.SetFocus()
		Return		
	End IF
	
	
End IF

ls_id_usuario=dw_person.Getitemstring(dw_person.getrow(),"id_usuario")
ls_identificacion=dw_person.Getitemstring(dw_person.getrow(),"identificacion")


//Se valida que no haya otro usuario con la misma cedula
IF not(isnull(ls_identificacion)) Then 
	
	 SELECT dba.usuarios.id_usuario,
	        dba.usuarios.nombre_usuario
    INTO :ls_id_usuario_read,
	      :ls_nombre_usuario_read
    FROM dba.usuarios  
    WHERE dba.usuarios.identificacion = :ls_identificacion  and 
	       dba.usuarios.id_usuario<> :ls_id_usuario;

	 CHOOSE CASE sqlca.sqlcode
    CASE -1
		ls_error=sqlca.sqlerrtext
		Rollback using sqlca;
		Messagebox("Error","Problemas consultando registros sobre la tabla: dba.usuarios. "+&
		+"Mensaje: "+ls_error,StopSign!)
		Return
	 CASE 0
	   Rollback using sqlca;
	   Messagebox("Error","El documento: "+ls_identificacion+" ya esta asignado al usuario : "+&
	   +ls_id_usuario_read+" "+ls_nombre_usuario_read+". Debe asignar otro o cambiar el documento asignado " +&
	   +"al usuario mencionado.", Stopsign!)
		Return
	 END CHOOSE
	  
End IF

li_return = dw_person.Update()
IF li_return > 0 then

	//Para salvar los cambios sobre la tabla de horarios	
	li_return=dw_horarios.Update(True,False)
	IF  li_return >0 Then
		COMMIT using sqlca;
		DEVOLUCION = "QQ"
		error1 = 0
	Else
		ROLLBACK using sqlca;
		DEVOLUCION = "0"
	End IF
	
ELSE
   ROLLBACK using sqlca;
	DEVOLUCION = "0"
END IF
IF error1 = 0 THEN CloseWithReturn(parent,DEVOLUCION)


end event

type dw_person from uo_dwlist within w_detalle_usuario
int X=9
int Y=12
int Width=3040
int Height=960
int TabOrder=10
string DataObject="dw_edit_usu"
BorderStyle BorderStyle=StyleLowered!
end type

event dberror;long errora
//error1 = This.DBErrorCode()
error1=sqldbcode
errora = error1
IF  error1 <> 0  THEN
	MessageBox ("Error en la Base de Datos", &
					"Código de Error = " + String(error) + &
					"  " + sqlerrtext, StopSign!)
	Return 1
END IF
end event

event itemchanged;long ll_fila_actual,ll_filas_horario,i
string ls_column_actual,ls_usuario,ls_nombre_usuario,ls_error
date ld_vacaciones_desde,ld_vacaciones_hasta

This.Accepttext()

ll_fila_actual=This.Getrow()
ls_column_actual=This.GetColumnName()

CHOOSE CASE ls_column_actual
CASE 	"id_usuario"//se valida que el codigo de usuario no este asignado ya
	
		ls_usuario=This.GetItemString(ll_fila_actual,ls_column_actual)
		
		SELECT dba.usuarios.nombre_usuario  
    	INTO :ls_nombre_usuario  
    	FROM dba.usuarios  
   	WHERE dba.usuarios.id_usuario = :ls_usuario   ;

		CHOOSE CASE	sqlca.sqlcode
		CASE 0//ya esta asignado el mismo codigo
			Rollback using sqlca;
			Messagebox("Error","El codigo digitado ya esta asignado a: "+ls_nombre_usuario,Stopsign!)
			setnull(ls_usuario)
			This.SetItem(ll_fila_actual,ls_column_actual,ls_usuario)
			Return 1
			
		CASE -1 //error en la lectura
			
			ls_error=sqlca.sqlerrtext
			Rollback using sqlca;
			Messagebox("Error","NO se pudo leer registros sobre la tabla: dba.usuarios. Mensaje :"+ls_error,Stopsign!) 
			setnull(ls_usuario)
			This.SetItem(ll_fila_actual,ls_column_actual,ls_usuario)
			Return 1
			

		End Choose
		
		//si llego hasta aqui todo esta bien y faltaria refrescar el codigo del usuario en la
		//tabla de horario de acceso
		ll_filas_horario=dw_horarios.Rowcount()
		
		For i=1 to ll_filas_horario
			
			dw_horarios.SetItem(i,"id_usuario",ls_usuario)
			
			
		Next
		
CASE "desde"
	
	  ld_vacaciones_desde=Date(This.GetItemDatetime(ll_fila_actual,ls_column_actual))
	  
	  IF isnull(ld_vacaciones_desde) or not(isdate(string(ld_vacaciones_desde))) Then
		   Rollback using sqlca;
			Messagebox("Error","Digite una fecha válida",Stopsign!)
	  		setnull(ld_vacaciones_desde)
			This.SetItem(ll_fila_actual,ls_column_actual,ld_vacaciones_desde)
			Return 1
	  End IF
	
	  ld_vacaciones_hasta=Date(This.GetItemDatetime(ll_fila_actual,"hasta"))	
	  
	  IF not(isnull(ld_vacaciones_hasta)) Then
		  IF ld_vacaciones_desde > ld_vacaciones_hasta Then 
			
		   Rollback using sqlca;
			Messagebox("Error","La fecha inicial no puede ser superior a la final",Stopsign!)
	  		setnull(ld_vacaciones_desde)
			This.SetItem(ll_fila_actual,ls_column_actual,ld_vacaciones_desde)
			Return 1
			
 		  End IF
	  End IF
	
CASE "hasta"
	
	  ld_vacaciones_hasta=Date(This.GetItemDatetime(ll_fila_actual,ls_column_actual))
	  
	  IF isnull(ld_vacaciones_hasta) Then
		   Rollback using sqlca;
			Messagebox("Error","Digite una fecha válida",Stopsign!)
	  		setnull(ld_vacaciones_hasta)
			This.SetItem(ll_fila_actual,ls_column_actual,ld_vacaciones_hasta)
			Return 1
	  End IF
	
	  ld_vacaciones_desde=Date(This.GetItemDatetime(ll_fila_actual,"desde"))	
	  
	  IF not(isnull(ld_vacaciones_desde)) Then
		  IF ld_vacaciones_hasta < ld_vacaciones_desde Then 
			
		   Rollback using sqlca;
			Messagebox("Error","La fecha final no puede ser inferior a la inicial",Stopsign!)
	  		setnull(ld_vacaciones_hasta)
			This.SetItem(ll_fila_actual,ls_column_actual,ld_vacaciones_hasta)
			Return 1
			
 		  End IF
	  End IF
		
End Choose








end event

