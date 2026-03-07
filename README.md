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
