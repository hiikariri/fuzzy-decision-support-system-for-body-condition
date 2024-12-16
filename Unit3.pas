unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, VCLTee.TeEngine,
  VCLTee.Series, Vcl.ExtCtrls, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Mask, Math, Vcl.ComCtrls, Vcl.Grids;

type
  TForm3 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    Series3: TLineSeries;
    Chart2: TChart;
    Series4: TLineSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    BitBtn1: TBitBtn;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    BitBtn2: TBitBtn;
    Chart3: TChart;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TLineSeries;
    Chart7: TChart;
    Chart4: TChart;
    Chart5: TChart;
    Chart6: TChart;
    Chart8: TChart;
    Chart9: TChart;
    Chart10: TChart;
    Chart11: TChart;
    Chart12: TChart;
    Series10: TLineSeries;
    Series11: TLineSeries;
    Series12: TLineSeries;
    Series13: TLineSeries;
    Series14: TLineSeries;
    Series15: TLineSeries;
    Series16: TLineSeries;
    Series17: TLineSeries;
    Series18: TLineSeries;
    Series19: TLineSeries;
    Series20: TLineSeries;
    Series21: TLineSeries;
    Series22: TLineSeries;
    Series23: TLineSeries;
    Series24: TLineSeries;
    Series25: TLineSeries;
    Series26: TLineSeries;
    Series27: TLineSeries;
    Series28: TLineSeries;
    Series29: TLineSeries;
    Series30: TLineSeries;
    Series31: TLineSeries;
    Series32: TLineSeries;
    Series33: TLineSeries;
    Series34: TLineSeries;
    Series35: TLineSeries;
    Series36: TLineSeries;
    Chart13: TChart;
    Series37: TLineSeries;
    Series38: TLineSeries;
    Series39: TLineSeries;
    BitBtn3: TBitBtn;
    ListBox1: TListBox;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    Series40: TBarSeries;
    Series41: TBarSeries;
    Series42: TBarSeries;
    Series43: TBarSeries;
    Series44: TLineSeries;
    Series45: TLineSeries;
    Series46: TLineSeries;
    Series47: TLineSeries;
    Series48: TLineSeries;
    Series49: TLineSeries;
    Series50: TLineSeries;
    Series51: TLineSeries;
    Series52: TLineSeries;
    Series53: TLineSeries;
    Series54: TLineSeries;
    Series55: TLineSeries;
    Series56: TLineSeries;
    Series57: TLineSeries;
    Series58: TLineSeries;
    Series59: TLineSeries;
    Series60: TLineSeries;
    Series61: TLineSeries;
    Series62: TLineSeries;
    Series63: TLineSeries;
    Series64: TLineSeries;
    Series65: TLineSeries;
    Series66: TLineSeries;
    Series67: TLineSeries;
    Series68: TLineSeries;
    Series69: TLineSeries;
    Series70: TLineSeries;
    Series71: TBarSeries;
    StringGrid1: TStringGrid;
    Label1: TLabel;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    procedure IMF_height_short(input_height, a, b, c: Double);
    procedure IMF_height_medium(input_height, a, b, c: Double);
    procedure IMF_height_tall(input_height, a, b, c: Double);
    procedure IMF_weight_light(input_weight, a, b, c: Double);
    procedure IMF_weight_medium(input_weight, a, b, c: Double);
    procedure IMF_weight_heavy(input_weight, a, b, c: Double);
    procedure OMF_body_condition_NI(input_body_condition, a, b, c: Double);
    procedure OMF_body_condition_FI(input_body_condition, a, b, c: Double);
    procedure OMF_body_condition_I(input_body_condition, a, b, c: Double);
    procedure visualize_rule(rule: array of Double; Series_NI: TLineSeries; Series_FI: TLineSeries; Series_I: TLineSeries);
    procedure visualize_OMF(Series_NI: TLineSeries; Series_FI: TLineSeries; Series_I: TLineSeries);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  u_height_short, u_height_medium, u_height_tall, input_height: Double;
  u_weight_light, u_weight_medium, u_weight_heavy, input_weight: Double;
  u_body_condition_NI, u_body_condition_FI, u_body_condition_I, input_body_condition: Double;
  z_result, u_body_condition, rule1, rule2, rule3, rule4, rule5, rule6, rule7, rule8, rule9: array of Double;
  input_height_, input_weight_: Double;

