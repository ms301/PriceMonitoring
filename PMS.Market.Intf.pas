unit PMS.Market.Intf;

interface

uses
  PMS.Product.Intf;

type
  IpmsMarket = interface
    ['{2E96695F-F542-4BD7-B683-2023A2012D88}']
    function GetName: string;
    function GetProductByBarcode(const ABarcode: string): IpmsProduct;
  end;

implementation

end.
