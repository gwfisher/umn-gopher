$
$ Translation courtesy of Fernando Garcia-Loygorri <fernando@ender.upc.es>
$ Modify by Daniel Trejo-Medina <dantm@condor.dgsca.unam.mx>


$
$quote "


$
$ Welcome message...
$

1 "�Bienvenido al maravilloso mundo de Gopher!\n\n"
2 "Hay limitaciones en el uso de Gopher y no est�\n"
3 "garantizado. Por favor, lea el archivo 'Copyright' inclu�do\n"
4 "en el paquete.\n\n"

5 "Derechos Reservados 1991-94 por los Regentes de la Universidad de Minnesota\n\n"
6 "Cliente de Informaci�n de Gopher de Internet %s.%s parche%d\n"
7 "Presione ENTER para continuar\n"

$ 
$ Errors in .gopherrc
$
8 "�No puedo escribir el archivo de configuraci�n de Gopher!"

$
$ Help for command line 
$

9 "Utilice: %s [-sSbDr] [-T tipo] [-p ruta] [-t titulo] [hostname puerto]+\n"
10 "     -s      Modo seguro, usuarios sin cuenta propia\n"
11 "     -S      Modo seguro, usuarios con cuenta propia\n"
12 "     -p ruta Especificaci�n de la ruta al elemento inicial\n"
13 "     -T tipo Tipo de elemento inicial\n"
14 "     -i      Argumento de b�squeda (para -T 7)\n"
15 "     -b      Primero los recordatorios\n"
16 "     -r      Usuario remoto\n"
17 "     -D      Modo de depuraci�n\n"

$
$ Pager help..
$

18 "Ayuda de Paginador"
19 "u, ^G, izquierda : Volver al men�"
20 "espacio, abajo   : Ir a la siguiente p�gina"
21 "b, arriba        : Ir a la p�gina anterior"
22 "/                : Buscar en el texto"
23 "m                : Enviar por correo el documento actual"
24 "s                : Guardar el documento actual"
25 "p                : Imprimir el documento actual"
26 "D                : Descargar el documento actual"

$ 
$ New Application Menu
$ 
27 "Nombre del tipo de contenido"
28 "Aplicaci�n de presentaci�n"
29 "Aplicaci�n de impresi�n"

$ 
$ Top Level Options
$ 
30 "Opciones generales"
31 "Configuraci�n de las aplicaciones de presentaci�n"
32 "Configuraci�n de las aplicaciones de impresi�n"
33 "Definici�n de un tipo de contenido nuevo"

$
$ Telnet connection
$
34 "���Aviso!!!, va a abandonar el programa Gopher"
35 "de Internet y a conectarse a otro servidor. Si"
36 "se queda atorado, pulse la tecla de Control junto" 
37 "con la tecla ] y despu�s teclee quit"
38 "tecla ^ y despu�s teclee q."
39 "Conectando a %.40s, puerta %d usando %s."
40 "Conectando a %.40s usando %s."
41 "Use como login \"%.40s\" para entrar"
$
$ HTML menu
$
42 "���Aviso!!!, va a abandonar el cliente Gopher de"
43 "Internet y a conectarse a un Lector de HTML. Use la Ayuda"
44 "del Lector si no est� familiarizado con sus �rdenes."
45 "Al salir del Lector, ser� devuelto al cliente Gopher"
46 "de Internet."
$
$ Other html msgs
$
47 "Lo sienta, este cliente no da soporte a HTML"

$
$ gopher.c
$
48 "Lo siento, no puedo encontrar un administrador para este elemento"

