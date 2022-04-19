unit DataModule;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, PgAccess;

type

  { TDM }

  TDM = class(TDataModule)
    Connection: TPgConnection;
    PgQueryInsert: TPgQuery;
    PgQuerySelect: TPgQuery;
    PgQueryDelete: TPgQuery;
    PgQuerySelectDetails: TPgQuery;
    PgQueryUpdate: TPgQuery;
  private

  public

  end;

var
  DM: TDM;

implementation

{$R *.lfm}

end.