implementation

{$R *.dfm}

function two_point_line_func(input, y1, x1, y2, x2: Double): Double;
var
  y: Double;
begin
  y := y1 + ((y2 - y1) * (input - x1)) / (x2 - x1);
  Result := y;
end;

procedure TForm3.IMF_height_short(input_height, a, b, c: Double);
var
  i: Integer;
begin
  Series1.Clear;
  if input_height < b then
    u_height_short := 1.0
  else if (input_height >= b) and (input_height <= c) then
    u_height_short := two_point_line_func(input_height, 1, b, 0, c)
  else
    u_height_short := 0;

  for i := Round(a) to Round(b) do
  begin
    Series1.AddXY(i, 1.0);
  end;

  for i := Round(b) to Round(c) do
  begin
    Series1.AddXY(i, two_point_line_func(i, 1, b, 0, c));
  end;
end;

procedure TForm3.IMF_height_medium(input_height, a, b, c: Double);
var
  i: Integer;
begin
  Series2.Clear;
  if (input_height >= a) and (input_height < b) then
    u_height_medium := two_point_line_func(input_height, 0, a, 1, b)
  else if (input_height >= b) and (input_height <= c) then
    u_height_medium := two_point_line_func(input_height, 1, b, 0, c)
  else
    u_height_medium := 0;

  for i := Round(a) to Round(b) do
  begin
    Series2.AddXY(i, two_point_line_func(i, 0, a, 1, b));
  end;

  for i := Round(b) to Round(c) do
  begin
    Series2.AddXY(i, two_point_line_func(i, 1, b, 0, c));
  end;
end;

procedure TForm3.IMF_height_tall(input_height, a, b, c: Double);
var
  i: Integer;
begin
  Series3.Clear;
  if (input_height >= a) and (input_height <= b) then
    u_height_tall := two_point_line_func(input_height, 0, a, 1, b)
  else if input_height > b then
    u_height_tall := 1.0
  else
    u_height_tall := 0;

  for i := Round(a) to Round(b) do
  begin
    Series3.AddXY(i, two_point_line_func(i, 0, a, 1, b));
  end;

  for i := Round(b) to Round(c) do
  begin
    Series3.AddXY(i, 1.0);
  end;
end;

procedure TForm3.IMF_weight_light(input_weight, a, b, c: Double);
var
  i: Integer;
begin
  Series4.Clear;
  if input_weight < b then
    u_weight_light := 1.0
  else if (input_weight >= b) and (input_weight <= c) then
    u_weight_light := two_point_line_func(input_weight, 1, b, 0, c)
  else
    u_weight_light := 0;

  for i := Round(a) to Round(b) do
  begin
    Series4.AddXY(i, 1.0);
  end;

  for i := Round(b) to Round(c) do
  begin
    Series4.AddXY(i, two_point_line_func(i, 1, b, 0, c));
  end;
end;

procedure TForm3.IMF_weight_medium(input_weight, a, b, c: Double);
var
  i: Integer;
begin
  Series5.Clear;
  if (input_weight >= a) and (input_weight < b) then
    u_weight_medium := two_point_line_func(input_weight, 0, a, 1, b)
  else if (input_weight >= b) and (input_weight <= c) then
    u_weight_medium := two_point_line_func(input_weight, 1, b, 0, c)
  else
    u_weight_medium := 0;

  for i := Round(a) to Round(b) do
  begin
    Series5.AddXY(i, two_point_line_func(i, 0, a, 1, b));
  end;

  for i := Round(b) to Round(c) do
  begin
    Series5.AddXY(i, two_point_line_func(i, 1, b, 0, c));
  end;
