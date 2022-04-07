unit EmployeeListForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  StdCtrls, PgAccess, DataModule.PgQuerySelect;

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
    PgDataSource1: TPgDataSource;
    procedure btnCloseClick(Sender: TObject);
  private

  public

  end;

var
  frmEmployeeList: TfrmEmployeeList;

implementation
uses
  DataModule.PgQuerySelect;

{$R *.lfm}

{ TfrmEmployeeList }

procedure TfrmEmployeeList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

end.

