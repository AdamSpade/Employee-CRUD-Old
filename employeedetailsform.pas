unit EmployeeDetailsForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  PgAccess;

type

  { TfrmEmployeeDetails }

  TfrmEmployeeDetails = class(TForm)
    btnSave: TButton;
    btnCancel: TButton;
    edtEmployeeID: TEdit;
    edtEmployeeFirstName: TEdit;
    edtEmployeeLastName: TEdit;
    edtEmployeeEmail: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    procedure btnSaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  frmEmployeeDetails: TfrmEmployeeDetails;

implementation

{$R *.lfm}

uses DataModule;

{ TfrmEmployeeDetails }

procedure TfrmEmployeeDetails.FormShow(Sender: TObject);
begin
  if(Self.Caption = 'Employee Details - Add') then
    begin
      edtEmployeeID.Clear;
      edtEmployeeFirstName.Clear;
      edtEmployeeLastName.Clear;
      edtEmployeeEmail.Clear;
    end;
end;

procedure TfrmEmployeeDetails.btnSaveClick(Sender: TObject);
begin
  if(Self.Caption = 'Employee Details - Add') then
    begin
      if(edtEmployeeFirstName.Text <> '') and (edtEmployeeLastName.Text <> '') then
        begin
          with DM.PgQueryInsert do
            begin
              DM.PgQueryInsert.Active:=false;
              DM.PgQueryInsert.SQL.Clear;
              DM.PgQueryInsert.SQL.Text:= 'INSERT INTO Employees(id, first_name, last_name, email_address) ' +
                                          ' VALUES(' + QuotedStr(edtEmployeeID.Text) + ',' +
                                                       QuotedStr(edtEmployeeFirstName.Text) + ',' +
                                                       QuotedStr(edtEmployeeLastName.Text) + ',' +
                                                       QuotedStr(edtEmployeeEmail.Text) + ')';
              ShowMessage(DM.PgQueryInsert.SQL.Text);
              DM.PgQueryInsert.ExecSQL;
            end;

          ShowMessage('New record successfully added');
          Close;
        end;
    end;
end;

end.

