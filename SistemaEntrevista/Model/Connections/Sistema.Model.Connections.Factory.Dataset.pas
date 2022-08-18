unit Sistema.Model.Connections.Factory.Dataset;

interface

uses Sistema.Model.Connections.Interfaces, Sistema.Model.Connections.TableFiredac;

Type
  TModelConnectionFactoryDataSet = class(TInterfacedObject, iModelFactoryDataSet)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelFactoryDataSet;
      function DataSetFiredac(Connection : iModelConnection) : iModelDataSet;
  end;

implementation

{ TModelConexaoFactoryDataSet }

constructor TModelConnectionFactoryDataSet.Create;
begin

end;

function TModelConnectionFactoryDataSet.DataSetFiredac(Connection : iModelConnection) : iModelDataSet;
begin
  Result := TModelConnectionsTableFiredac.New(Connection);
end;

destructor TModelConnectionFactoryDataSet.Destroy;
begin

  inherited;
end;

class function TModelConnectionFactoryDataSet.New: iModelFactoryDataSet;
begin
  Result := Self.Create;
end;


end.
