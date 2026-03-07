SELECT 
    -- Limpiamos: minúsculas y quitamos espacios
    CONCAT(REPLACE(LOWER(start_station_name), ' ', ''), '@citibikenyc.com') AS email_soporte_limpio,
    
    -- Nombre original en mayúsculas
    UPPER(start_station_name) AS estacion_inicio,
    
    -- Año del viaje
    LEFT(CAST(starttime AS STRING), 4) AS anio_viaje

FROM `bigquery-public-data.new_york_citibike.citibike_trips`


WHERE start_station_name IS NOT NULL 
  AND start_station_name != '' -- Que no esté vacío
  AND starttime IS NOT NULL

LIMIT 10;
