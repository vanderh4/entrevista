unit Sistema.Controller.Connections.Factory;

interface

uses Sistema.Controller.Connections.Interfaces, Sistema.Model.Connections.Interfaces,
  Sistema.Model.Connections.Factory;

Type
  TControllerConnectionsFactory = class(TInterfacedObject, iControllerFactoryConnection)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerFactoryConnection;
      function Connection : iModelConnection;
  end;

implementation

uses
  System.SysUtils;

{ TControllerConnectionsFactory }

function TControllerConnectionsFactory.Connection: iModelConnection;
var
  Conexao : Integer;
begin
  Conexao := 0;

  case Conexao of
    0 :  Result := TModelFactoryConnections.New
              .ConnectionFiredac
              .Parameters
                .Database('xschema')
                .UserName('admin')
                .Password('3hjk5j4hg53')
                .DriverID('mysql')
                .Server('localhost')
                .Port(3306)
              .EndParameters
              .Connect;

    1 : raise Exception.Create('Componente de Acesso Zeos Não Configurado');
  end;



end;

constructor TControllerConnectionsFactory.Create;
begin

end;

destructor TControllerConnectionsFactory.Destroy;
begin

  inherited;
end;

class function TControllerConnectionsFactory.New: iControllerFactoryConnection;
begin
  Result := Self.Create;
end;

end.
