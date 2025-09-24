unit Unit1;

interface

uses
  Windows, SysUtils, Classes, Controls, Forms, gl, glu, glex, Graphics, Dialogs,
  ExtCtrls, StdCtrls, Menus, ComCtrls, OpenGL, Vcl.Samples.Spin;

type
   TForm1 = class(TForm)
    Timer1: TTimer;
    Panel2: TPanel;
    ListBox1: TListBox;
    d1: TButton;
    UpDown1: TUpDown;
    Edit1: TEdit;
    Edit2: TEdit;
    UpDown2: TUpDown;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    UpDown3: TUpDown;
    Edit4: TEdit;
    UpDown4: TUpDown;
    Label5: TLabel;
    Edit5: TEdit;
    UpDown5: TUpDown;
    Label6: TLabel;
    CheckBox1: TCheckBox;
    Panel1: TPanel;
    Memo1: TMemo;
    CheckBox2: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    StatusBar1: TStatusBar;
    GroupBox1: TGroupBox;
    Button1: TButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    Button2: TButton;
    ProgressBar1: TProgressBar;
    Timer2: TTimer;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    SaveDialog1: TSaveDialog;
    Button3: TButton;
    PopupMenu1: TPopupMenu;
    Save1: TMenuItem;
    SaveDialog2: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure D1Click(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure UpDown1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure Edit2Change(Sender: TObject);
    procedure UpDown3Click(Sender: TObject; Button: TUDBtnType);
    procedure CheckBox1Click(Sender: TObject);
    procedure FormMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CheckBox2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpinEdit1Change(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Save1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

{$R xpoly.RES}
{$R xeck.RES}

type _pp = array[0..4000,0..2] of single;
type _fpp = array[0..4000] of smallint;
var
  Form1: TForm1;
  rotang:glfloat;
  conti:boolean;
  count, elapsedframetime, starttime:cardinal;
  ppx : ^_pp;
  ppy : _pp;
  fppy : _fpp;
  flaechenfeld : ^_fpp;
  pzahl,punktzahl : integer;
  rundesw:smallint;
  smax,dx,dy,dz:real;

implementation

{$R *.DFM}

const
      nullbyte:smallint=-1;

var   xalt,yalt:integer;
      w:real=1;
      vv:real=0;
      abbruch:boolean;
      nr:integer=1;
      speed:integer=60;

      drehen:boolean=false;
      weiss:boolean=true;
      modus:byte=0;
      frame : integer = 0;

procedure seite;
var ko,nn,z:integer;
begin
    w:=2.1/smax;
    nn:=1;
    z:=0;
    glBegin(GL_TRIANGLE_fan);
  repeat
    if flaechenfeld[nn]=-1
    then begin
      glEnd();
      z:=0;
      if nn<punktzahl then begin
        glBegin(GL_TRIANGLE_fan);
      end;
    end
    else
    begin
      if flaechenfeld[nn]>=10000 then
      begin
        ko:=flaechenfeld[nn]-10000;
        glColor3f(0,0,1);
        glVertex3f(w*ppx[ko,0],
                   w*ppx[ko,1],
                   w*ppx[ko,2]);
      end
      else begin
      case z of
        0 : glColor3f(0,0,0);
        1 : glColor3f(0.95,0.95,0.95);
        2 : glColor3f(0,0,0);
        3 : glColor3f(0,1,0);
        4 : glColor3f(0,1,1);
        5 : glColor3f(1,0,1);
        6 : glColor3f(1,1,0);
        7 : glColor3f(0.9,0.4,0.4);
        8 : glColor3f(0.4,0.9,0.4);
        9 : glColor3f(0.4,0.4,0.9);
       10 : glColor3f(1,0.4,0.4);
       11 : glColor3f(0.4,1,0.4);
       12 : glColor3f(0.4,0.4,1);
       13 : glColor3f(1,0,0.4);
       14 : glColor3f(1,0.4,0);
       15 : glColor3f(1,1,0.4);
       16 : glColor3f(1,0.4,1);
       17 : glColor3f(0.6,0.6,0.6);
       18 : glColor3f(0.6,0,0.6);
       19 : glColor3f(0.6,1,0.6);
      else glColor3f(1,0.4,0);
      end;
      inc(z);
      glVertex3f(w*ppx[flaechenfeld[nn],0],
                 w*ppx[flaechenfeld[nn],1],
                 w*ppx[flaechenfeld[nn],2]);
      end;
    end;
    inc(nn);
  until nn>punktzahl;
end;
procedure gitter;
var ko,nn:integer;
begin
    w:=2.1/smax;
    nn:=1;
    glBegin(GL_LINE_LOOP);
  repeat
    if flaechenfeld[nn]=-1
    then begin
      glEnd();
      if nn<punktzahl then begin
        glBegin(GL_LINE_LOOP);
      end;
    end
    else
    begin
      if flaechenfeld[nn]>=10000 then
      begin
        ko:=flaechenfeld[nn]-10000;
        if weiss or (modus<>2) then glColor3f(0,0,0.2)
                               else glColor3f(1,1,0.8);
        glVertex3f(w*ppx[ko,0],
                   w*ppx[ko,1],
                   w*ppx[ko,2]);
      end
      else begin

        // Define Grid Color
        if Form1.CheckBox1.Checked = false then begin
          if weiss or (modus<>2) then glColor3f(1,1,1.2)
                                 else glColor3f(1,1,0.8);
          glVertex3f(w*ppx[flaechenfeld[nn],0],
                     w*ppx[flaechenfeld[nn],1],
                     w*ppx[flaechenfeld[nn],2]);
        end;

        if Form1.CheckBox1.Checked = true then begin
          if weiss or (modus<>2) then glColor3f(0,0,0)
                                 else glColor3f(1,1,0.8);
          glVertex3f(w*ppx[flaechenfeld[nn],0],
                     w*ppx[flaechenfeld[nn],1],
                     w*ppx[flaechenfeld[nn],2]);
        end;



      end;
    end;
    inc(nn);
  until nn>punktzahl;
end;

procedure drawscene;
var f:real;
begin
  // Draw Polygon on Form
   starttime:=gettickcount;
   glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
   glpushmatrix;
   f:=4.4+vv;
   glTranslatef(f,f,f);
   if (dx<>0) or (dy<>0) or (dz<>0) then glRotatef(-rotang, dx, dy, dz);
   case modus of
     1 : begin gitter; seite; end;
     2 : gitter;
    else seite;
   end;
   glPopMatrix;
   glFinish;
   SwapBuffers(DC);
   elapsedframetime:=gettickcount-starttime;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
   releaserc(handle);
end;

procedure Animate;
begin
   repeat
     rotang:=rotang+(elapsedframetime*speed)/1500;
     drawscene;
     inc(count);
     application.ProcessMessages;
   until (not conti) or abbruch;
end;

procedure TForm1.FormResize(Sender: TObject);
begin
   if panel1.visible then
     resizeviewport(Form1.Width-panel1.width, Form1.clientheight+panel2.height)
   else
     resizeviewport(Form1.Width, Form1.clientheight+panel2.height);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  CheckBox2.OnClick(sender);
  SpinEdit1.OnChange(sender);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  // Animate the Scene
   conti:=true;
   count:=0;
   timer1.Enabled:=false;
   Animate;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  Bitmap: TBitmap;
  DC: HDC;
  FileName: string;
begin
  // Render Bitmap Frames
  Bitmap := TBitmap.Create;
  Screen.Cursor := crHourGlass;
  try
    Assert(HandleAllocated);
    DC := GetWindowDC(Handle);
    Win32Check(DC <> 0);

    // Bitmap Pixel Bit
    if RadioButton4.Checked = true then Bitmap.PixelFormat := pf4bit;
    if RadioButton5.Checked = true then Bitmap.PixelFormat := pf8bit;
    if RadioButton6.Checked = true then Bitmap.PixelFormat := pf24bit;
    if RadioButton7.Checked = true then Bitmap.PixelFormat := pf32bit;

    // Render with Coordinate Box
    if CheckBox2.Checked = true then begin
      Bitmap.SetSize(Width-ListBox1.Width, Height-280);
      Win32Check(BitBlt(Bitmap.Canvas.Handle, 0, 0,
                Width-ListBox1.Width, Height-280,
                DC, 50, 50, SRCCOPY));
    end;

    // Render without Coordinate Box
    if CheckBox2.Checked =false then begin
      Bitmap.SetSize(Width-100, Height-280);
      Win32Check(BitBlt(Bitmap.Canvas.Handle, 0, 0,
                Width-100, Height-280,
                DC, 50, 50, SRCCOPY));
    end;



    frame := frame + 1;
    FileName := ExtractFilePath(Application.ExeName) +
                'Frames\frame_'+ IntToStr(frame) + '.' + GraphicExtension(TBitmap);
    Bitmap.SaveToFile(FileName);
    ProgressBar1.Position := frame;
    StatusBar1.Panels[9].Text := IntToStr(frame);
    Application.ProcessMessages;

    if frame = SpinEdit1.Value then begin
      Timer2.Enabled := false;
      frame := 0;
      Button2.Enabled := true;
      Button3.Enabled := false;
      ReleaseDC(Handle, DC);
      Screen.Cursor := crDefault;
      Beep;
      MessageDlg('Render Frames finish.',mtInformation, [mbOK], 0);
      Exit;
    end;

  finally
    ReleaseDC(Handle, DC);
    Bitmap.Free;
  end;
end;


procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   conti:=false;
end;

procedure TForm1.CheckBox2Click(Sender: TObject);
begin
  panel1.visible:=not panel1.visible;
   if panel1.visible then
     resizeviewport(Form1.Width-panel1.width, Form1.clientheight+panel2.height)
   else
     resizeviewport(Form1.Width, Form1.clientheight+panel2.height);
    ListBox1Click(Sender);
end;

procedure TForm1.D1Click(Sender: TObject);
begin
   if abbruch=false then begin abbruch:=true;
     d1.caption:='Start'
     end else begin
     abbruch:=false;
     timer1.enabled:=true;
     d1.caption:='Stop'
   end;
end;

//Read Coordinates from *.res
procedure ppyladen;
var ms1: TResourcestream;
    i:integer;
    ww:real;
begin
   ms1 := TResourceStream.Create(hinstance,'x'+inttostr(nr),'RT_RCDATA');
    try
      ms1.readbuffer(ppy,ms1.size);
      pzahl:=(ms1.size-2) div 12;
  finally
    ms1.Free;
  end;
  ppx:=@ppy;
  smax:=0;
  for i:=0 to pzahl-1 do begin
    ww:=sqr(ppx[i,0])+sqr(ppx[i,1])+sqr(ppx[i,2]);
    if ww>smax then smax:=ww;
  end;
  smax:=sqrt(smax);
end;
//Read Areas Coordinates from *.res
procedure flaladen;
var ms1: TResourcestream;
begin
   ms1 := TResourceStream.Create(hinstance,'e'+inttostr(nr),'RT_RCDATA');
    try
      ms1.readbuffer(fppy,ms1.size);
      punktzahl:=(ms1.size-2) div 2;
  finally
    ms1.Free;
  end;
  flaechenfeld:=@fppy;
end;

procedure TForm1.FormCreate(Sender: TObject);
var k : string;
begin
   //Form1.width:=720;
   //Form1.height:=730;
   initrc(Form1.Handle);
   initgl(Form1.Width, Form1.clientheight+panel2.height);
   glMatrixMode(GL_MODELVIEW);
   glulookat(8,8,8,0,0,0,0,0,5);
   glClearColor(0, 0, 0, 1);
   abbruch:=false;
   // Start the Scene
   Timer1.Enabled := true;

   dx:=updown3.position/10;
   dy:=updown4.position/10;
   dz:=updown5.position/10;
   vv:=0;
   speed:=60;
   listbox1.itemindex:=0;
   k:=listbox1.items[0];
   delete(k,1,pos(#9,k));
   nr:=strtoint(k);

   ppyladen;
   flaladen;

   StatusBar1.Panels[1].Text := inttostr(listbox1.items.count);
end;

procedure TForm1.ListBox1Click(Sender: TObject);
var i,sel,anz:integer;
    k,k2,h:string;
begin
  // Calculate Polygon Points & Areas
    sel:=listbox1.itemindex;
    if sel>=0 then
    begin
      k:=listbox1.items[sel];
      StatusBar1.Panels[3].Text := copy(k,1,pos(#9,k)-1);
      delete(k,1,pos(#9,k));
      nr:=strtoint(k);

      ppyladen;
      flaladen;
      if abbruch=true then drawscene;

      if panel1.visible then
      begin
        memo1.clear;
        k:= #13#10+'Corner points ('+inttostr(pzahl+1)+')'+#13#10;
        StatusBar1.Panels[5].Text := '('+inttostr(pzahl+1)+')';

        for i:=0 to pzahl do
        begin
           k:= k //+inttostr(i)
                //+#10#13+
                +
              '('+floattostrf(ppx[i,0],ffgeneral,4,3)+
              ' | '+floattostrf(ppx[i,1],ffgeneral,4,3)+
              ' | '+floattostrf(ppx[i,2],ffgeneral,4,3)+')'+#13#10;
        end;
         k2:='';
         i:=1;
         anz:=0;
         h:='  (';
         repeat
           if flaechenfeld[i]<>-1
           then
             h:=h+inttostr(flaechenfeld[i])+', '
           else begin
             delete(h,length(h)-1,2);
             k2:=k2+h+')'+#13#10;
             inc(anz);
             h:='  (';
           end;
           inc(i);
         until i>punktzahl;
         k2:= #13#10+'Areas ('+inttostr(anz)+')'#13#10+k2;
         StatusBar1.Panels[7].Text := '('+inttostr(anz)+')';
         memo1.text:=k+k2;
       end;
     end;
end;

procedure TForm1.UpDown1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
    speed:=round(1.2*updown1.position);
end;

procedure TForm1.Edit2Change(Sender: TObject);
begin
    vv:=updown2.position/10;
    if d1.Caption = 'Stop' then Exit;
    Animate;
end;

procedure TForm1.Edit3Change(Sender: TObject);
begin
  if d1.Caption = 'Stop' then Exit;
    Animate;
end;

procedure TForm1.Edit4Change(Sender: TObject);
begin
  if d1.Caption = 'Stop' then Exit;
    Animate;
end;

procedure TForm1.Edit5Change(Sender: TObject);
begin
  if d1.Caption = 'Stop' then Exit;
    Animate;
end;

procedure TForm1.UpDown3Click(Sender: TObject; Button: TUDBtnType);
begin
  // Rotate X-Axis
    dx:=strtoint(edit3.text)/10;
    dy:=strtoint(edit4.text)/10;
    dz:=strtoint(edit5.text)/10;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  Bitmap: TBitmap;
  DC: HDC;
  FileName: string;
begin
  // Render Bitmap Picture Image
  Bitmap := TBitmap.Create;
  try
    Assert(HandleAllocated);
    DC := GetWindowDC(Handle);
    Win32Check(DC <> 0);

    if RadioButton4.Checked = true then Bitmap.PixelFormat := pf4bit;
    if RadioButton5.Checked = true then Bitmap.PixelFormat := pf8bit;
    if RadioButton6.Checked = true then Bitmap.PixelFormat := pf24bit;
    if RadioButton7.Checked = true then Bitmap.PixelFormat := pf32bit;

    if CheckBox2.Checked = true then begin
      Bitmap.SetSize(Width-ListBox1.Width, Height-280);
      Win32Check(BitBlt(Bitmap.Canvas.Handle, 0, 0,
                Width-ListBox1.Width, Height-280,
                DC, 50, 50, SRCCOPY));
    end;

    if CheckBox2.Checked =false then begin
      Bitmap.SetSize(Width-100, Height-280);
      Win32Check(BitBlt(Bitmap.Canvas.Handle, 0, 0,
                Width-100, Height-280,
                DC, 50, 50, SRCCOPY));
    end;

    FileName := '.' + GraphicExtension(TBitmap);
    if SaveDialog1.Execute then Bitmap.SaveToFile(SaveDialog1.FileName + FileName);
  finally
    ReleaseDC(Handle, DC);
    Bitmap.Free;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Beep;
  if MessageBox(Handle,
                'This will Render Frames of OpenGL Graphic, continue? : ','Confirm',MB_YESNO) = IDYES then
    BEGIN
      Timer2.Enabled := true;
      Button3.Enabled := true;
      Button2.Enabled := false;

      abbruch:=false;
      Timer1.enabled:=true;
      d1.caption := 'Stop'
    END;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  // Abort Render Progress
  Timer2.Enabled := false;
  Screen.Cursor := crDefault;
  ProgressBar1.Position := 0;
  Button2.Enabled := true;
  Button3.Enabled := false;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
  // Switch OpenGL Background Color
   weiss:=checkbox1.checked;
   if weiss then
     glClearColor(1, 1, 1, 1)
   else
     glClearColor(0, 0, 0, 1);
end;

procedure TForm1.FormMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  // Catch Polygon with Mouse
    drehen:=true;
    xalt:=x;
    yalt:=y;
    abbruch:=true;
    d1.caption:='Start';
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var f:real;  
begin
  // Turn Polygon with Mouse
   if drehen then begin
     dy:=xalt-x;
     dx:=y-yalt;
     dz:=0;

     glClear(GL_COLOR_BUFFER_BIT or GL_DEPTH_BUFFER_BIT);
     glpushmatrix;
     f:=4.4+vv;
     glTranslatef(f,f,f);
     if (dx<>0) or (dy<>0) then glRotatef(-rotang, dx, dy, dz);
     seite;
     glPopMatrix;
     glFinish;
     SwapBuffers(DC);

     application.processmessages;
   end;
end;

procedure TForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    drehen:=false;
    updown3.position:=round(dx) mod 40;
    updown4.position:=round(dy) mod 40;
    updown5.position:=round(dz) mod 40;
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  // Show Areas
  modus:=0;
    RadioButton1.checked:=true;
    RadioButton2.checked:=false;
    RadioButton3.checked:=false;
    drawscene;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  // Surfaces with edges
  modus:=1;
    RadioButton1.checked:=false;
    RadioButton2.checked:=true;
    RadioButton3.checked:=false;
    drawscene;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  // Show Grid
  modus:=2;
    RadioButton1.checked:=false;
    RadioButton2.checked:=false;
    RadioButton3.checked:=true;
    drawscene;
end;

procedure TForm1.Save1Click(Sender: TObject);
begin
  // Save Coordinates to File
  if SaveDialog2.Execute then
  Memo1.Lines.SaveToFile(SaveDialog2.FileName + '.ini');
end;

procedure TForm1.SpinEdit1Change(Sender: TObject);
begin
  ProgressBar1.Max := SpinEdit1.Value;
  ProgressBar1.Position := 0;
end;

end.



