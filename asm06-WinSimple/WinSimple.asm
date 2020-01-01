.386
.model flat

option casemap:none
option language:c

;----------------------------------------------------------
; 加载API定义文件
include       C:\masm32\include\windows.inc
include       C:\masm32\include\kernel32.inc
include       C:\masm32\include\user32.inc

;----------------------------------------------------------
; 加载API静态库文件
includelib    C:\masm32\lib\user32.lib
includelib    C:\masm32\lib\kernel32.lib

.data
msg     byte  "Hello world", 0
cap     byte  "Output", 0

.code
start:
        invoke  MessageBox,
                NULL,
                offset msg,
                offset cap,
                MB_OK
        invoke  ExitProcess, 0
public  start
        end start
