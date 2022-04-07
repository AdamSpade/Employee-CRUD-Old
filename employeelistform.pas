unit EmployeeListForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, DBGrids,
  StdCtrls, PgAccess;

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
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmEmployeeList: TfrmEmployeeList;

implementation
uses
  DataModule;

{$R *.lfm}

{ TfrmEmployeeList }

procedure TfrmEmployeeList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmployeeList.FormShow(Sender: TObject);
var
  active:boolean;
begin
  with DM.PgQuerySelect do;
    begin
      DM.PgQuerySelect.Active:=false;
      DM.PgQuerySelect.SQL.Clear;
      DM.PgQuerySelect.SQL.Text:= 'SELECT id, last_name, first_name, email_address FROM EMPLOYEES'; //Alternative - sql.add('');
      DM.PgQuerySelect.Active:=true;
    end;
end;

end.

