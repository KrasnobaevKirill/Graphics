unit Graph;

interface

uses
  VCLTee.Series, Math, Dialogs,  SysUtils, unit1;

type
  TGraph = class
  public
    Fa, Fb, Fc, Fd: Double;
    constructor Create(a, b, c, d: Double);
    procedure Draw(start, finish: Double; Series: TFastLineSeries; color: Integer); virtual; abstract;
  end;

  TCubic = class(TGraph)
  public
    procedure Draw(start, finish: Double; Series: TFastLineSeries; color: Integer); override;
  end;

  TCos = class(TGraph)
  public
    procedure Draw(start, finish: Double; Series: TFastLineSeries; color: Integer); override;
  end;

  TSin = class(TGraph)
  public
    procedure Draw(start, finish: Double; Series: TFastLineSeries; color: Integer); override;
  end;

implementation

constructor TGraph.Create(a, b, c, d: Double);
begin
  Fa := a;
  Fb := b;
  Fc := c;
  Fd := d;
end;

procedure TCubic.Draw(start, finish: Double; Series: TFastLineSeries; color: Integer);
var
  x: double;
begin
  Series.Clear;
  series.Title:='...';
  if (Fa<>0) or (Fb<>0) or (Fc<>0) or (Fc<>0) then
    begin
      Series.Color := color;
      x := start;
      while x <= finish do
      begin
      Series.AddXY(x, Fa*x*x*x + Fb*x*x + Fc*x + Fd);
      x := x + 0.01;
      end;
      series.Title:='y=' + floattostr(Fa) + '*x^3+' + floattostr(Fb) + '*x^2+' + floattostr(Fc) + '*x+' + floattostr(Fd);
    end;
end;

procedure TCos.Draw(start, finish: Double; Series: TFastLineSeries; color: Integer);
var
  x: double;
begin
  Series.Clear;
  series.Title:='...';
  if Fa<>0 then
    begin
      Series.Color := color;
      x := start;
      while x <= finish do
      begin
        Series.AddXY(x, Fa*cos(Fb*x));
        x := x + 0.01;
      end;
      series.Title:='y=' + floattostr(Fa) + '*cos(' + floattostr(Fb) + '*x)';
    end;
end;

procedure TSin.Draw(start, finish: Double; Series: TFastLineSeries; color: Integer);
var
  x: double;
begin
  Series.Clear;
  series.Title:='...';
  if (Fa<>0) and (Fb<>0) then
    begin
      Series.Color := color;
      x := start;
      while x <= finish do
      begin
        Series.AddXY(x, Fa*sin(Fb*x));
        x := x + 0.01;
      end;
       series.Title:='y=' + floattostr(Fa) + '*sin(' + floattostr(Fb) + '*x)';
    end;
end;

end.

