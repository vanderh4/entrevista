unit Sistema.Model.Entities.Products;

interface

uses Sistema.Model.Entities.Interfaces, System.Classes,
  Sistema.Model.Connections.Interfaces;

Type
  TModelEntityProduct = class(TInterfacedObject, iModelEntity)
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
  FTABLENAME = 'produtos';

{ TModelEntityProduct }

constructor TModelEntityProduct.Create(DataSet : iModelDataSet);
begin
  FDataSet := DataSet;
end;

destructor TModelEntityProduct.Destroy;
begin

  inherited;
end;

function TModelEntityProduct.List: TComponent;
begin
  Result := FDataSet.Open(FTABLENAME).EndDataSet;
end;

class function TModelEntityProduct.New(DataSet : iModelDataSet) : iModelEntity;
begin
  Result := Self.Create(DataSet);
end;

end.
