program PriceMonitoringService;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  PMS.Alert.Intf in 'PMS.Alert.Intf.pas',
  PMS.Markets.Controller in 'PMS.Markets.Controller.pas',
  PMS.Market.Intf in 'PMS.Market.Intf.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
