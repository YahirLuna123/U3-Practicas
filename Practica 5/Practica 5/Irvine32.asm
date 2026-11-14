; *************************************************************************
;               Instituto Tecnologico de Culiacan
;
; Alumno:       Yahir Luna Beltran
; Materia:      Lenguaje de Interfaz
; Horario:      10-11
; Docente:      Dr. José Luis Medina Jiménez
; Práctica:     5 - Unidad 3: Modularización (Macros en MASM)
; *************************************************************************

INCLUDE Irvine32.inc


MostrarMensaje MACRO texto
	mov edx, OFFSET texto
	call WriteString
	call Crlf
ENDM

Multi MACRO num1, num2
	mov eax, num1
	imul eax, num2
	call WriteInt
	call Crlf
ENDM

.data
	mensajeBienvenida BYTE "BIENVENIDO AL SISTEMA DE GLOWUP MAKEUP SINALOA", 0
	mensajeFin BYTE "ADIOS", 0
.code
main PROC 
	MostrarMensaje mensajeBienvenida
	MostrarMensaje mensajeFin

	Multi 4, 5

main ENDP
END main