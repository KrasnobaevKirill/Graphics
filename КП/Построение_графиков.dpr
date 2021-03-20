program Построение_графиков;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Graph in 'Graph.pas',
  Splash in 'Splash.pas' {Form2},
  About in 'About.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Form2 := TForm2.Create(Application);
  Form2.Show;
  Form2.Update;
  while Form2.Timer1.Enabled do
    Application.ProcessMessages;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Form2.Hide;
  Form2.Free;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
