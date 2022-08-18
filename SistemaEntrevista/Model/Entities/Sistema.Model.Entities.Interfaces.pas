unit Sistema.Model.Entities.Interfaces;

interface

uses
  System.Classes, Sistema.Model.Connections.Interfaces;

type
  iModelEntity = interface
    ['{24B37E60-7243-4DEE-B19E-35C9CF255AA6}']
    function List : TComponent;
  end;

  iModelEntityFactory = interface
    ['{141169EF-97A4-4882-9AA8-F20F31EDBBC9}']
    function Products(DataSet : iModelDataSet) : iModelEntity;
    function Clients(DataSet : iModelDataSet) : iModelEntity;
    function SalesOrder(Dataset: iModelDataset) : iModelEntity;
  end;

implementation

end.
