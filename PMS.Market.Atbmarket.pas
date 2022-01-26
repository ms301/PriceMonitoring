unit PMS.Market.AtbMarket;

interface

uses
  AtbMarket.Client,
  PMS.Market.Intf,
  PMS.Product.Intf;

type
  TpmsAtbMarket = class(TInterfacedObject, IpmsMarket)
  private
    FAtb: TAtbClient;
    FDevice: string;
  protected
    function GetName: string;
    function GetProductByBarcode(const ABarcode: string): IpmsProduct;
  public
    constructor Create;
    destructor Destroy; override;
    property Device: string read FDevice write FDevice;
  end;

implementation

uses
  AtbMarket.Types;

{ TpmsAtbMarket }

constructor TpmsAtbMarket.Create;
begin
  FAtb := TAtbClient.Create;
end;

destructor TpmsAtbMarket.Destroy;
begin
  FAtb.Free;
  inherited;
end;

function TpmsAtbMarket.GetName: string;
begin
  Result := FAtb.QualifiedClassName;
end;

function TpmsAtbMarket.GetProductByBarcode(const ABarcode: string): IpmsProduct;
var
  lAtbProduct: IatbProductScan;
begin
  lAtbProduct := FAtb.Customers.ProductScan();
end;

end.
