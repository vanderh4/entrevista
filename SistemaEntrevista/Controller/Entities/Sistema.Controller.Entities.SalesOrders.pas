unit Sistema.Controller.Entities.SalesOrders;

interface

uses Sistema.Controller.Entities.Interfaces, Sistema.Model.Connections.Interfaces,
  Sistema.Controller.Connections.Factory,
  Sistema.Controller.Connections.Factory.DataSet, Sistema.Model.Entities.Interfaces,
  Sistema.Model.Entities.Factory, Data.DB;

Type
  TControllerEntitySalesOrder = class(TInterfacedObject, iControllerEntity)
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

{ TControllerEntitySalesOrder }

constructor TControllerEntitySalesOrder.Create;
begin
  FConnection := TControllerConnectionsFactory.New.Connection;
  FDataSet := TControllerConnectionsFactoryDataSet.New.DataSet(FConnection);
  FEntity := TModelEntityFactory.New.SalesOrder(FDataSet);
end;

destructor TControllerEntitySalesOrder.Destroy;
begin

  inherited;
end;

function TControllerEntitySalesOrder.List(
  aDataSource: TDataSource): iControllerEntity;
begin
  Result := Self;
  aDataSource.DataSet := TDataSet(FEntity.List);
end;

class function TControllerEntitySalesOrder.New: iControllerEntity;
begin
  Result := Self.Create;
end;

end.
