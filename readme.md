# Bilibli.com - 32位汇编语言与WinDbg使用指南

1. 第一个汇编语言Hello World
2. 二进制和十六进制
3. 指令集和段定义
4. 寄存器
5. 最流行的Win32汇编语言软件开发包
6. 清单文件
7. 调试器Windbg

## Windbg debug issue

```text
Microsoft (R) Windows Debugger Version 6.12.0002.633 AMD64
Copyright (c) Microsoft Corporation. All rights reserved.

CommandLine: D:\Jedi\git\jedichou-study-asm\asm07-Windbg\example.exe
WARNING: Non-directory path: 'example.pdb'
Symbol search path is: example.pdb
Executable search path is:
ModLoad: 00000000`00400000 00000000`00407000   example.exe
ModLoad: 00000000`77c30000 00000000`77dcf000   ntdll.dll
ModLoad: 00000000`77df0000 00000000`77f70000   ntdll32.dll
ModLoad: 00000000`73cc0000 00000000`73cff000   C:\Windows\SYSTEM32\wow64.dll
ModLoad: 00000000`73c60000 00000000`73cbc000   C:\Windows\SYSTEM32\wow64win.dll
ModLoad: 00000000`73c50000 00000000`73c58000   C:\Windows\SYSTEM32\wow64cpu.dll
(15a0.19fc): Break instruction exception - code 80000003 (first chance)
*** ERROR: Symbol file could not be found.  Defaulted to export symbols for ntdll.dll -
ntdll!CsrSetPriorityClass+0x90:
00000000`77cd6b80 cc              int     3
```

**Can not load Symbol file!** - 2020.1.1 22:27 PM

## Windbg Preview可进行调试

* Windows 10 + WinDbg Preview
* 可在asm07-Windbg\example.asm上打断点进行调试. 2020.1.2 11:45 AM
* 这可能和CPU有关，在家里用的是AMD CPU；在公司用的是Intel CPU.
* 也有可能是在x64平台上调试最好使用Windbg Preview版本.

```text
Microsoft (R) Windows Debugger Version 10.0.19528.1000 X86
Copyright (c) Microsoft Corporation. All rights reserved.

CommandLine: D:\jedichou-study-asm\asm07-Windbg\example.exe

************* Path validation summary **************
Response                         Time (ms)     Location
Deferred                                       srv*
Symbol search path is: srv*
Executable search path is:
ModLoad: 00400000 00407000   example.exe
ModLoad: 77420000 775ac000   ntdll.dll
ModLoad: 76eb0000 76f80000   C:\Windows\SysWOW64\KERNEL32.DLL
ModLoad: 759f0000 75bc8000   C:\Windows\SysWOW64\KERNELBASE.dll
(1498.1c8c): Break instruction exception - code 80000003 (first chance)
eax=00000000 ebx=00000010 ecx=5e1a0000 edx=00000000 esi=00251000 edi=774269a4
eip=774cd52f esp=0019fa04 ebp=0019fa30 iopl=0         nv up ei pl zr na pe nc
cs=0023  ss=002b  ds=002b  es=002b  fs=0053  gs=002b             efl=00000246
ntdll!LdrInitShimEngineDynamic+0x6af:
774cd52f cc              int     3
```

## WinDbg Preview Help

```text
0:000> !help
address [address]          - Displays the address space layout
        [-UsageType]       - Displays the address space regions of the given type
analyze [-v]               - Analyzes current exception or bugcheck
cpuid [processor]          - Displays CPU version info for all CPUs
cppexr <exraddress>        - Displays a C++ EXCEPTION_RECORD
error [errorcode]          - Displays Win32 & NTSTATUS error string
exchain                    - Displays exception chain for current thread
for_each_frame <cmd>       - Executes command for each frame in current
                             thread
for_each_local <cmd> $$<n> - Executes command for each local variable in
                             current frame, substituting fixed-name alias
                             $u<n> for each occurrence of $$<n>
gle [-all]                 - Displays last error & status for current thread
imggp <imagebase>          - Displays GP directory entry for 64-bit image
imgreloc <imagebase>       - Relocates modules for an image
list [-? | parameters]     - Displays lists
obja <address>             - Displays OBJECT_ATTRIBUTES[32|64]
owner [symbol!module]      - Detects owner for current exception or
                             bugcheck from triage.ini
rtlavl <address>           - Displays RTL_AVL_TABLE
std_map <address>          - Displays a std::map<>
str <address>              - Displays ANSI_STRING or OEM_STRING
ustr <address>             - Displays UNICODE_STRING
```