end;

procedure TForm3.IMF_weight_heavy(input_weight, a, b, c: Double);
var
  i: Integer;
begin
  Series6.Clear;
  if (input_weight >= a) and (input_weight <= b) then
    u_weight_heavy := two_point_line_func(input_weight, 0, a, 1, b)
  else if input_weight > b then
    u_weight_heavy := 1.0
  else
    u_weight_heavy := 0;

  for i := Round(a) to Round(b) do
  begin
    Series6.AddXY(i, two_point_line_func(i, 0, a, 1, b));
  end;

  for i := Round(b) to Round(c) do
  begin
    Series6.AddXY(i, 1.0);
  end;
end;

procedure TForm3.OMF_body_condition_NI(input_body_condition, a, b, c: Double);
begin
  if input_body_condition < b then
    u_body_condition_NI := 1.0
  else if (input_body_condition >= b) and (input_body_condition <= c) then
    u_body_condition_NI := 1 - ((input_body_condition - 25) / 25)
  else
    u_body_condition_NI := 0;
end;

procedure TForm3.OMF_body_condition_FI(input_body_condition, a, b, c: Double);
begin
  if (input_body_condition >= a) and (input_body_condition < b) then
    u_body_condition_FI := (input_body_condition - 25) / 25
  else if (input_body_condition >= b) and (input_body_condition <= c) then
    u_body_condition_FI := 1 - ((input_body_condition - 50) / 25)
  else
    u_body_condition_FI := 0;
end;

procedure TForm3.OMF_body_condition_I(input_body_condition, a, b, c: Double);
begin
  if (input_body_condition >= a) and (input_body_condition <= b) then
    u_body_condition_I := (input_body_condition - 50) / 25
  else if input_body_condition > b then
    u_body_condition_I := 1.0
  else
    u_body_condition_I := 0;
end;

procedure TForm3.visualize_OMF(Series_NI: TLineSeries; Series_FI: TLineSeries; Series_I: TLineSeries);
var
  i: Integer;
begin
  Series_NI.Clear;
  Series_FI.Clear;
  Series_I.Clear;

  for i := 0 to 25 do
  begin
    Series_NI.AddXY(i, 1.0);
  end;

  for i := 25 to 50 do
  begin
    Series_NI.AddXY(i, 1 - ((i - 25) / 25));
  end;

  for i := 25 to 50 do
  begin
    Series_FI.AddXY(i, (i - 25) / 25);
  end;

  for i := 50 to 75 do
  begin
    Series_FI.AddXY(i, 1 - ((i - 50) / 25));
  end;

  for i := 50 to 75 do
  begin
    Series_I.AddXY(i, (i - 50) / 25);
  end;

  for i := 75 to 100 do
  begin
    Series_I.AddXY(i, 1.0);
  end;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
var
  i: Integer;
begin
  ListBox1.Clear;
  Series41.Clear;
  Series42.Clear;
  Series43.Clear;
  input_height_ := StrToFloat(LabeledEdit1.Text);
  input_weight_ := StrToFloat(LabeledEdit2.Text);
  IMF_height_short(input_height_, 0, 160, 170);
  IMF_height_medium(input_height_, 160, 170, 180);
  IMF_height_tall(input_height_, 170, 180, 220);
  IMF_weight_light(input_weight_, 0, 45, 60);
  IMF_weight_medium(input_weight_, 45, 60, 75);
  IMF_weight_heavy(input_weight_, 60, 75, 120);
  visualize_OMF(Series7, Series8, Series9);

  i := 1;
  while i <= StringGrid2.RowCount do
  begin
    StringGrid2.Cells[1, i] := FloatToStr(u_height_short);
    StringGrid2.Cells[2, i] := FloatToStr(u_height_medium);
    StringGrid2.Cells[3, i] := FloatToStr(u_height_tall);
    i := i + 2;
  end;

  i := 1;
  while i <= StringGrid2.ColCount do
  begin
    StringGrid2.Cells[i, 2] := FloatToStr(u_weight_light);
    StringGrid2.Cells[i, 4] := FloatToStr(u_weight_medium);
    StringGrid2.Cells[i, 6] := FloatToStr(u_weight_heavy);
    i := i + 1;
  end;

  ListBox1.Items.Add('u_HS: ' + FloatToStr(u_height_short));
  ListBox1.Items.Add('u_HM: ' + FloatToStr(u_height_medium));
  ListBox1.Items.Add('u_HD: ' + FloatToStr(u_height_tall));
  ListBox1.Items.Add('==========');
  ListBox1.Items.Add('u_WL: ' + FloatToStr(u_weight_light));
  ListBox1.Items.Add('u_WM: ' + FloatToStr(u_weight_medium));
  ListBox1.Items.Add('u_WH: ' + FloatToStr(u_weight_heavy));
  ListBox1.Items.Add('==========');
  Series41.AddXY(input_height_, 5);
  Series42.AddXY(input_weight_, 5);
