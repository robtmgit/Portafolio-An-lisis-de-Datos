# Portafolio: Análisis de Datos

Bienvenido a mi repositorio de proyectos. Aquí encontrarás mi trabajo utilizando herramientas de análisis y visualización.

## 🛠️ Herramientas
* **Lenguajes:**  SQL.
* **Visualización:** Power BI / Tableau.
* **Otras:** Excel avanzado.
## 📂 Proyectos
* **Análisis de Clima:** [Ver Dataset de Clima](./Weather%20Table%20-%20Data%20for%20CONVERT.xlsx) - Este proyecto contiene datos sobre como convertir algunas unidades de medida o cifras de medición utilizando la formala CONVERT, así como el pegado especial, solamente valores estáticos sin formula (values only).
* Normalización de Fechas: Ver Dataset de Fechas - En este proyecto realicé la limpieza de datos inconsistentes utilizando las fórmulas DATEVALUE y VALUE(LEFT()). Logré convertir entradas de texto con diferentes formatos y marcas de tiempo en valores numéricos seriales, permitiendo un análisis cronológico preciso.
* Manipulación de Strings (Concatenación con espacios): Utilicé la función CONCAT para integrar sufijos de texto a variables dinámicas. En este ejercicio, aseguré la legibilidad del resultado mediante el uso correcto de espacios dentro de las comillas (" "), evitando el error común de textos pegados y mejorando la calidad de los datos finales.
* 📂 Manipulación Avanzada de Texto (Split & Concatenate)
En esta sección del proyecto, trabajé con la estructura y limpieza de cadenas de texto para estandarizar bases de datos:

Segmentación de Datos (SPLIT): Desglosé información contenida en una sola celda (como nombres de herramientas o categorías) en columnas independientes utilizando delimitadores de espacio.

Construcción de Campos Dinámicos (CONCATENATE): Integré múltiples variables (Título + Nombre + Apellido) en una sola columna de "Nombre Completo".

Control de Formato: Aseguré la legibilidad del usuario final mediante la inserción manual de caracteres de espacio (" ") dentro de las funciones, demostrando atención al detalle en la presentación de datos finales.
Análisis de Desempeño y Crecimiento Mensual

Implementación de métricas clave (KPIs) mediante fórmulas avanzadas de porcentaje:

Logro de Metas: Cálculo de cumplimiento utilizando la relación Real / Meta.

Tasa de Crecimiento: Medición de variaciones temporales con la fórmula (Actual - Anterior) / Anterior.

Normalización de Datos: Formateo de valores flotantes a porcentajes para facilitar la lectura ejecutiva y detección de tendencias (incrementos y decrementos).

📂 Automatización de Formatos con TO_PERCENT
Implementación de Función: Apliqué la función =TO_PERCENT(C4/B4), la cual automatiza la conversión de valores decimales a expresiones porcentuales profesionales.

🛡️ Gobernanza y Protección de Datos (Data Validation)
Implementé mecanismos de control de calidad para asegurar la integridad de la información y la robustez del reporte:
Listas Desplegables: Normalización de entradas mediante opciones predeterminadas para evitar inconsistencias en el análisis.
Checkboxes Personalizados: Creación de controles visuales para el seguimiento de tareas y validación binaria de procesos.
Protección de Estructura: Blindaje de datos estructurados y fórmulas críticas para prevenir modificaciones accidentales por parte de terceros.
🛠️ Implementaciones Clave:
Gobernanza de Datos (Data Validation):

Escudo de Entrada (Reject Input): Configuré reglas estrictas para evitar la "corrupción de datos". El sistema rechaza cualquier entrada que no sea una fecha válida o un estado predefinido.

Normalización con Dropdowns: Implementé menús desplegables para estandarizar categorías (Not Yet Started, In Progress, Ready), eliminando errores tipográficos que arruinan los filtros.

