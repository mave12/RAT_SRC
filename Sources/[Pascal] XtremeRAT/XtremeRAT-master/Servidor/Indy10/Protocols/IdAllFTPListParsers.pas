unit IdAllFTPListParsers;

interface
{
Note that is unit is simply for listing ALL FTP List parsers in Indy.
The user could then add this unit to a uses clause in their program and
have all FTP list parsers linked into their program.

ABSOLELY NO CODE is permitted in this unit.

}
// RLebeau 4/17/10: this forces C++Builder to link to this unit so
// the units can register themselves correctly at program startup...

(*$HPPEMIT '#pragma link "IdAllFTPListParsers"'*)

implementation
uses
  IdFTPListParseAS400,
  IdFTPListParseBullGCOS7,
  IdFTPListParseBullGCOS8,
  IdFTPListParseChameleonNewt,
  IdFTPListParseCiscoIOS,
  IdFTPListParseDistinctTCPIP,
  IdFTPListParseEPLF,
  IdFTPListParseHellSoft,
  IdFTPListParseKA9Q,
  IdFTPListParseMPEiX,
  IdFTPListParseMVS,
  IdFTPListParseMicrowareOS9,
  IdFTPListParseMusic,
  IdFTPListParseNCSAForDOS,
  IdFTPListParseNCSAForMACOS,
  IdFTPListParseNovellNetware,
  IdFTPListParseNovellNetwarePSU,
  IdFTPListParseOS2,
  IdFTPListParsePCNFSD,
  IdFTPListParseStercomOS390Exp,
  IdFTPListParseStercomUnixEnt,
  IdFTPListParseStratusVOS,
  IdFTPListParseSuperTCP,
  IdFTPListParseTOPS20,
  IdFTPListParseTSXPlus,
  IdFTPListParseTandemGuardian,
  IdFTPListParseUnix,
  IdFTPListParseVM,
  IdFTPListParseVMS,
  IdFTPListParseVSE,
  IdFTPListParseVxWorks,
  IdFTPListParseWfFTP,
  IdFTPListParseWinQVTNET,
  IdFTPListParseWindowsNT,
  IdFTPListParseXecomMicroRTOS;

{dee-duh-de-duh, that's all folks.}

end.
