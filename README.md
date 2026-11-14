# U3-Practicas — Modularización (Lenguajes de Interfaz)

**Instituto Tecnológico de Culiacán**  
**Alumno:** Yahir Luna Beltrán  
**Materia:** Lenguajes de Interfaz (10–11)  
**Docente:** Dr. José Luis Medina Jiménez  

Repositorio con las cinco prácticas de la **Unidad 3: Modularización** desarrolladas en MASM con la librería `Irvine32`[cite: 1, 7].

---

## Prácticas de la Unidad 3

| # | Práctica / Tema | Qué hace el programa | Qué se comprobó al ejecutarlo | Código fuente |
| :-: | :--- | :--- | :--- | :---: |
| **1** | **Procedimientos (`PROC` / `ENDP`, `CALL`, `RET`)**[cite: 1, 6] | Define el procedimiento `mensajeAviso` para imprimir un aviso en pantalla y lo invoca dos veces desde `main` (`call mensajeAviso`)[cite: 1, 6]. | Se comprobó que `CALL` transfiere el control al procedimiento y `RET` regresa exactamente a la instrucción siguiente de cada llamada, reutilizando la rutina sin duplicar código[cite: 1, 6]. | [Ver código](Practica%201/Practica%201/Irvine32.asm) |
| **2** | **CPU y pila en llamadas (`ESP` y direcciones de retorno)**[cite: 1, 5] | Inspecciona la cima de la pila mediante `[esp]` en `main`, `procUno` y `procDos`, imprimiendo cada dirección en hexadecimal con `WriteHex` durante llamadas anidadas[cite: 1, 5]. | Se comprobó cómo cada `CALL` almacena su propia dirección de retorno en la pila modificando `ESP`, y cómo los regresos se ejecutan en orden inverso (`procDos` $\rightarrow$ `procUno` $\rightarrow$ `main`)[cite: 1, 5]. | [Ver código](Practica%202/Practica%202/Irvine32.asm) |
| **3** | **Captura y validación de entrada**[cite: 1, 3] | Lee una cadena desde teclado con `ReadString` y evalúa si su primer byte es el terminador nulo (`cmp BYTE PTR [cadena], 0`) para indicar si está vacía o no[cite: 3]. | Se comprobó la bifurcación condicional mediante `je` y `jmp` al presionar Enter sin texto frente a ingresar caracteres[cite: 3]. | [Ver código](Practica%203/Practica%203/Irvine32.asm) |
| **4** | **Paso de argumentos por pila y marco con `EBP`**[cite: 1, 4] | Envía dos argumentos por la pila (`push 1`, `push 2`), establece marco con `push ebp` / `mov ebp, esp`, accede a `[ebp+8]` y `[ebp+12]`, conserva `EBX` y limpia con `ret 8`[cite: 1, 4]. | Se comprobó el acceso estable a los parámetros mediante desplazamientos respecto a `EBP`, la conservación de `EBX` con `push`/`pop` y la liberación de 8 bytes de la pila al retornar[cite: 1, 4]. | [Ver código](Practica%204/Practica%204/Irvine32.asm) |
| **5** | **Macros en MASM (`MACRO` / `ENDM`)**[cite: 1, 2] | Define las macros parametrizadas `MostrarMensaje` y `Multi`, expandiéndolas en `main` con distintos argumentos (`MostrarMensaje mensajeBienvenida`, `MostrarMensaje mensajeFin`, `Multi 4, 5`)[cite: 1, 2]. | Se comprobó que MASM sustituye los parámetros y expande las instrucciones de cada macro directamente en el punto de uso durante el ensamblado[cite: 1, 2]. | [Ver código](Practica%205/Practica%205/Irvine32.asm) |

---

## Notas de estructura
* Cada carpeta (`Practica 1` a `Practica 5`) contiene la solución de Visual Studio y su respectivo archivo fuente documentado en `Practica X/Practica X/Irvine32.asm`[cite: 7, 8, 9, 10].
* En la **Práctica 4** (`sumarPila`), la rutina recibe los argumentos por pila y los retira con `ret 8`, realizando internamente `imul eax, ebx`[cite: 4].
