Module:    Win32-Registry
Copyright:    Original Code is Copyright (c) 1995-2004 Functional Objects, Inc.
              All rights reserved.
License:      Functional Objects Library Public License Version 1.0
Dual-license: GNU Lesser General Public License
Warranty:     Distributed WITHOUT WARRANTY OF ANY KIND

// This file is automatically generated from "winreg.h"; do not edit.


// Adapted from:
/*++ BUILD Version: 0001    // Increment this if a change has global effects


Module Name:

    Winreg.h

Abstract:

    This module contains the function prototypes and constant, type and
    structure definitions for the Windows 32-Bit Registry API.

--*/
define inline constant <REGSAM> = <ACCESS-MASK>;
define C-subtype <HKEY> ( <HANDLE> ) end;
define C-pointer-type <PHKEY> => <HKEY>;
define inline-only constant $HKEY-CLASSES-ROOT          =
	as(<HKEY>,as(<machine-word>, #x80000000));
define inline-only constant $HKEY-CURRENT-USER          =
	as(<HKEY>,as(<machine-word>, #x80000001));
define inline-only constant $HKEY-LOCAL-MACHINE         =
	as(<HKEY>,as(<machine-word>, #x80000002));
define inline-only constant $HKEY-USERS                 =
	as(<HKEY>,as(<machine-word>, #x80000003));
define inline-only constant $HKEY-PERFORMANCE-DATA      =
	as(<HKEY>,as(<machine-word>, #x80000004));
define inline-only constant $HKEY-CURRENT-CONFIG        =
	as(<HKEY>,as(<machine-word>, #x80000005));
define inline-only constant $HKEY-DYN-DATA              =
	as(<HKEY>,as(<machine-word>, #x80000006));

define C-struct <VALENTA>
  sealed inline-only slot ve-valuename-value :: <LPSTR>;
  sealed inline-only slot ve-valuelen-value :: <DWORD>;
  sealed inline-only slot ve-valueptr-value :: <DWORD>;
  sealed inline-only slot ve-type-value  :: <DWORD>;
  pointer-type-name: <LPVALENTA>;
  c-name: "struct value_entA";
end C-struct <VALENTA>;
define constant <PVALENTA> = <LPVALENTA>;
define inline constant <VALENT> = <VALENTA>;
define inline constant <PVALENT> = <PVALENTA>;

define inline-only C-function RegCloseKey
  parameter hKey       :: <HKEY>;
  result value :: <LONG>;
  c-name: "RegCloseKey", c-modifiers: "__stdcall";
end;

define inline-only C-function RegConnectRegistry
  parameter lpMachineName :: <LPCSTR>;
  parameter hKey       :: <HKEY>;
  output parameter phkResult :: <PHKEY>;
  result value :: <LONG>;
  c-name: "RegConnectRegistryA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegCreateKey
  parameter hKey       :: <HKEY>;
  parameter lpSubKey   :: <LPCSTR>;
  output parameter phkResult :: <PHKEY>;
  result value :: <LONG>;
  c-name: "RegCreateKeyA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegCreateKeyEx
  parameter hKey       :: <HKEY>;
  parameter lpSubKey   :: <LPCSTR>;
  parameter Reserved   :: <DWORD>;
  parameter lpClass    :: <LPSTR>;
  parameter dwOptions  :: <DWORD>;
  parameter samDesired :: <REGSAM>;
  parameter lpSecurityAttributes :: <LPSECURITY-ATTRIBUTES>;
  output parameter phkResult :: <PHKEY>;
  output parameter lpdwDisposition :: <LPDWORD>;
  result value :: <LONG>;
  c-name: "RegCreateKeyExA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegDeleteKey
  parameter hKey       :: <HKEY>;
  parameter lpSubKey   :: <LPCSTR>;
  result value :: <LONG>;
  c-name: "RegDeleteKeyA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegDeleteValue
  parameter hKey       :: <HKEY>;
  parameter lpValueName :: <LPCSTR>;
  result value :: <LONG>;
  c-name: "RegDeleteValueA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegEnumKey
  parameter hKey       :: <HKEY>;
  parameter dwIndex    :: <DWORD>;
  parameter lpName     :: <LPSTR>;
  parameter cbName     :: <DWORD>;
  result value :: <LONG>;
  c-name: "RegEnumKeyA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegEnumKeyEx
  parameter hKey       :: <HKEY>;
  parameter dwIndex    :: <DWORD>;
  parameter lpName     :: <LPSTR>;
  parameter lpcbName   :: <LPDWORD>;
  parameter lpReserved :: <LPDWORD>;
  parameter lpClass    :: <LPSTR>;
  parameter lpcbClass  :: <LPDWORD>;
  parameter lpftLastWriteTime :: <PFILETIME>;
  result value :: <LONG>;
  c-name: "RegEnumKeyExA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegEnumValue
  parameter hKey       :: <HKEY>;
  parameter dwIndex    :: <DWORD>;
  parameter lpValueName :: <LPSTR>;
  parameter lpcbValueName :: <LPDWORD>;
  parameter lpReserved :: <LPDWORD>;
  output parameter lpType :: <LPDWORD>;
  parameter lpData     :: <LPBYTE>;
  parameter lpcbData   :: <LPDWORD>;
  result value :: <LONG>;
  c-name: "RegEnumValueA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegFlushKey
  parameter hKey       :: <HKEY>;
  result value :: <LONG>;
  c-name: "RegFlushKey", c-modifiers: "__stdcall";
end;

define inline-only C-function RegGetKeySecurity
  parameter hKey       :: <HKEY>;
  parameter SecurityInformation :: <SECURITY-INFORMATION>;
  parameter pSecurityDescriptor :: <PSECURITY-DESCRIPTOR>;
  parameter lpcbSecurityDescriptor :: <LPDWORD>;
  result value :: <LONG>;
  c-name: "RegGetKeySecurity", c-modifiers: "__stdcall";
end;

define inline-only C-function RegLoadKey
  parameter hKey       :: <HKEY>;
  parameter lpSubKey   :: <LPCSTR>;
  parameter lpFile     :: <LPCSTR>;
  result value :: <LONG>;
  c-name: "RegLoadKeyA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegNotifyChangeKeyValue
  parameter hKey       :: <HKEY>;
  parameter bWatchSubtree :: <BOOL>;
  parameter dwNotifyFilter :: <DWORD>;
  parameter hEvent     :: <HANDLE>;
  parameter fAsynchronus :: <BOOL>;
  result value :: <LONG>;
  c-name: "RegNotifyChangeKeyValue", c-modifiers: "__stdcall";
end;

define inline-only C-function RegOpenKey
  parameter hKey       :: <HKEY>;
  parameter lpSubKey   :: <LPCSTR>;
  output parameter phkResult :: <PHKEY>;
  result value :: <LONG>;
  c-name: "RegOpenKeyA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegOpenKeyEx
  parameter hKey       :: <HKEY>;
  parameter lpSubKey   :: <LPCSTR>;
  parameter ulOptions  :: <DWORD>;
  parameter samDesired :: <REGSAM>;
  output parameter phkResult :: <PHKEY>;
  result value :: <LONG>;
  c-name: "RegOpenKeyExA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegQueryInfoKey
  parameter hKey       :: <HKEY>;
  parameter lpClass    :: <LPSTR>;
  parameter lpcbClass  :: <LPDWORD>;
  parameter lpReserved :: <LPDWORD>;
  output parameter lpcSubKeys :: <LPDWORD>;
  parameter lpcbMaxSubKeyLen :: <LPDWORD>;
  parameter lpcbMaxClassLen :: <LPDWORD>;
  output parameter lpcValues :: <LPDWORD>;
  parameter lpcbMaxValueNameLen :: <LPDWORD>;
  parameter lpcbMaxValueLen :: <LPDWORD>;
  parameter lpcbSecurityDescriptor :: <LPDWORD>;
  parameter lpftLastWriteTime :: <PFILETIME>;
  result value :: <LONG>;
  c-name: "RegQueryInfoKeyA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegQueryValue
  parameter hKey       :: <HKEY>;
  parameter lpSubKey   :: <LPCSTR>;
  parameter lpValue    :: <LPSTR>;
  parameter lpcbValue  :: <PLONG>;
  result value :: <LONG>;
  c-name: "RegQueryValueA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegQueryMultipleValues
  parameter hKey       :: <HKEY>;
  parameter val_list   :: <PVALENTA>;
  parameter num_vals   :: <DWORD>;
  parameter lpValueBuf :: <LPSTR>;
  output parameter ldwTotsize :: <LPDWORD>;
  result value :: <LONG>;
  c-name: "RegQueryMultipleValuesA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegQueryValueEx
  parameter hKey       :: <HKEY>;
  parameter lpValueName :: <LPCSTR>;
  parameter lpReserved :: <LPDWORD>;
  output parameter lpType :: <LPDWORD>;
  parameter lpData     :: <LPBYTE>;
  parameter lpcbData   :: <LPDWORD>;
  result value :: <LONG>;
  c-name: "RegQueryValueExA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegReplaceKey
  parameter hKey       :: <HKEY>;
  parameter lpSubKey   :: <LPCSTR>;
  parameter lpNewFile  :: <LPCSTR>;
  parameter lpOldFile  :: <LPCSTR>;
  result value :: <LONG>;
  c-name: "RegReplaceKeyA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegRestoreKey
  parameter hKey       :: <HKEY>;
  parameter lpFile     :: <LPCSTR>;
  parameter dwFlags    :: <DWORD>;
  result value :: <LONG>;
  c-name: "RegRestoreKeyA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegSaveKey
  parameter hKey       :: <HKEY>;
  parameter lpFile     :: <LPCSTR>;
  parameter lpSecurityAttributes :: <LPSECURITY-ATTRIBUTES>;
  result value :: <LONG>;
  c-name: "RegSaveKeyA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegSetKeySecurity
  parameter hKey       :: <HKEY>;
  parameter SecurityInformation :: <SECURITY-INFORMATION>;
  parameter pSecurityDescriptor :: <PSECURITY-DESCRIPTOR>;
  result value :: <LONG>;
  c-name: "RegSetKeySecurity", c-modifiers: "__stdcall";
end;

define inline-only C-function RegSetValue
  parameter hKey       :: <HKEY>;
  parameter lpSubKey   :: <LPCSTR>;
  parameter dwType     :: <DWORD>;
  parameter lpData     :: <LPCSTR>;
  parameter cbData     :: <DWORD>;
  result value :: <LONG>;
  c-name: "RegSetValueA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegSetValueEx
  parameter hKey       :: <HKEY>;
  parameter lpValueName :: <LPCSTR>;
  parameter Reserved   :: <DWORD>;
  parameter dwType     :: <DWORD>;
  parameter lpData     ::  /* const */ <C-BYTE*>;
  parameter cbData     :: <DWORD>;
  result value :: <LONG>;
  c-name: "RegSetValueExA", c-modifiers: "__stdcall";
end;

define inline-only C-function RegUnLoadKey
  parameter hKey       :: <HKEY>;
  parameter lpSubKey   :: <LPCSTR>;
  result value :: <LONG>;
  c-name: "RegUnLoadKeyA", c-modifiers: "__stdcall";
end;

