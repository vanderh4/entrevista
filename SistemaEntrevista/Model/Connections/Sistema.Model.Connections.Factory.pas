unit Sistema.Model.Connections.Factory;

interface

uses Sistema.Model.Connections.Interfaces, Sistema.Model.Connections.Firedac;

Type
  TModelFactoryConnections = class(TInterfacedObject, iModelFactoryConnections)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelFactoryConnections;
      function ConnectionFiredac : iModelConnection;
  end;

implementation

{ TModelConnectionFactory }

function TModelFactoryConnections.ConnectionFiredac: iModelConnection;
begin
  Result := TModelConnectionFiredac.New;
end;

constructor TModelFactoryConnections.Create;
begin

end;

destructor TModelFactoryConnections.Destroy;
begin

  inherited;
end;

class function TModelFactoryConnections.New: iModelFactoryConnections;
begin
  Result := Self.Create;
end;

end.
