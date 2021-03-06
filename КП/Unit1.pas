unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls, VCLTee.TeeFunci,
  VCLTee.Series, Vcl.Menus;

type
  TForm1 = class(TForm)
    Chart1: TChart;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Panel1: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit6: TEdit;
    Button1: TButton;
    Series1: TFastLineSeries;
    TeeFunction1: TCustomTeeFunction;
    Button2: TButton;
    Series2: TFastLineSeries;
    TeeFunction2: TCustomTeeFunction;
    ColorDialog1: TColorDialog;
    Button3: TButton;
    Label10: TLabel;
    ComboBox2: TComboBox;
    Panel2: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Edit10: TEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Edit11: TEdit;
    Edit12: TEdit;
    Button4: TButton;
    Button5: TButton;
    ColorDialog2: TColorDialog;
    RadioGroup1: TRadioGroup;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure N1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  Graph, About;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);        //?????????? ??????? 1 ???????
var
  a, b, c, d, range1, range2: double;
  Graph1: TCubic;
  Graph2: TCos;
  Graph3: TSin;
begin
  if (edit5.text='') or (edit6.text='') or (strtofloat(edit5.text)<-1000)
  or (strtofloat(edit6.text)>1000) or (strtofloat(edit5.text) >= strtofloat(edit6.text))
  or (edit1.Text = '') or (edit2.Text = '') or (edit3.Text = '') or (edit4.Text = '') then
    showmessage('????????? ??? ???? ?????????!')
  else
  begin
      chart1.UndoZoom;
      a := strtofloat(edit1.text);
      b := strtofloat(edit2.text);
      c := strtofloat(edit3.text);
      d := strtofloat(edit4.text);
      range1 := strtofloat(edit5.text);
      range2 := strtofloat(edit6.text);

    if combobox1.ItemIndex = -1 then
      showmessage('???????? ??? ???????!');

    if combobox1.ItemIndex = 0 then    //?????????? ?????????
    begin
      Graph1:= TCubic.Create(a, b, c, d);
      Graph1.Draw(range1, range2, Series1, ColorDialog1.Color);
    end;

    if combobox1.ItemIndex = 1 then    //???????
    begin
      Graph2 := TCos.Create(a, b, c, d);
      Graph2.Draw(range1, range2, Series1, ColorDialog1.Color);
    end;

    if combobox1.ItemIndex = 2 then    //?????
    begin
      Graph3 := Tsin.Create(a, b, c, d);
      Graph3.Draw(range1, range2, Series1, ColorDialog1.Color);
    end;

  end;
end;

procedure TForm1.Button2Click(Sender: TObject);   //??????? ????
begin
  Series1.Clear;
  Series2.Clear;
  chart1.UndoZoom;
  series1.Title:='...';
  series2.Title:='...';
  Series1.Color := clblack;
  Series2.Color := clblack;
  radiogroup1.ItemIndex:=0;
end;

procedure TForm1.Button3Click(Sender: TObject);   //????? ?????  1 ???????
begin
  colordialog1.Execute;
end;

procedure TForm1.Button4Click(Sender: TObject);    //????? ????? 2 ???????
begin
  colordialog2.Execute;
end;

procedure TForm1.Button5Click(Sender: TObject);    //?????????? ??????? 2 ???????
var
  a, b, c, d, range1, range2: double;
  Graph1: TCubic;
  Graph2: TCos;
  Graph3: TSin;
begin
  if (edit11.Text = '') or (edit12.Text = '') or  (strtofloat(edit11.text)<-1000)
  or (strtofloat(edit12.text)>1000) or (strtofloat(edit11.text) >= strtofloat(edit12.text))
  or (edit7.Text = '') or (edit8.Text = '') or (edit9.Text = '') or (edit10.Text = '') then
    showmessage('????????? ??? ???? ?????????!')
  else
  begin
      chart1.UndoZoom;
      a := strtofloat(edit7.text);
      b := strtofloat(edit8.text);
      c := strtofloat(edit9.text);
      d := strtofloat(edit10.text);
      range1 := strtofloat(edit11.text);
      range2 := strtofloat(edit12.text);

    if combobox2.ItemIndex = -1 then
      showmessage('???????? ??? ???????!');

    if combobox2.ItemIndex = 0 then    //?????????? ?????????
    begin
      Graph1:= TCubic.Create(a, b, c, d);
      Graph1.Draw(range1, range2, Series2, ColorDialog2.Color);
    end;

    if combobox2.ItemIndex = 1 then    //???????
    begin
      Graph2 := TCos.Create(a, b, c, d);
      Graph2.Draw(range1, range2, Series2, ColorDialog2.Color);
    end;

    if combobox2.ItemIndex = 2 then    //?????
    begin
      Graph3 := Tsin.Create(a, b, c, d);
      Graph3.Draw(range1, range2, Series2, ColorDialog2.Color);
    end;

  end;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);  //??????????? ?? ????
begin
  if not (Key in ['0'..'9', #8, #44, #45]) then
    Key := #0;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin
series1.Title:='...';
series2.Title:='...';
end;

procedure TForm1.N1Click(Sender: TObject);   //?????????? ???????
begin
Chart1.SaveToBitmapFile(FormatDateTime('??????_' + 'dd.mm.yyyy_hh.mm', now)+'.bmp');
showmessage('?????? ????????!');
end;

procedure TForm1.N2Click(Sender: TObject);   //? ?????????
begin
 form3.ShowModal;
end;

procedure TForm1.RadioGroup1Click(Sender: TObject);  //???????????? ?????
begin
if radiogroup1.ItemIndex=0 then
 chart1.BottomAxis.Logarithmic:=false;
if radiogroup1.ItemIndex=1 then
 try
 chart1.BottomAxis.Logarithmic:=true;
 except
 on AxisException do
  begin
   radiogroup1.ItemIndex:=0;
   showmessage('?????????? ? ??????????????? ???????? ??????????!' + #13#10 +
   '???????? ????????!');
  end;
 end;

 end;

end.

