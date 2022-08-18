program SistemaEntrevista;

uses
  System.StartUpCopy,
  FMX.Forms,
  Principal in 'Principal.pas' {Form1},
  Sistema.Model.Connections.Interfaces in 'Model\Connections\Sistema.Model.Connections.Interfaces.pas',
  Sistema.Controller.Connections.Interfaces in 'Controller\Connections\Sistema.Controller.Connections.Interfaces.pas',
  Sistema.Model.Connections.Firedac in 'Model\Connections\Sistema.Model.Connections.Firedac.pas',
  Sistema.Model.Connections.Factory in 'Model\Connections\Sistema.Model.Connections.Factory.pas',
  Sistema.Model.Connections.Factory.Dataset in 'Model\Connections\Sistema.Model.Connections.Factory.Dataset.pas',
  Sistema.Model.Connections.TableFiredac in 'Model\Connections\Sistema.Model.Connections.TableFiredac.pas',
  Sistema.Controller.Connections.Factory in 'Controller\Connections\Sistema.Controller.Connections.Factory.pas',
  Sistema.Controller.Connections.Factory.Dataset in 'Controller\Connections\Sistema.Controller.Connections.Factory.Dataset.pas',
  Sistema.Model.Entities.Interfaces in 'Model\Entities\Sistema.Model.Entities.Interfaces.pas',
  Sistema.Model.Entities.Clients in 'Model\Entities\Sistema.Model.Entities.Clients.pas',
  Sistema.Model.Entities.Products in 'Model\Entities\Sistema.Model.Entities.Products.pas',
  Sistema.Model.Entities.Factory in 'Model\Entities\Sistema.Model.Entities.Factory.pas',
  Sistema.Model.Entities.SalesOrders in 'Model\Entities\Sistema.Model.Entities.SalesOrders.pas',
  Sistema.Controller.Entities.Interfaces in 'Controller\Entities\Sistema.Controller.Entities.Interfaces.pas',
  Sistema.Controller.Entities.Clients in 'Controller\Entities\Sistema.Controller.Entities.Clients.pas',
  Sistema.Controller.Entities.Products in 'Controller\Entities\Sistema.Controller.Entities.Products.pas',
  Sistema.Controller.Entities.SalesOrders in 'Controller\Entities\Sistema.Controller.Entities.SalesOrders.pas',
  Sistema.Controller.Entities.Factory in 'Controller\Entities\Sistema.Controller.Entities.Factory.pas',
  Sistema.Controller.Forms.Default in 'Controller\Forms\Sistema.Controller.Forms.Default.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
