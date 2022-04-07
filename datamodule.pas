unit DataModule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, PgAccess;

type

  { TDM }

  TDM = class(TDataModule)
    Connection: TPgConnection;
    PgQuerySelect: TPgQuery;
  private

  public

  end;

var
  DM: TDM;

implementation

{$R *.lfm}

end.

