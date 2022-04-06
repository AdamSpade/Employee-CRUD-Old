unit EmployeeDetailsForm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TfrmEmployeeDetails }

  TfrmEmployeeDetails = class(TForm)
    btnSave: TButton;
    btnCancel: TButton;
    Panel1: TPanel;
    Panel2: TPanel;
  private

  public

  end;

var
  frmEmployeeDetails: TfrmEmployeeDetails;

implementation

{$R *.lfm}

end.

