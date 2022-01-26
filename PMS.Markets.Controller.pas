unit PMS.Markets.Controller;

interface

uses
  PMS.Market.Intf,
  System.Generics.Collections;

type
  TpmsMarketsController = class
  private
    FMarket: TDictionary<string, IpmsMarket>;
  public
    procedure RegisterMarket(AMarket: IpmsMarket);
    constructor Create;
    destructor Destroy; override;

  end;

implementation

{ TpmsMarketsController }

constructor TpmsMarketsController.Create;
begin
  FMarket := TDictionary<string, IpmsMarket>.Create;
end;

destructor TpmsMarketsController.Destroy;
begin
  FMarket.Free;
  inherited;
end;

procedure TpmsMarketsController.RegisterMarket(AMarket: IpmsMarket);
begin
  FMarket.AddOrSetValue(AMarket.GetName, AMarket);
end;

end.
