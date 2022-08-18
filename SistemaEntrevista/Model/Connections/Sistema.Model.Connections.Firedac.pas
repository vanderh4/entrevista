unit Sistema.Model.Connections.Firedac;

interface

uses Sistema.Model.Connections.Interfaces, FireDAC.Comp.Client, System.Classes,
   FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.FMXUI.Wait, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Comp.UI, Data.DB, FireDAC.DApt;

Type
  TModelConnectionFiredac = class(TInterfacedObject, iModelConnection,
    iModelConnectionParameters)
  private
    FConnection: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDatabase: String;
    FUserName: String;
    FPassword: String;
    FDriverID: String;
    FServer: String;
    FPort: Integer;
    procedure ReadParameters;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iModelConnection;
    function EndConnection: TComponent;
    function Database(Value: String): iModelConnectionParameters;
    function UserName(Value: String): iModelConnectionParameters;
    function Password(Value: String): iModelConnectionParameters;
    function DriverID(Value: String): iModelConnectionParameters;
    function Server(Value: String): iModelConnectionParameters;
    function Port(Value: Integer): iModelConnectionParameters;
    function EndParameters: iModelConnection;
    function Parameters : iModelConnectionParameters;
    function Connect : iModelConnection;
  end;

implementation

uses
  System.SysUtils;

{ TModelConnectionFiredac }

function TModelConnectionFiredac.Connect: iModelConnection;
begin
  Result := Self;
  ReadParameters;
  FConnection.Connected := true;
end;

constructor TModelConnectionFiredac.Create;
begin
  FConnection := TFDConnection.Create(nil);
  FDGUIxWaitCursor1 := TFDGUIxWaitCursor.Create(nil);
  FDPhysMySQLDriverLink1 := TFDPhysMySQLDriverLink.Create(nil);
end;

function TModelConnectionFiredac.Database(Value: String): iModelConnectionParameters;
begin
  Result := Self;
  FDatabase := Value;
end;

destructor TModelConnectionFiredac.Destroy;
begin
  FDGUIxWaitCursor1.Free;
  FDPhysMySQLDriverLink1.Free;
  FConnection.Free;
  inherited;
end;

function TModelConnectionFiredac.DriverID(Value: String): iModelConnectionParameters;
begin
  Result := Self;
  FDriverID := Value;
end;

function TModelConnectionFiredac.EndConnection: TComponent;
begin
  Result := FConnection;
end;

function TModelConnectionFiredac.EndParameters: iModelConnection;
begin
  Result := Self;
end;

procedure TModelConnectionFiredac.ReadParameters;
begin
  FConnection.Params.Database := FDatabase;
  FConnection.Params.UserName := FUserName;
  FConnection.Params.Password := FPassword;
  FConnection.Params.DriverID := FDriverID;
  FConnection.Params.Add('Server=' + FServer);
  FConnection.Params.Add('Port=' + IntToStr(FPort));
end;

class function TModelConnectionFiredac.New: iModelConnection;
begin
  Result := Self.Create;
end;

function TModelConnectionFiredac.Parameters: iModelConnectionParameters;
begin
  Result := Self;
end;

function TModelConnectionFiredac.Password(Value: String): iModelConnectionParameters;
begin
  Result := Self;
  FPassword := Value;
end;

function TModelConnectionFiredac.Port(Value: Integer): iModelConnectionParameters;
begin
  Result := Self;
  FPort := Value;
end;

function TModelConnectionFiredac.Server(Value: String): iModelConnectionParameters;
begin
  Result := Self;
  FServer := Value;
end;

function TModelConnectionFiredac.UserName(Value: String): iModelConnectionParameters;
begin
  Result := Self;
  FUserName := Value;
end;

end.
