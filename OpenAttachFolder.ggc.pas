{
  GeoGet 2
  Cache listing Plugin Script
  
  OpenAttachFolder
  author: mikrom, http://mikrom.cz
  website: https://www.geoget.cz/doku.php/user:skript:openattachfolder
  version: 0.0.0.1, 20110601, first version
}

{Name of plugin}
function PluginCaption: string;
begin
  Result := ' ';
end;

{What will be displayed as hint?}
function PluginHint: string;
begin
  Result := 'Uk�zat p��lohy';
end;

{Icon data}
function PluginIcon: string;
begin
  Result := DecodeBase64('Qk02BQAAAAAAADYEAAAoAAAAEAAAABAAAAABAAgAAAAAAAAAAAASCwAAEgsAAAABAAAAAQAAQEBA/9wA//8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wEBAQEBAQEBAQEBAQEBAQEBAQEAAAABAQEBAQEBAQEBAQEAAQEBAAEBAQEBAQEBAQEAAQEBAQEAAQEBAQEBAQEBAAEBAAAAAQABAQEBAQEBAQABAQABAQABAAEBAQEBAQEBAAEAAQEBAAEAAQEBAQEBAQEAAQABAQEAAQABAQEBAQEBAQABAAEBAQABAAEBAQEBAQEBAAEAAQEBAAEAAQEBAQEBAQEAAQABAQEAAQEBAQEBAQEBAQABAAEBAQABAQEBAQEBAQEBAAEAAQEBAAEBAQEBAQEBAQEAAQEBAQABAQEBAQEBAQEBAQABAQEAAQEBAQEBAQEBAQEBAAAAAQE=');
end;

{Enter plugin code here}
procedure PluginWork;
var
  s: string;
begin
  s := GEOGET_DATADIR + '\attach\';
  s := s + Copy(GC.ID,Length(GC.ID),1) + '\';
  s := s + GC.ID;
  if not DirectoryExists(s) then ForceDirectories(s);
  RunShell(s);
  //ShowMessage(s);
end;
