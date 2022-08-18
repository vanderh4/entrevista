unit Sistema.Model.Entities.Clients;

interface

uses Sistema.Model.Entities.Interfaces, System.Classes,
  Sistema.Model.Connections.Interfaces;

Type
  TModelEntityClient = class(TInterfacedObject, iModelEntity)
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
  FTABLENAME = 'clientes';

{ TModelEntityCliente }

constructor TModelEntityClient.Create(DataSet : iModelDataSet);
begin
  FDataSet := DataSet;
end;

destructor TModelEntityClient.Destroy;
begin

  inherited;
end;

function TModelEntityClient.List: TComponent;
begin
  Result := FDataSet.Open(FTABLENAME).EndDataSet;
end;

class function TModelEntityClient.New(DataSet : iModelDataSet) : iModelEntity;
begin
  Result := Self.Create(DataSet);
end;


end.
