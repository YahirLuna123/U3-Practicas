; *************************************************************************
;               Instituto Tecnologico de Culiacan
;
; Alumno:       Yahir Luna Beltran
; Materia:      Lenguaje de Interfaz
; Horario:      10-11
; Docente:      Dr. José Luis Medina Jiménez
; Práctica:     2 Modularización (CPU y pila en llamadas)
; *************************************************************************

INCLUDE Irvine32.inc

.data


.code
main PROC 
	mov eax, [esp]
	call WriteHEx
	call Crlf
	call procUno
	exit
main ENDP
	
procUno PROC
	mov eax, [esp]
	call WriteHex
	call Crlf
	call procDos
	
	ret
procUno ENDP

procDos PROC
	mov eax, [esp]
	call WriteHex
	call Crlf
	ret
procDos ENDP

END main