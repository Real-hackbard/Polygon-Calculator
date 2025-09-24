program Polygon;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  glex in 'glex.pas';

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := '';
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
