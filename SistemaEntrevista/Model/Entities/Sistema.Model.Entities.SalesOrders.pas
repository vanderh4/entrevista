unit Sistema.Model.Entities.SalesOrders;

interface

uses Sistema.Model.Entities.Interfaces, System.Classes,
  Sistema.Model.Connections.Interfaces;

Type
  TModelEntitySalesOrder = class(TInterfacedObject, iModelEntity)
    private
      FDataSet : iModelDataSet;
    public
      constructor Create(DataSet : iModelDataSet);
      destructor Destroy; override;
      class function New(DataSet : iModelDataSet) : iModelEntity;
      function List : TComponent;
  end;

implementation

const
  FTABLENAME = 'pedidovendas';

{ TModelEntitySalesOrder }

constructor TModelEntitySalesOrder.Create(DataSet : iModelDataSet);
begin
  FDataSet := DataSet;
end;

destructor TModelEntitySalesOrder.Destroy;
begin

  inherited;
end;

function TModelEntitySalesOrder.List: TComponent;
begin
  Result := FDataSet.Open(FTABLENAME).EndDataSet;
end;

class function TModelEntitySalesOrder.New(DataSet : iModelDataSet) : iModelEntity;
begin
  Result := Self.Create(DataSet);
end;

end.
