unit Sistema.Controller.Connections.Factory.Dataset;

interface

uses Sistema.Controller.Connections.Interfaces, Sistema.Model.Connections.Interfaces,
  Sistema.Model.Connections.Factory.DataSet;

Type
  TControllerConnectionsFactoryDataSet = class(TInterfacedObject, iControllerFactoryDataSet)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerFactoryDataSet;
      function DataSet(Connection : iModelConnection) : iModelDataSet;
  end;

implementation

{ TControllerConexoesFactoryDataSet }

constructor TControllerConnectionsFactoryDataSet.Create;
begin

end;

function TControllerConnectionsFactoryDataSet.DataSet(Connection : iModelConnection) : iModelDataSet;
begin
  Result := TModelConnectionFactoryDataSet.New.DataSetFiredac(Connection);
end;

destructor TControllerConnectionsFactoryDataSet.Destroy;
begin

  inherited;
end;

class function TControllerConnectionsFactoryDataSet.New: iControllerFactoryDataSet;
begin
  Result := Self.Create;
end;

end.
