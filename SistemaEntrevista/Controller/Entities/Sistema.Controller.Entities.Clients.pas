unit Sistema.Controller.Entities.Clients;

interface

uses Sistema.Controller.Entities.Interfaces, Sistema.Model.Connections.Interfaces,
  Sistema.Controller.Connections.Factory,
  Sistema.Controller.Connections.Factory.DataSet, Sistema.Model.Entities.Interfaces,
  Sistema.Model.Entities.Factory, Data.DB;

Type
  TControllerEntityClient = class(TInterfacedObject, iControllerEntity)
    private
      FConnection : iModelConnection;
      FDataSet : iModelDataSet;
      FEntity : iModelEntity;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerEntity;
      function List(aDataSource : TDataSource) : iControllerEntity;
  end;

implementation

{ TControllerEntityCliente }

constructor TControllerEntityClient.Create;
begin
  FConnection := TControllerConnectionsFactory.New.Connection;
  FDataSet := TControllerConnectionsFactoryDataSet.New.DataSet(FConnection);
  FEntity := TModelEntityFactory.New.Clients(FDataSet);
end;

destructor TControllerEntityClient.Destroy;
begin

  inherited;
end;

function TControllerEntityClient.List(
  aDataSource: TDataSource): iControllerEntity;
begin
  Result := Self;
  aDataSource.DataSet := TDataSet(FEntity.List);
end;

class function TControllerEntityClient.New: iControllerEntity;
begin
  Result := Self.Create;
end;

end.
