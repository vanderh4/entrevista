unit Sistema.Model.Connections.Interfaces;

interface

uses
  System.Classes;

type

  iModelConnectionParameters = interface;

  iModelConnection = interface
    ['{2BB5D920-9B68-48D7-9806-0444D97718D4}']
    function Connect: iModelConnection;
    function EndConnection: TComponent;
    function Parameters: iModelConnectionParameters;
  end;

  iModelConnectionParameters = interface
    ['{973D1F87-381E-45B2-93E6-E643DDFD92DC}']
    function Database(Value: String): iModelConnectionParameters;
    function UserName(Value: String): iModelConnectionParameters;
    function Password(Value: String): iModelConnectionParameters;
    function DriverID(Value: String): iModelConnectionParameters;
    function Server(Value: String): iModelConnectionParameters;
    function Port(Value: Integer): iModelConnectionParameters;
    function EndParameters: iModelConnection;
  end;

  iModelDataSet = interface
    ['{5CFF1908-225F-4A05-A633-914A35BF2858}']
    function Open(aTable: String): iModelDataSet;
    function EndDataset: TComponent;
  end;

  iModelFactoryConnections = interface
    ['{30C0A523-319F-46E8-97F5-F4C7B32BDF95}']
    function ConnectionFiredac : iModelConnection;
  end;

  iModelFactoryDataSet = interface
    ['{EA1766BB-437B-4133-95D5-73AF1EA851D7}']
    function DataSetFiredac(Connection : iModelConnection) : iModelDataSet;
  end;

implementation

end.
