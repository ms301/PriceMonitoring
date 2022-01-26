unit PMS.Product.Intf;

interface

type
  IpmsProduct = interface
    ['{4C2BB64A-B327-4825-B2BA-F2A9C375F077}']
    function GetName: string;
    function GetPrice: Integer;
  end;

implementation

end.