Visualización Dinámica (Conditional Formatting):
Semáforo de Estatus: Automatización de colores basada en el estado de la tarea (Rojo/Amarillo/Verde) para una interpretación visual inmediata.
Alertas de Vencimiento Crítico: Creación de una regla lógica (Date is before today) que resalta automáticamente en rojo las fechas pasadas, permitiendo identificar retrasos sin auditoría manual.
Interfaz y UX de Usuario:
Uso de Checkboxes para validación binaria de revisiones, mejorando la interactividad y el seguimiento de tareas pendientes.

Aprendí que en SQL, si un número viene disfrazado de texto, uso CAST para quitarle el disfraz y poder trabajar con él. Y si los datos están muy sucios, uso SAFE_CAST para que mi código no explote.
📂 Caso de Estudio: Cálculo de Antigüedad de Usuarios
Problema: Los datos de fecha de inscripción venían como texto y contenían errores de escritura ("no_sabe").

Solución:

Utilicé una CTE (WITH) para simular el dataset.

Apliqué SAFE_CAST para estandarizar el formato de fecha sin detener la ejecución por errores.

Implementé la función UNIX_DATE para realizar una resta aritmética entre la fecha actual (CURRENT_DATE) y la fecha de inscripción.

Resultado: Una columna limpia con el número exacto de días transcurridos, convirtiendo un dato complejo en una métrica lista para análisis estadístico.

Subiendo script de práctica para limpieza de fechas y manejo de nulos en BigQuery. Incluye lógica de SAFE_CAST, DATE_DIFF y COALESCE.

🎯 Objetivo
El propósito de esta consulta es determinar las 10 rutas más transitadas, desglosadas por tipo de usuario (Subscriber vs Customer), calculando además la duración promedio de cada viaje.

🛠️ Conceptos de SQL Aplicados
En este ejercicio puse en práctica las siguientes funciones y cláusulas:

CONCAT: Para unir las columnas de estación de inicio y fin en una sola cadena de texto legible (ej. "Station A to Station B").

SAFE_CAST: Utilizado en lugar de CAST para transformar la duración del viaje a INT64 de forma segura, evitando errores si existen datos corruptos o nulos.

AVG & ROUND: Para calcular el tiempo promedio de viaje en minutos, redondeado a dos decimales para mayor claridad.

GROUP BY: Fundamental para agrupar los resultados por ruta y tipo de usuario antes de realizar los cálculos agregados.

ORDER BY & LIMIT: Para organizar los resultados de mayor a menor afluencia y mostrar solo el "Top 10".

LEFT,RIGHT,FIND
En este módulo practiqué la manipulación de cadenas de texto (strings) tanto en SQL como en Hojas de Cálculo, utilizando funciones de segmentación para separar marcas de tiempo (timestamps) en componentes de fecha y hora individuales.

# 🚲 Análisis de Datos: Limpieza y Transformación (NYC CitiBike)

Este proyecto forma parte de mi certificación en **Análisis de Datos de Google**. En esta sección, utilizo **SQL (Google BigQuery)** para procesar y estandarizar un dataset masivo de viajes en bicicleta de Nueva York.

## 🎯 Objetivo del Script
Transformar datos crudos (Raw Data) en información estructurada y lista para reportes, aplicando técnicas de manipulación de cadenas de texto y control de calidad.

## 🛠️ Funciones de SQL Utilizadas

| Función | Propósito en este Proyecto |
| :--- | :--- |
| `LOWER` | Normalizar nombres de estaciones para correos electrónicos. |
| `REPLACE` | Eliminar espacios en blanco para generar IDs válidos. |
| `CONCAT` | Unir texto de columnas con dominios corporativos (`@citibikenyc.com`). |
| `UPPER` | Estandarizar nombres de estaciones en mayúsculas para reportes. |
| `CAST` | Convertir datos tipo `TIMESTAMP` a `STRING` para poder manipularlos. |
| `LEFT` | Extraer los primeros 4 caracteres para obtener el **Año del viaje**. |

## 🧪 Caso Práctico: Limpieza de Valores Nulos
Uno de los mayores retos en este dataset fue la presencia de registros incompletos. 

