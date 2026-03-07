-- 1. Creamos la tabla ficticia con datos reales y errores
WITH academia_datos AS (
  SELECT 'Luis' AS nombre, '2024-01-01' AS fecha_inscripcion
  UNION ALL SELECT 'Ana', '2024-02-15'
  UNION ALL SELECT 'Pedro', 'no_sabe'  -- <--- EL DATO SUCIO
  UNION ALL SELECT 'Maria', '1995-10-10' -- <--- UN ALUMNO MUY ANTIGUO
)

-- 2. Limpiamos y calculamos con UNIX_DATE
SELECT 
  nombre,
  fecha_inscripcion,
  
  -- Convertimos el texto a FECHA real, si falla pone NULL
  SAFE_CAST(fecha_inscripcion AS DATE) AS fecha_limpia,
  
  -- CALCULAMOS LOS DÍAS DE ANTIGÜEDAD:
  -- (Días desde 1970 hasta HOY) - (Días desde 1970 hasta su inscripción)
  UNIX_DATE(CURRENT_DATE()) - UNIX_DATE(SAFE_CAST(fecha_inscripcion AS DATE)) AS dias_inscrito

FROM academia_datos;
