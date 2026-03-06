WITH datos_sucios AS (
  SELECT 'Roberto' as nombre, '1998' as anio_nacimiento, '500' as visitas
  UNION ALL SELECT 'Maria', '1995', '750'
  UNION ALL SELECT 'Jose', '2000', 'no_disponible' -- Esto causará error en CAST normal
)

SELECT 
  nombre,
  -- 1. Convertimos el año de texto a entero para poder hacer cálculos
  CAST(anio_nacimiento AS INT64) AS anio_numero,
  
  -- 2. Usamos SAFE_CAST para las visitas porque hay un texto ('no_disponible')
  -- Si usáramos CAST normal, la consulta explotaría. SAFE_CAST pondrá NULL.
  SAFE_CAST(visitas AS INT64) AS visitas_limpias
FROM datos_sucios;
