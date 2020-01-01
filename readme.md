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
