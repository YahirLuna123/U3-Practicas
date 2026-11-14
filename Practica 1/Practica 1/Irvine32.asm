; *************************************************************************
;               Instituto Tecnologico de Culiacan
;
; Alumno:       Yahir Luna Beltran
; Materia:      Lenguaje de Interfaz
; Horario:      10-11
; Docente:      Dr. José Luis Medina Jiménez
; Práctica:     1 - Unidad 3: Modularización (Procedimientos)
; *************************************************************************

INCLUDE Irvine32.inc

.data
	mensajeInicio BYTE "inicio de programa", 0
	mensajeProcedimiento BYTE "Estoy dentro del procedimiento", 0
	mensajeFin BYTE "Fin del programa", 0

.code
main PROC
	mov edx, OFFSET mensajeInicio
	call WriteString
	call Crlf

	; Primera llamada
	call mensajeAviso

	mov eax, 10

	; Segunda llamada
	call mensajeAviso ; EIP salta a las instrucciones dentro del procedimiento
	mov eax, 20

	mov edx, OFFSET mensajeFin
	call WriteString
	call Crlf

	exit
main ENDP

mensajeAviso PROC
	mov edx, OFFSET mensajeProcedimiento
	call WriteString
	call Crlf
	ret ; Recupera la direccion de EIP a la siguiente instruccion de donde se CALL al procedimiento
mensajeAviso ENDP

END main