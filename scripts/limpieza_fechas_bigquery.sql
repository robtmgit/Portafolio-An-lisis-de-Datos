-- 1. CREACIÓN DEL DATASET DE PRUEBA (CTE)
-- Creando datos de prueba con algunos errores a propósito
WITH raw_data AS (
  SELECT 'Cliente A' AS usuario, '2024-01-15' AS fecha_registro, '50.00' AS bono, 'CDMX' AS ciudad
  UNION ALL SELECT 'Cliente B', '2023-11-05', NULL, 'Guadalajara'
  UNION ALL SELECT 'Cliente C', 'fecha_error', '25.00', 'Monterrey'
  UNION ALL SELECT 'Cliente D', '2025-06-20', '100.00', 'Cancun'
)

-- 2. PROCESAMIENTO Y LIMPIEZA DE DATOS
SELECT 
  usuario,
  ciudad,
  
  -- SAFE_CAST: Convierte texto a fecha. Si el texto es basura (como en Cliente C), pone NULL.
  SAFE_CAST(fecha_registro AS DATE) AS fecha_limpia,

  -- EXTRACT: Saca solo el AÑO de la fecha ya limpia.
  EXTRACT(YEAR FROM SAFE_CAST(fecha_registro AS DATE)) AS anio_registro,

  -- DATE_DIFF: Calcula cuántos días han pasado desde el registro hasta HOY.
  DATE_DIFF(CURRENT_DATE(), SAFE_CAST(fecha_registro AS DATE), DAY) AS dias_antiguedad,

  -- COALESCE: Si el bono es NULL (como en Cliente B), le asigna un 0 para poder hacer cuentas.
  COALESCE(SAFE_CAST(bono AS FLOAT64), 0) AS bono_final,

  -- UNIX_DATE: El número de días transcurridos desde el 1 de enero de 1970.
  UNIX_DATE(SAFE_CAST(fecha_registro AS DATE)) AS epoch_days

FROM raw_data;
