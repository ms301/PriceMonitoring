unit PMS.Alert.Intf;

interface

type
  IpmsAlert = interface
    ['{93549333-2A98-48DC-A7B6-0ED76E5F8FB9}']
    procedure Alert(const AMsg: string);
  end;

implementation

end.
