$PBExportHeader$w_imprimir_preliminar_menus.srw
forward
global type w_imprimir_preliminar_menus from Window
end type
type cb_4 from commandbutton within w_imprimir_preliminar_menus
end type
type cb_3 from commandbutton within w_imprimir_preliminar_menus
end type
type pb_2 from picturebutton within w_imprimir_preliminar_menus
end type
type pb_1 from picturebutton within w_imprimir_preliminar_menus
end type
type cb_2 from commandbutton within w_imprimir_preliminar_menus
end type
type cb_1 from commandbutton within w_imprimir_preliminar_menus
end type
type dw_1 from datawindow within w_imprimir_preliminar_menus
end type
end forward

global type w_imprimir_preliminar_menus from Window
int X=105
int Y=56
int Width=3634
int Height=2104
boolean TitleBar=true
string Title="Imprimir"
long BackColor=12632256
WindowType WindowType=response!
cb_4 cb_4
cb_3 cb_3
pb_2 pb_2
pb_1 pb_1
cb_2 cb_2
cb_1 cb_1
dw_1 dw_1
end type
global w_imprimir_preliminar_menus w_imprimir_preliminar_menus

event open;integer i,c
STRING DW1,id,a,b,d,e
long l

dw_1.SetTransObject(sqlca)

dw_1.retrieve(gs_id_modulo,usuario)
COMMIT using sqlca;

dw_1.MODIFY("usuario.text = '" + nombre_usuario + "'")
a = dw_1.modify("datawindow.units = '3'")
dw_1.MODIFY("Empresa.text = '" + nombre_empresa + "'")
dw_1.taborder = 0
dw_1.Modify ("datawindow.print.paper.size = 1" )
dw_1.Modify ("datawindow.print.margin.bottom = 150" )

dw_1.Modify ("datawindow.print.margin.left = 150" )
dw_1.Modify ("datawindow.print.margin.rigth = 150" )
dw_1.Modify ("datawindow.print.margin.top = 150" )
dw_1.Modify ("datawindow.print.preview = yes" )
dw_1.Modify ("datawindow.print.preview.zoom = 80" )
dw_1.Modify ("datawindow.print.preview.rulers = yes" )

end event

on w_imprimir_preliminar_menus.create
this.cb_4=create cb_4
this.cb_3=create cb_3
this.pb_2=create pb_2
this.pb_1=create pb_1
this.cb_2=create cb_2
this.cb_1=create cb_1
this.dw_1=create dw_1
this.Control[]={this.cb_4,&
this.cb_3,&
this.pb_2,&
this.pb_1,&
this.cb_2,&
this.cb_1,&
this.dw_1}
end on

on w_imprimir_preliminar_menus.destroy
destroy(this.cb_4)
destroy(this.cb_3)
destroy(this.pb_2)
destroy(this.pb_1)
destroy(this.cb_2)
destroy(this.cb_1)
destroy(this.dw_1)
end on

type cb_4 from commandbutton within w_imprimir_preliminar_menus
int X=2085
int Y=24
int Width=320
int Height=88
int TabOrder=50
string Text="Pag Ant"
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;dw_1.scrollpriorPage()
end on

type cb_3 from commandbutton within w_imprimir_preliminar_menus
int X=1687
int Y=24
int Width=320
int Height=88
int TabOrder=60
string Text="Pag Sig"
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;dw_1.scrollnextpage()
end on

type pb_2 from picturebutton within w_imprimir_preliminar_menus
int X=1289
int Y=24
int Width=320
int Height=88
int TabOrder=40
string Text="zoom - "
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;integer		li_factor

li_factor = Integer (dw_1.Describe("Datawindow.print.preview.zoom"))

// only zoom down if magnification is greater than 20%
if li_factor >=40 and li_factor <= 100 then
	li_factor = li_factor - 20
else
	// if magnification is currently 200%, zoom down to 100%
	if li_factor = 200 then
		li_factor = 100
	end if
end if

dw_1.Modify ("Datawindow.print.preview.zoom = " + String (li_factor))


end on

type pb_1 from picturebutton within w_imprimir_preliminar_menus
int X=891
int Y=24
int Width=320
int Height=88
int TabOrder=30
string Text="zoom + "
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;integer		li_factor

li_factor = Integer (dw_1.Describe ("Datawindow.print.preview.zoom"))

// zoom up by a factor of 20% if current magnification is between 20% - 80%
if li_factor >=20 and li_factor <=80 then
	li_factor = li_factor + 20
else
	// if magnification is currently 100%, zoom to 200%
	if li_factor = 100 then
		li_factor = 200
	end if
end if

dw_1.Modify ("Datawindow.print.preview.zoom = " + String (li_factor))

end on

type cb_2 from commandbutton within w_imprimir_preliminar_menus
int X=466
int Y=24
int Width=347
int Height=88
int TabOrder=20
string Text="CANCELAR"
boolean Cancel=true
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;CLOSE(PARENT)
end on

type cb_1 from commandbutton within w_imprimir_preliminar_menus
int X=69
int Y=24
int Width=320
int Height=88
int TabOrder=10
string Text="IMPRIMIR"
boolean Default=true
int TextSize=-10
int Weight=700
string FaceName="Arial"
FontFamily FontFamily=Swiss!
FontPitch FontPitch=Variable!
end type

on clicked;//dw_1.print()
Openwithparm(w_dw_print_options,dw_1)
end on

type dw_1 from datawindow within w_imprimir_preliminar_menus
int X=9
int Y=120
int Width=3547
int Height=1820
int TabOrder=70
string DataObject="dw_opciones_modulo_usuario_imp"
boolean HScrollBar=true
boolean VScrollBar=true
boolean LiveScroll=true
end type

