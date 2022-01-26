program PriceMonitoringService;

{$APPTYPE CONSOLE}
{$R *.res}

uses
  System.SysUtils,
  PMS.Alert.Intf in 'PMS.Alert.Intf.pas',
  PMS.Markets.Controller in 'PMS.Markets.Controller.pas',
  PMS.Market.Intf in 'PMS.Market.Intf.pas',
  PMS.Product.Intf in 'PMS.Product.Intf.pas',
  PMS.Market.Atbmarket in 'PMS.Market.Atbmarket.pas',
  AtbMarket.Client in 'AtbMarketApi\AtbMarket.Client.pas',
  AtbMarket.Types in 'AtbMarketApi\AtbMarket.Types.pas';

begin
  try
    { TODO -oUser -cConsole Main : Insert code here }
  except
    on E: Exception do
      Writeln(E.ClassName, ': ', E.Message);
  end;

end.