end;

procedure TForm3.visualize_rule(rule: array of Double; Series_NI: TLineSeries; Series_FI: TLineSeries; Series_I: TLineSeries);
var
  i: Integer;
begin
  Series_NI.Clear;
  Series_FI.Clear;
  Series_I.Clear;

  for i := 0 to 25 do
  begin
    Series_NI.AddXY(i, min(1.0, rule[0]));
  end;

  for i := 25 to 50 do
  begin
    Series_NI.AddXY(i, min(1 - ((i - 25) / 25), rule[0]));
  end;

  for i := 25 to 50 do
  begin
    Series_FI.AddXY(i, min((i - 25) / 25, rule[1]));
  end;

  for i := 50 to 75 do
  begin
    Series_FI.AddXY(i, min(1 - ((i - 50) / 25), rule[1]));
  end;

  for i := 50 to 75 do
  begin
    Series_I.AddXY(i, min((i - 50) / 25, rule[2]));
  end;

  for i := 75 to 100 do
  begin
    Series_I.AddXY(i, min(1.0, rule[2]));
  end;
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
var
  temp: Double;
  i: Integer;
begin
  SetLength(u_body_condition, 3);
  SetLength(rule1, 3);
  SetLength(rule2, 3);
  SetLength(rule3, 3);
  SetLength(rule4, 3);
  SetLength(rule5, 3);
  SetLength(rule6, 3);
  SetLength(rule7, 3);
  SetLength(rule8, 3);
  SetLength(rule9, 3);
  {
  R[1] := I;
  R[2] := FI;
  R[3] := NI;
  R[4] := FI;
  R[5] := I;
  R[6] := FI;
  R[7] := NI;
  R[8] := FI;
  R[9] := I;
  }
  u_body_condition_I := 0;
  u_body_condition_FI := 0;
  u_body_condition_NI := 0;
  { fuzzy inference, max-min method }
  // Rule 1
  temp:= min(u_height_short, u_weight_light);
  StringGrid3.Cells[1, 1] := FloatToStr(temp);
  rule1[0] := 0;
  rule1[1] := 0;
  rule1[2] := temp;
  visualize_rule(rule1, Series10, Series11, Series12);
  visualize_OMF(Series44, Series45, Series46);
  u_body_condition_I := max(u_body_condition_I, temp);
  // Rule 2
  temp:= min(u_height_medium, u_weight_light);
  StringGrid3.Cells[2, 1] := FloatToStr(temp);
  rule2[0] := 0;
  rule2[1] := temp;
  rule2[2] := 0;
  visualize_rule(rule2, Series13, Series14, Series15);
  visualize_OMF(Series47, Series48, Series49);
  u_body_condition_FI := max(u_body_condition_FI, temp);
  // Rule 3
  temp:= min(u_height_tall, u_weight_light);
  StringGrid3.Cells[3, 1] := FloatToStr(temp);
  rule3[0] := temp;
  rule3[1] := 0;
  rule3[2] := 0;
  visualize_rule(rule3, Series16, Series17, Series18);
  visualize_OMF(Series50, Series51, Series52);
  u_body_condition_NI := max(u_body_condition_NI, temp);
  // Rule 4
  temp:= min(u_height_short, u_weight_medium);
  StringGrid3.Cells[1, 2] := FloatToStr(temp);
  rule4[0] := 0;
  rule4[1] := temp;
  rule4[2] := 0;
  visualize_rule(rule4, Series19, Series20, Series21);
  visualize_OMF(Series53, Series54, Series55);
  u_body_condition_FI := max(u_body_condition_FI, temp);
  // Rule 5
  temp:= min(u_height_medium, u_weight_medium);
  StringGrid3.Cells[2, 2] := FloatToStr(temp);
  rule5[0] := 0;
  rule5[1] := 0;
  rule5[2] := temp;
  visualize_rule(rule5, Series22, Series23, Series24);
  visualize_OMF(Series56, Series57, Series58);
  u_body_condition_I := max(u_body_condition_I, temp);
  // Rule 6
  temp:= min(u_height_tall, u_weight_medium);
  StringGrid3.Cells[3, 2] := FloatToStr(temp);
  rule6[0] := 0;
  rule6[1] := temp;
  rule6[2] := 0;
  visualize_rule(rule6, Series25, Series26, Series27);
  visualize_OMF(Series59, Series60, Series61);
  u_body_condition_FI := max(u_body_condition_FI, temp);
  // Rule 7
  temp:= min(u_height_short, u_weight_heavy);
  StringGrid3.Cells[1, 3] := FloatToStr(temp);
  rule7[0] := temp;
  rule7[1] := 0;
  rule7[2] := 0;
  visualize_rule(rule7, Series28, Series29, Series30);
  visualize_OMF(Series62, Series63, Series64);
  u_body_condition_NI := max(u_body_condition_NI, temp);
  // Rule 8
  temp:= min(u_height_medium, u_weight_heavy);
  StringGrid3.Cells[2, 3] := FloatToStr(temp);
  rule8[0] := 0;
  rule8[1] := temp;
  rule8[2] := 0;
  visualize_rule(rule8, Series31, Series32, Series33);
  visualize_OMF(Series65, Series66, Series67);
  u_body_condition_FI := max(u_body_condition_FI, temp);
  // Rule 9
  temp:= min(u_height_tall, u_weight_heavy);
  StringGrid3.Cells[3, 3] := FloatToStr(temp);
  rule9[0] := 0;
  rule9[1] := 0;
  rule9[2] := temp;
  visualize_rule(rule9, Series34, Series35, Series36);
  visualize_OMF(Series68, Series69, Series70);
  u_body_condition_I := max(u_body_condition_I, temp);

  // Results
  u_body_condition[0] := u_body_condition_NI;
  u_body_condition[1] := u_body_condition_FI;
  u_body_condition[2] := u_body_condition_I;
  visualize_OMF(Series37, Series38, Series39);

  for i := 0 to StringGrid4.ColCount - 2 do
  begin
    StringGrid4.Cells[i + 1, 1] := FloatToStr(u_body_condition[i]);
  end;
  ListBox1.Items.Add('uNI: ' + FloatToStr(u_body_condition[0]));
  ListBox1.Items.Add('uFI: ' + FloatToStr(u_body_condition[1]));
  ListBox1.Items.Add('uI: ' + FloatToStr(u_body_condition[2]));
  ListBox1.Items.Add('==========');
