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
    procedure btnCreateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RefreshGrid;
  private

  public

  end;

var
  frmEmployeeList: TfrmEmployeeList;

implementation

{$R *.lfm}

uses DataModule, EmployeeDetailsForm;

{ TfrmEmployeeList }

procedure TfrmEmployeeList.btnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmEmployeeList.btnCreateClick(Sender: TObject);
begin
  frmEmployeeDetails.Caption:= 'Employee Details - Add';
  frmEmployeeDetails.ShowModal;
  RefreshGrid;
end;

procedure TfrmEmployeeList.FormShow(Sender: TObject);
begin
  with DM.PgQuerySelect do
    begin
      DM.PgQuerySelect.Active:=false;
      DM.PgQuerySelect.SQL.Clear;
      DM.PgQuerySelect.SQL.Text:= 'SELECT id, last_name, first_name, email_address FROM EMPLOYEES'; //Alternative - sql.add('');
      DM.PgQuerySelect.Active:=true;
    end;
end;

procedure TfrmEmployeeList.RefreshGrid;
begin
  with DM.PgQuerySelect do
    begin
      DM.PgQuerySelect.Active:=false;
      DM.PgQuerySelect.SQL.Clear;
      DM.PgQuerySelect.SQL.Text:= 'SELECT id, last_name, first_name, email_address ' +
                                  'FROM Employees WHERE last_name LIKE ' + quotedstr('%' + edt_SearchKeyword.Text + '%');
      DM.PgQuerySelect.Active:=true;
    end;
end;

end.