**Solución aplicada:**
Implementé un filtro de calidad mediante la cláusula `WHERE`:
- `IS NOT NULL`: Para evitar que la función `CONCAT` devolviera resultados vacíos.
- `!= ''`: Para asegurar que no se procesaran cadenas de texto sin contenido.

## 📊 Resultado
El script genera una tabla optimizada con:
1. **Email de Soporte:** Formato limpio y funcional.
2. **Estación Normalizada:** Texto en mayúsculas uniforme.
3. **Dimensión Temporal:** Año de viaje extraído directamente de la marca de tiempo.

Gemini ha dicho
Entendido, quieres un README súper breve y directo que solo explique esos dos ejemplos de la imagen. Aquí tienes una versión minimalista y clara:

🔗 Unión de Cadenas en SQL (Ejemplos Rápidos)
Guía visual y sintaxis para utilizar CONCAT_WS y el operador + para combinar texto.

1. Función CONCAT_WS
Une múltiples hilos de texto utilizando un separador común definido al principio.

Sintaxis: CONCAT_WS(separador, string1, string2, ...)
Resultado: [www.youtube.com](https://www.youtube.com)

2. Operador +
Método matemático para concatenar texto de forma manual (común en SQL Server).

Sintaxis: string1 + string2 + string_n
Resultado: [www.xboxlive.com](https://www.xboxlive.com)

# Superstore Sales & Profitability Analysis 📊

Este proyecto presenta un análisis integral de datos de ventas de una tienda minorista, transformando datos brutos en insights accionables mediante el uso de **KPIs** y visualización de datos.

## 🚀 KPIs Analizados
* **Revenue (Ventas Totales):** Medición del volumen de mercado por región.
* **Net Profit (Ganancia Neta):** Evaluación de la salud financiera de las operaciones.
* **Product Efficiency:** Identificación de subcategorías con márgenes negativos.

## 🔍 Hallazgos Principales (Insights)
1. **Estacionalidad:** Se detectó un incremento significativo en las ventas durante el último trimestre del año (Q4), especialmente en Noviembre.
2. **Fuga de Ganancias:** A pesar de tener un alto volumen de ventas, las subcategorías de **Mesas (Tables)** y **Libreros (Bookcases)** presentan pérdidas netas.
3. **Líderes de Rentabilidad:** La categoría de **Tecnología** (especialmente Fotocopiadoras y Teléfonos) es el motor principal de la utilidad de la empresa.

## 🛠️ Herramientas Utilizadas
* **Google Sheets / Excel:** Limpieza de datos (formato de fechas), Tablas Dinámicas y Dashboards.
* **Data Wrangling:** Normalización de fechas y creación de campos calculados.

## 📂 Contenido del Repositorio
* `Sample - Superstore.xlsx`: Archivo con el análisis completo en 3 hojas (Regional, Temporal y Productos).
* `img/`: Capturas de pantalla de los gráficos generados.
* ### 📊 Análisis Regional
![Ventas y Ganancias por Región](img/grafico_regional)

### 📈 Análisis de Rentabilidad por Producto
![Profit por Subcategoría](img/product_profitability)

Data Cleaning: Text to Numerical Conversion for VLOOKUP
Este repositorio contiene una guía práctica y ejemplos sobre cómo normalizar tipos de datos en hojas de cálculo. El objetivo principal es resolver el error común donde los valores numéricos almacenados como texto impiden el funcionamiento correcto de funciones de búsqueda como VLOOKUP.

📋 El Problema
Las funciones de búsqueda y cálculos matemáticos fallan cuando existe una discrepancia en el formato:

Columna A: Números almacenados como Plain Text (alineados a la izquierda). Resultado de suma: 0.

Columna B: Valores convertidos a formato Numérico (alineados a la derecha). Resultado de suma: Correcto (1368).

🛠️ Solución
Para preparar los datos antes de un VLOOKUP, se recomienda:

Formateo Manual: Seleccionar la columna > Formato > Número.

Uso de Funciones: Utilizar la función VALUE() o VALOR() para forzar la conversión.

Operación Matemática: Multiplicar el rango por 1 para transformar strings numéricos en datos operables.
![Captura de pantalla del proceso](img/value_formula.png)
