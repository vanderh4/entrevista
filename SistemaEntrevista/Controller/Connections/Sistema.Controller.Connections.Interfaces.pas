unit Sistema.Controller.Connections.Interfaces;

interface

uses Sistema.Model.Connections.Interfaces;

type

  iControllerFactoryConnection = interface
    ['{3301A09C-4440-4941-BD4A-3BEC3B532140}']
    function Connection : iModelConnection;
  end;

  iControllerFactoryDataSet = interface
    ['{F3EA4CF4-CEC7-4E7E-8A97-82714601FE3D}']
    function DataSet(Connection : iModelConnection) : iModelDataSet;
  end;

implementation

end.
