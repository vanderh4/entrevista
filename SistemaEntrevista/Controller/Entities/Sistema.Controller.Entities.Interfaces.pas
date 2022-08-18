unit Sistema.Controller.Entities.Interfaces;

interface

uses
  Data.DB;

type
  iControllerEntity = interface
    ['{2F4FB0A2-B7D9-45CF-A48E-162D9DD7930A}']
    function List(aDataSource : TDataSource) : iControllerEntity;
  end;

  iControllerEntityFactory = interface
    ['{23A4AD17-340F-4E32-9BED-01E2241E8FB5}']
    function Product : iControllerEntity;
    function Client : iControllerEntity;
    function SalesOrder : iControllerEntity;
  end;

implementation

end.
