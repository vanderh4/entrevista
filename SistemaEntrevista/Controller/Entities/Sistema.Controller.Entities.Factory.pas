unit Sistema.Controller.Entities.Factory;

interface

uses Sistema.Controller.Entities.Interfaces;

Type
  TControllerEntityFactory = class(TInterfacedObject, iControllerEntityFactory)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iControllerEntityFactory;
      function Product : iControllerEntity;
      function Client : iControllerEntity;
      function SalesOrder : iControllerEntity;
  end;

implementation

{ TControllerEntityFactory }

uses Sistema.Controller.Entities.Clients, Sistema.Controller.Entities.Products,
  Sistema.Controller.Entities.SalesOrders;

function TControllerEntityFactory.Client: iControllerEntity;
begin
  Result := TControllerEntityClient.New;
end;

constructor TControllerEntityFactory.Create;
begin

end;

destructor TControllerEntityFactory.Destroy;
begin

  inherited;
end;

class function TControllerEntityFactory.New: iControllerEntityFactory;
begin
  Result := Self.Create;
end;

function TControllerEntityFactory.Product: iControllerEntity;
begin
  Result := TControllerEntityProduct.New;
end;

function TControllerEntityFactory.SalesOrder: iControllerEntity;
begin
  Result := TControllerEntitySalesOrder.New;
end;

end.
