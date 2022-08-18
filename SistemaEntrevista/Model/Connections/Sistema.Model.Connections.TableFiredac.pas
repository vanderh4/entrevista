unit Sistema.Model.Connections.TableFiredac;

interface

uses Sistema.Model.Connections.Interfaces, FireDAC.Comp.Client, System.Classes;

Type
  TModelConnectionsTableFiredac = class(TInterfacedObject, iModelDataSet)
  private
    FTable: TFDTable;
  public
    constructor Create(Conexao: iModelConnection);
    destructor Destroy; override;
    class function New(Conexao: iModelConnection): iModelDataSet;
    function Open(aTable: String): iModelDataSet;
    function EndDataSet: TComponent;
  end;

implementation

{ TModelConexoesTableFiredac }

constructor TModelConnectionsTableFiredac.Create(Conexao: iModelConnection);
begin
  FTable := TFDTable.Create(nil);
  FTable.Connection := (Conexao.EndConnection as TFDConnection);
end;

destructor TModelConnectionsTableFiredac.Destroy;
begin
  FTable.Free;
  inherited;
end;

function TModelConnectionsTableFiredac.EndDataSet: TComponent;
begin
  Result := FTable;
end;

class function TModelConnectionsTableFiredac.New(Conexao: iModelConnection)
  : iModelDataSet;
begin
  Result := Self.Create(Conexao);
end;

function TModelConnectionsTableFiredac.Open(aTable: String): iModelDataSet;
begin
  Result := Self;
  FTable.Open(aTable);
end;


end.
