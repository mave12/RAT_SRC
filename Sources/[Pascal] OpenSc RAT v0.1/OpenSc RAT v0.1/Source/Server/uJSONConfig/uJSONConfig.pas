{
  ---------------------------------------------------

  uJSONConfig.pas v1.1 by wrh1d3 -> wrh1d3@gmail.com

  ---------------------------------------------------
	
  uJSONConfig help you to create customs encrypted
  configuration files in json format. You don't 
  need to have knowledges on cryptology, just provide 
  a password and the process will be done for you ;)

  ----------------------------------------------------

  As all open source software, you can redistribute,
  modify code, ... But don't forget to give credits :)

  ---------------------------------------------------

  Created by wrh1d3 Sunday 29th Oct. 2016 2:44:57 PM

  ---------------------------------------------------

  [!] Requirements: uLkJSON v1.07 from Leonid Koninin
      leon_kon@users.sourceforge.net

  ---------------------------------------------------
	
  Modified by wrh1d3 Sunday 26th Mar. 2017 2:03:00 PM

  ---------------------------------------------------

  [-] Default value removed
  [*] Whole unit recoded, more easy now to use

  ---------------------------------------------------
}

unit uJSONConfig;

interface

uses
  Windows, SysUtils, uLkJSON;

type
  TJSONConfig = class(TObject)
  private
    FJsonObj: TlkJSONobject;
    FFileName, FConfig, FPassword: string;
	  function EnDecrypt(const Str, Password: string): string;
	  function MyReadFile(FileName: string): string;
	  procedure MyCreateFile(FileName, Buffer: string; BufferSize: Cardinal);
  public
    constructor Create(FileName, Password: string);
    destructor Destroy; override;       
    procedure LoadConfig;
    procedure SaveConfig;
    procedure WriteString(Field, Value: string);
    procedure WriteInteger(Field: string; Value: Integer);
    procedure WriteBool(Field: string; Value: Boolean);
    function ReadString(Field: string): string;
    function ReadInteger(Field: string): Integer;
    function ReadBool(Field: string): Boolean;
  end;

implementation

{Region UtilsFunctions}
//--Begin
function TJSONConfig.EnDecrypt(const Str, Password: string): string; // Xor encryption
var
  Key, c, i: Integer;
begin
  Key := Length(Password);
  for i := 1 to Length(Str) do
  begin
    c := Integer(Str[i]);
    Result := Result + Char(c xor Key);
  end;
end;

function TJSONConfig.MyReadFile(FileName: string): string;  //Load file content to string
var
  hFile: THandle;
  dSize, dRead: DWORD;
begin
  Result := '';
  hFile := CreateFile(PChar(Filename), GENERIC_READ, FILE_SHARE_READ, nil, OPEN_EXISTING, 0, 0);
  if hFile = 0 then Exit;
  dSize := GetFileSize(hFile, nil);
  if dSize = 0 then Exit;
  SetFilePointer(hFile, 0, nil, FILE_BEGIN);
  SetLength(Result, dSize);
  ReadFile(hFile, Result[1], dSize, dRead, nil);
  CloseHandle(hFile);
end;

//Save string to file
procedure TJSONConfig.MyCreateFile(FileName, Buffer: string; BufferSize: Cardinal);
var
  hFile, i: Cardinal;
begin
  hFile := CreateFile(PChar(Filename), GENERIC_WRITE, FILE_SHARE_WRITE, nil, CREATE_ALWAYS, 0, 0);
  if hFile = INVALID_HANDLE_VALUE then Exit;
  SetFilePointer(hFile, 0, nil, FILE_BEGIN);
  WriteFile(hFile, Buffer[1], BufferSize, i, nil);
  CloseHandle(hFile);
end;
//--End;

{Region TJSONConfig}
//--Begin
constructor TJSONConfig.Create(FileName, Password: string);
begin
  FFileName := FileName;
  FPassword := Password;
  FJsonObj := TlkJSONobject.Create;
end;

destructor TJSONConfig.Destroy;
begin
  inherited Destroy;
  FJsonObj.Free;
end;

procedure TJSONConfig.WriteString(Field, Value: string);
begin
  FJsonObj.Add(Field, Value);
end;

procedure TJSONConfig.WriteInteger(Field: string; Value: Integer);
begin
  FJsonObj.Add(Field, Value);
end;

procedure TJSONConfig.WriteBool(Field: string; Value: Boolean);
begin
  FJsonObj.Add(Field, Value);
end;

procedure TJSONConfig.SaveConfig;
begin
  FConfig := TlkJSON.GenerateText(FJsonObj);
  if FPassword <> '' then FConfig := EnDecrypt(FConfig, FPassword);
  if FileExists(FFileName) then DeleteFile(FFileName);
  MyCreateFile(FFileName, FConfig, Length(FConfig));
end;

procedure TJSONConfig.LoadConfig;
begin
  if not FileExists(FFileName) then Exit;
  FConfig := MyReadFile(FFileName);
  if FPassword <> '' then FConfig := EnDecrypt(FConfig, FPassword);
  FJsonObj := TlkJSON.ParseText(FConfig) as TlkJSONobject;
end;

function TJSONConfig.ReadString(Field: string): string;
begin
  Result := FJsonObj.getString(Field);
end;

function TJSONConfig.ReadInteger(Field: string): Integer;
begin
  Result := FJsonObj.getInt(Field);
end;

function TJSONConfig.ReadBool(Field: string): Boolean;
begin
  Result := FJsonObj.getBoolean(Field);
end;
//--End

end.
