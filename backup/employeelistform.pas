unit EmployeeListForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  StdCtrls;

type

  { TfrmEmployeeList }

  TfrmEmployeeList = class(TForm)
    btnCreate: TButton;
    btnUpdate: TButton;
    btnDelete: TButton;
    btnClose: TButton;
    btnSearch: TButton;
    DBGrid1: TDBGrid;
    edt_SearchKeyword: TEdit;
    Label1: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    procedure btnCloseClick(Sender: TObject);
  private

  public

  end;

var
  frmEmployeeList: TfrmEmployeeList;

implementation

{$R *.lfm}

{ TfrmEmployeeList }

procedure TfrmEmployeeList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.

