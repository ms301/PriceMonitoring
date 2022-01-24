unit PMS.Markets.Controller;

interface

uses
  PMS.Market.Intf;

type
  TpmsMarketsController = class
  public
    procedure RegisterMarket(AMarket: IpmsMarket);

  end;

implementation

{ TpmsMarketsController }

procedure TpmsMarketsController.RegisterMarket(AMarket: IpmsMarket);
begin

end;

end.