$ 
$ Gripe form msgs
$ 
49 "Presione la tecla Intro para enviar su mensaje."
50 "Presione la tecla de tabulaci�n al final de cada l�nea que escriba."
51 "Asunto"
52 "Problema"
53 "No puedo enviar el correo..."
54 "Enviando una queja a %s..."
55 "Palabras a buscar"
56 "  P�gina: %d/%d"
57 " para Ayuda, "
58 " para Salir"
59 " para menu anterior" 
60 "%s: No se ha recibido el men� principal, no es posible seguir\n"
61 "%sm%s para enviar por correo, %sD%s para transferir, %ss%s para salvar o %sp%s para imprimir:"
62 ", %sm%s para enviar por correo, %sD%s para transferir:"
63 ", <m> para enviar por correo, <D> para transferir:"
64 "\n <m> para enviar por correo, <D> para transferir, <s> para salvar o <p> para imprimir:"
65 "La sintaxis de la direcci�n ha sido rechazada..."
66 "Palabras buscadas en negrita en el compaginador interno"
67 "Recordatorios"
68 "No puedo abrir el antiguo archivo.."
69 "�No puedo escribir en SYS$SCRATCH!"
70 "�No puedo escribir en el directorio /tmp!"
71 "No puedo abrir el archivo solicitado.."
72 "No puedo conectar al servidor %.40s, puerta %d."
73 "Elija un tipo de documento"
74 "Elija un m�todo de transferencia"
75 "Conexi�n a otro servidor de Gopher"
76 "Conexi�n a un servidor de FTP an�nimo v�a Gopher"
77 "Conectandose"
78 "Fallo en la conexi�n: %s."
79 "Fallo en la conexi�n al servidor remoto."
80 "No he podido crear '%s'"
81 "No he podido ejecutar %s\n"
82 "No he podido encontrar el texto"
83 "�No he podido crear un archivo temporal!\n" 
84 "Lo siento, ha habido un problema al imprimir..."
85 "�Error al invocar una TPU como compaginador!"
86 "Salir: u"
87 "Extrayendo campos..." 
88 "El archivo no fue transferido con �xito"
89 "Informaci�n sobre el directorio de Gopher"
90 "Error de Gopher"
91 "Archivo de Gopher"
92 "Archivo de ayuda"
93 "Informaci�n sobre elemento de Gopher"
94 "Opciones de Gopher"
95 "Error de transmisi�n de Gopher"
96 "Ayuda: ?"
97 "Servidor de Gopher Inicial: %.59s"
98 "Servidor a consultar:"
99 "Nombre de servidor"
100 "Nombre de servidor desconocido."
101 "No puedo establecer el tipo de su terminal\n"
102 "Cliente de Informaci�n de Gopher de Internet v%s.%s.%d"
103 "Informaci�n sobre ligas"
104 "Fecha y hora locales"
105 "Enviar por correo el documento actual a:"
106 "Enviando el archivo..."
107 "Enviando el archivo a %s..."
108 "A�n no se ha implementado el manejo de pel�culas"
109 "Nombre de este recordatorio:"
110 "Error en la red"
111 "No"
112 "No hay recordatorios definidos"
113 "�No hay una presentaci�n asignada a esta vista!"
114 "El usuario '%s' no existe"
115 "Siguiente p�gina: <ESPACIO>"
116 "Siguiente p�gina: Espacio"
117 "P�gina anterior: b"
118 "Puerto"
119 "Presione "
120 "Presione <INTRO> para continuar"
121 "Presione <INTRO> cuando est� listo\n"
122 "Imprimir el documento actual"
123 "Hay problemas escribiendo"
124 "�Seguro en salir (y=s�/n=no) ?"
125 "Recibiendo directorio..."
126 "Recibiendo archivo..."
127 "Recibiendo p�gina de HTML..."
128 "Recibiendo informaci�n..."
129 "Recibiendo archivo MIME..."
130 "Recibiendo pel�cula..."
131 "Recibiendo sonido..."
132 "Recibiendo Imagen..."
133 "Extrayendo directorio..."
134 "Volver al Men�: u"
135 "Men� principal: "
136 "Guardar en archivo:"
137 "Guardar lista de elementos en archivo:"
138 "Guardando archivo..."
139 "B�squeda en t�tulos de directorios de:"
140 "B�squeda sin �xito..."
141 "Buscar texto por:"
142 "Buscando texto..."
143 "Buscando..."
144 "Seleccionador (Opcional)"
145 "Mostrar la fecha y hora locales en el servidor remoto"
146 "Tama�o     Lenguaje      Tipo de Documento\n"
147 "---------- ------------- ----------------------------\n"
148 "Lo siento, no puedo mostrar este archivo"
149 "Lo siento, no puedo borrar el directorio de m�s alto nivel."
150 "�Lo siento, no puedo transferir eso!"
151 "Lo siento, no puedo hacer un recordatorio de recordatorios"
152 "Lo siento, con esta cuenta no es posible guardar archivo"
153 "Lo siento, con esta cuenta no es posible iniciar otro proceso"
154 "�Lo siento, no puedo guardar ese elemento en un archivo!"
155 "Lo siento, no puedo imprimir este documento"
156 "Lo siento, no hay mecanismo para imprimir este documento"
157 "Lo siento, telnet no est� disponible."
158 "Lo siento, esta m�quina no da soporte a im�genes"
159 "Lo siento, esta m�quina no da soporte a sonidos"
160 "Lo siento, tn3270 no est� disponible."
161 "Lo siento, Ud. no est� autorizado a imprimir archivo"
162 "Lo siento, Ud. no est� autorizado a guardar archivo"
163 "Lo siento, Ud. no est� autorizado para pone opciones en modo seguro"
164 "Lo siento, Ud. no est� autorizado a hacer esto"
165 "Lo siento, esta m�quina no maneja pel�culas"
166 "Lo siento, No hay visualizador para el archivo..."
167 "�Ha fallado el inicio del subproceso DCL!"
168 "�Ha fallado el inicio del int�rprete de �rdenes habitual!"
169 "Iniciando el subproceso DCL. Salga para volver a Gopher.\n"
170 "Iniciando su int�rprete de �rdenes habitual. Teclee 'exit' para volver\na Gopher.\n\n"
171 "Comience ahora su captura de datos...\n\n"
172 "Comience ahora su descarga de datos...\n"
173 "Problema en el sistema, no es posible enviar correo"
174 "El nombre del archivo es"
175 "No es posible reservar un socket."
176 "Se ha solicitado un pipe de Unix. �Compruebe su configuraci�n!"
177 "Error desconocido."
178 "Use '/' para definir primero una b�squeda..."
179 "Opci�n n�mero:"
180 "S�"
181 "Elija"
182 "\nTransferencia terminada. %d bytes en total, %d bytes/sec.\n"
183 "\nLo siento, no ha sido posible completar la transferencia... \n"
184 "\nPresione %sENTER%s para continuar"
185 "\nPresione <ENTER> para continuar"
186 "\n\nInformaci�n del servidor\n"
187 "Servidor para FTP an�nimo"
188 "gopher: No se ha recibido el men� principal, no es posible seguir\n"
189 "El comando 'd'elete es solo para recordatorios"
190 "^G      : Cancelar"
191 "OK      : Enter"
192 "Tab, ^N : Siguiente campo"
193 "^P      : Campo anterior"
194 "^F      : Ver p�gina siguiente"
195 "^B      : Ver p�gina anterior"
196 "^-      : Ayuda (^/ o ^7 tambien funcionan)"
197 "Enter   : Aceptar"
198 "[Ayuda: ^-]  [Cancelar: ^G]"
199 "[Valores ciclicos: Espacio]  [Listar Valores: l]"
200 "Seleccione un elemento"
$
$ Elegir menu..
$
201 "Ayuda Rapida"
202 "^G          : Cancelar"
203 "Abajo, ^N   : Siguiente Opci�n"
204 "Arriba, ^P  : Opci�n Anterior"
205 "Espacio, ^F : Ver p�gina siguiente"
206 "b, ^B       : Ver p�gina anterior"
207 "^           : Ver la primera p�gina"
208 "$           : Ver la �ltima p�gina"
209 "0-9         : Escoger una opci�n espec�fica"
210 "Enter       : Escoger la opci�n actual"
211 "Cancelar    : ^G"
212 " (default)"
213 "Elegir Ayuda de dialogo"
214 "Nada Disponible."
215 "Peligro, error en una l�nea del gopherrc: %s\n"
216 "Abortando el salvar la configuraci�n!!"
217 "Texto"

$ Default language/region gopher+ view to choose

222 "Es_MX"
223 "GopherP_Dir:gopherhlp.ES"
224 "GopherP_Dir:gopher.hlp_secure"
225 "/usr/local/lib/gopher.hlp.Es"
226 "/usr/local/lib/gopher.hlp_secure"

232 "�Habla espa�ol de America Latina?"

$
$ Add to post-pager option list in SecureMode and NoShellMode
$
237 ", %sm%s para enviar por correo, %sD%s para transferir:"
238 ", <m> para enviar por correo, <D> para transferir:"

