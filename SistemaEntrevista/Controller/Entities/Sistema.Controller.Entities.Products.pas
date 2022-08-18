unit Sistema.Controller.Entities.Products;

interface

uses Sistema.Controller.Entities.Interfaces, Sistema.Model.Connections.Interfaces,
  Sistema.Controller.Connections.Factory,
  Sistema.Controller.Connections.Factory.DataSet, Sistema.Model.Entities.Interfaces,
  Sistema.Model.Entities.Factory, Data.DB;

Type
  TControllerEntityProduct = class(TInterfacedObject, iControllerEntity)
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

{ TControllerEntityProdutos }

constructor TControllerEntityProduct.Create;
begin
  FConnection := TControllerConnectionsFactory.New.Connection;
  FDataSet := TControllerConnectionsFactoryDataSet.New.DataSet(FConnection);
  FEntity := TModelEntityFactory.New.Products(FDataSet);
end;

destructor TControllerEntityProduct.Destroy;
begin

  inherited;
end;

function TControllerEntityProduct.List(
  aDataSource: TDataSource): iControllerEntity;
begin
  Result := Self;
  aDataSource.DataSet := TDataSet(FEntity.List);
end;

class function TControllerEntityProduct.New: iControllerEntity;
begin
  Result := Self.Create;
end;


end.
