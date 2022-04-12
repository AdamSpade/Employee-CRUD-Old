program Employees;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, pgdac10, EmployeeListForm, DataModule, EmployeeDetailsForm
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource:=True;
  Application.Scaled:=True;
  Application.Initialize;
  //Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TfrmEmployeeList, frmEmployeeList);
  Application.CreateForm(TfrmEmployeeDetails, frmEmployeeDetails);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.