end;

procedure TForm3.BitBtn3Click(Sender: TObject);
var
  i: Integer;
  NI_z_result, FI_z_result, I_z_result: array of Double;
  centroid_result, numerator, denumerator: Double;
begin
  Series71.Clear;
  Series40.Clear;
  SetLength(NI_z_result, 101);
  SetLength(FI_z_result, 101);
  SetLength(I_z_result, 101);
  SetLength(z_result, 101);
  numerator := 0;
  denumerator := 0;
  for i := 1 to 100 do
  begin
    OMF_body_condition_NI(i, 0, 25, 50);
    if (u_body_condition_NI >= u_body_condition[0]) then
      NI_z_result[i] := u_body_condition[0]
    else
      NI_z_result[i] := u_body_condition_NI;

    OMF_body_condition_FI(i, 25, 50, 75);
    if (u_body_condition_FI >= u_body_condition[1]) then
      FI_z_result[i] := u_body_condition[1]
    else
      FI_z_result[i] := u_body_condition_FI;

    OMF_body_condition_I(i, 50, 75, 100);
    if (u_body_condition_I >= u_body_condition[2]) then
      I_z_result[i] := u_body_condition[2]
    else
      I_z_result[i] := u_body_condition_I;

    z_result[i] := max(NI_z_result[i], FI_z_result[i]);
    z_result[i] := max(z_result[i], I_z_result[i]);
    ListBox1.Items.Add('uC[' + IntToStr(i) + ']: ' + FloatToStr(z_result[i]));
    Series40.AddXY(i, z_result[i]);
    numerator := numerator + z_result[i] * i;
    denumerator := denumerator + z_result[i];
  end;

  centroid_result := numerator/denumerator;
  Series71.AddXY(centroid_result, 5);

  OMF_body_condition_NI(centroid_result, 0, 25, 50);
  OMF_body_condition_FI(centroid_result, 25, 50, 75);
  OMF_body_condition_I(centroid_result, 50, 75, 100);

  Series43.AddXY(centroid_result, 5);
  LabeledEdit3.Text := FloatToStr(centroid_result);
  LabeledEdit4.Text := FloatToStr(u_body_condition_NI * 100);
  LabeledEdit5.Text := FloatToStr(u_body_condition_FI * 100);
  LabeledEdit6.Text := FloatToStr(u_body_condition_I * 100);
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0, 0] := 'TB/BB';
  StringGrid1.Cells[1, 0] := 'Short';
  StringGrid1.Cells[2, 0] := 'Medium';
  StringGrid1.Cells[3, 0] := 'Tall';
  StringGrid1.Cells[0, 1] := 'Light';
  StringGrid1.Cells[0, 2] := 'Medium';
  StringGrid1.Cells[0, 3] := 'Heavy';
  StringGrid1.Cells[1, 1] := 'I';
  StringGrid1.Cells[2, 1] := 'FI';
  StringGrid1.Cells[3, 1] := 'NI';
  StringGrid1.Cells[1, 2] := 'FI';
  StringGrid1.Cells[2, 2] := 'I';
  StringGrid1.Cells[3, 2] := 'FI';
  StringGrid1.Cells[1, 3] := 'NI';
  StringGrid1.Cells[2, 3] := 'FI';
  StringGrid1.Cells[3, 3] := 'I';

  StringGrid2.Cells[0, 0] := 'TB/BB';
  StringGrid2.Cells[1, 0] := 'Short';
  StringGrid2.Cells[2, 0] := 'Medium';
  StringGrid2.Cells[3, 0] := 'Tall';
  StringGrid2.Cells[0, 1] := 'Light';
  StringGrid2.Cells[0, 3] := 'Medium';
  StringGrid2.Cells[0, 5] := 'Heavy';

  StringGrid3.Cells[0, 0] := 'TB/BB';
  StringGrid3.Cells[1, 0] := 'Short';
  StringGrid3.Cells[2, 0] := 'Medium';
  StringGrid3.Cells[3, 0] := 'Tall';
  StringGrid3.Cells[0, 1] := 'Light';
  StringGrid3.Cells[0, 2] := 'Medium';
  StringGrid3.Cells[0, 3] := 'Heavy';

  StringGrid4.Cells[0, 0] := 'BC/uBC';
  StringGrid4.Cells[1, 0] := 'TI';
  StringGrid4.Cells[2, 0] := 'FI';
  StringGrid4.Cells[3, 0] := 'I';
  StringGrid4.Cells[0, 1] := 'uBC';
end;

end.
