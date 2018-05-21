unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var f:textfile;
  i,j,sucet:integer;
begin
  assignfile(f,'dokonale.txt');
  rewrite(f);
  for i:=1 to 1000 do
  begin
    sucet:=0;
    for j:=1 to i-1 do if (i mod j=0) then sucet:=sucet+j;
    if sucet=i then writeln(f,i);
  end;
  closefile(f);
  showmessage('Pozri súbor dokonale.txt')
end;

end.

