;-----------------------------------------------------
; File name: example.asm
; Study by Jedi Chou, 2020.1.1 20:37
;-----------------------------------------------------

;-----------------------------------------------------
; Define instrcut set and program execute model
.386
.model flat

;-----------------------------------------------------
; Declare ExitProcess function and parameters format
ExitProcess     proto   near32  stdcall, dwExitCode:DWORD

;-----------------------------------------------------
; Define stack length
.stack 4096

;-----------------------------------------------------
; Define two variables at memory
.data
    number          DWORD   -105
    sum             DWORD   ?

.code
_start:
    mov     eax, number
    add     eax, 158
    mov     sum, eax

    invoke  ExitProcess, 0
public      _start
end         _start
