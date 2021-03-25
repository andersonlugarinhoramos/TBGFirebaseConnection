unit TBGFirebaseConnection.Model.Connect;

interface

uses
  TBGFirebaseConnection.Interfaces;

Type
  TFirebaseConnectionMoldeConnect = class(TInterfacedObject, iFirebaseConnect)
    private
      FParent : iFirebaseConnection;
      FBaseURL : String;
      FAuth : String;
      FuId : String;
    public
      constructor Create(Parent : iFirebaseConnection);
      destructor Destroy; override;
      class function New(Parent : iFirebaseConnection) : iFirebaseConnect;
      function BaseURL (Value : String) : iFirebaseConnect; overload;
      function Auth (Value : String) : iFirebaseConnect; overload;
      function uId (Value : String) : iFirebaseConnect; overload;
      function BaseURL : String; overload;
      function Auth : String; overload;
      function uId : String; overload;
      function &End : iFirebaseConnection;
  end;

implementation

{ TFirebaseConnectionMoldeConnect }

function TFirebaseConnectionMoldeConnect.Auth(Value: String): iFirebaseConnect;
begin
  Result := Self;
  FAuth := Value;
end;

function TFirebaseConnectionMoldeConnect.Auth: String;
begin
  Result := FAuth;
end;

function TFirebaseConnectionMoldeConnect.BaseURL(Value: String): iFirebaseConnect;
begin
  Result := Self;
  FBaseURL := Value;
end;

function TFirebaseConnectionMoldeConnect.BaseURL: String;
begin
  Result := FBaseURL;
end;

function TFirebaseConnectionMoldeConnect.&End: iFirebaseConnection;
begin
  Result := FParent;
end;

constructor TFirebaseConnectionMoldeConnect.Create(Parent : iFirebaseConnection);
begin
  FParent := Parent;
end;

destructor TFirebaseConnectionMoldeConnect.Destroy;
begin

  inherited;
end;

class function TFirebaseConnectionMoldeConnect.New(Parent : iFirebaseConnection) : iFirebaseConnect;
begin
  Result := Self.Create(Parent);
end;

function TFirebaseConnectionMoldeConnect.uId(Value: String): iFirebaseConnect;
begin
  Result := Self;
  FuId := Value;
end;

function TFirebaseConnectionMoldeConnect.uId: String;
begin
  Result := FuId;
end;

end.
