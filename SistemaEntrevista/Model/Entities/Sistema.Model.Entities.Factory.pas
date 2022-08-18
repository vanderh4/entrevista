unit Sistema.Model.Entities.Factory;

interface

uses Sistema.Model.Entities.Interfaces, Sistema.Model.Connections.Interfaces;

Type
  TModelEntityFactory = class(TInterfacedObject, iModelEntityFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iModelEntityFactory;
      function Products(DataSet : iModelDataSet) : iModelEntity;
      function Clients(DataSet : iModelDataSet) : iModelEntity;
      function SalesOrder(DataSet : iModelDataSet) : iModelEntity;
  end;

implementation

{ TModelEntityFactory }

uses Sistema.Model.Entities.Clients, Sistema.Model.Entities.Products,
  Sistema.Model.Entities.SalesOrders;

function TModelEntityFactory.Clients(DataSet: iModelDataSet): iModelEntity;
begin
  Result := TModelEntityClient.New(DataSet);
end;

constructor TModelEntityFactory.Create;
begin

end;

destructor TModelEntityFactory.Destroy;
begin

  inherited;
end;

class function TModelEntityFactory.New: iModelEntityFactory;
begin
  Result := Self.Create;
end;

function TModelEntityFactory.Products(DataSet: iModelDataSet): iModelEntity;
begin
  Result := TModelEntityProduct.New(DataSet);
end;


function TModelEntityFactory.SalesOrder(DataSet: iModelDataSet): iModelEntity;
begin
  Result := TModelEntitySalesOrder.New(DataSet);
end;

end.
