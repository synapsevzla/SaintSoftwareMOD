/*Crear una vista en sql server y guardala con el siguiente nombre:  VW_Libro_Compras_3085

Recuerda que para esto debes de usar el procedimiento: almacenado sp_addtogra

Y ejecutar en una consulta adicional el proceso para incluir la nueva vista al generador de reporte con la siguiente linea de codigo

EXEC  SP_ADDTOGRA 'nombre_de_vista', 'alias_de_vista' 

remplaza lo que estan entre comillas por el nombre de la vista

Modelo para vista de sql usando la vista del libro de compras

Nota copia solo lo que esta aqui abajo desde el SELECT hasta el FROM  dbo.VW_ADM_LIBROIVACOMPRAS

*/



SELECT        DBZ, CODSUCU, Tipo, TipoReg, FECHATRAN, FECHACOMPRA, ID3, FechaT, CODPROV, Descrip, ID3Ex, DescripEx, CodOper, TIPODOC, NUMERODOC, 
                         DOCAFECTADO, NroCtrol, Planilla_Import, TOTALNACIONAL, TOTALIMPORTADO, TOTALCOMPRA, TOTALCOMPRACONIVA, TOTALALICUOTA, MtoExento, 
                         TotalGravable, MtoGravable_IVA, Monto_IVA, Alicuota_IVA, MtoGravableImpo_IVA, MontoImpo_IVA, AlicuotaImpo_IVA, MtoGravable_IVA8, Monto_IVA8, Alicuota_IVA8, 
                         MtoGravableImpo_IVA8, MontoImpo_IVA8, AlicuotaImpo_IVA8, MtoGravable_IVAR1, Monto_IVAR1, Alicuota_IVAR1, MtoGravableImpo_IVAR1, MontoImpo_IVAR1, 
                         MtoGravable_IVAR2, Monto_IVAR2, AlicuotaImpo_IVAR1, Alicuota_IVAR2, MtoGravableImpo_IVAR2, MontoImpo_IVAR2, AlicuotaImpo_IVAR2, RetencionIVA, 
                         DifRetencion, PorctReten, NRORETENCION, FechaRetencion, NroUnico, 
                         CASE WHEN Alicuota_IVA = 12 THEN MtoGravable_IVA WHEN Alicuota_IVA8 = 12 THEN MtoGravable_IVA8 WHEN Alicuota_IVAR1 = 12 THEN MtoGravable_IVAR1 WHEN
                          Alicuota_IVAR2 = 12 THEN MtoGravable_IVAR2 ELSE 0 END AS BASE_IVA_12, 
                         CASE WHEN Alicuota_IVA = 12 THEN Alicuota_IVA WHEN Alicuota_IVA8 = 12 THEN Alicuota_IVA8 WHEN Alicuota_IVAR1 = 12 THEN Alicuota_IVAR1 WHEN Alicuota_IVAR2
                          = 12 THEN Alicuota_IVAR2 ELSE 0 END AS ALICUOTA_IVA_12, 
                         CASE WHEN Alicuota_IVA = 12 THEN Monto_IVA WHEN Alicuota_IVA8 = 12 THEN Monto_IVA8 WHEN Alicuota_IVAR1 = 12 THEN Monto_IVAR1 WHEN Alicuota_IVAR2 =
                          12 THEN Monto_IVAR2 ELSE 0 END AS MONTO_IVA_12, 
                         CASE WHEN Alicuota_IVA = 8 THEN MtoGravable_IVA WHEN Alicuota_IVA8 = 8 THEN MtoGravable_IVA8 WHEN Alicuota_IVAR1 = 8 THEN MtoGravable_IVAR1 WHEN Alicuota_IVAR2
                          = 8 THEN MtoGravable_IVAR2 ELSE 0 END AS BASE_IVA_8, 
                         CASE WHEN Alicuota_IVA = 8 THEN Alicuota_IVA WHEN Alicuota_IVA8 = 8 THEN Alicuota_IVA8 WHEN Alicuota_IVAR1 = 8 THEN Alicuota_IVAR1 WHEN Alicuota_IVAR2 =
                          8 THEN Alicuota_IVAR2 ELSE 0 END AS ALICUOTA_IVA_8, 
                         CASE WHEN Alicuota_IVA = 8 THEN Monto_IVA WHEN Alicuota_IVA8 = 8 THEN Monto_IVA8 WHEN Alicuota_IVAR1 = 8 THEN Monto_IVAR1 WHEN Alicuota_IVAR2 = 8 THEN
                          Monto_IVAR2 ELSE 0 END AS MONTO_IVA_8, 
                         CASE WHEN Alicuota_IVA = 9 THEN MtoGravable_IVA WHEN Alicuota_IVA8 = 9 THEN MtoGravable_IVA8 WHEN Alicuota_IVAR1 = 9 THEN MtoGravable_IVAR1 WHEN Alicuota_IVAR2
                          = 9 THEN MtoGravable_IVAR2 ELSE 0 END AS BASE_IVA_9, 
                         CASE WHEN Alicuota_IVA = 9 THEN Alicuota_IVA WHEN Alicuota_IVA8 = 9 THEN Alicuota_IVA8 WHEN Alicuota_IVAR1 = 9 THEN Alicuota_IVAR1 WHEN Alicuota_IVAR2 =
                          9 THEN Alicuota_IVAR2 ELSE 0 END AS ALICUOTA_IVA_9, 
                         CASE WHEN Alicuota_IVA = 9 THEN Monto_IVA WHEN Alicuota_IVA8 = 9 THEN Monto_IVA8 WHEN Alicuota_IVAR1 = 9 THEN Monto_IVAR1 WHEN Alicuota_IVAR2 = 9 THEN
                          Monto_IVAR2 ELSE 0 END AS MONTO_IVA_9, 
                         CASE WHEN Alicuota_IVA = 7 THEN MtoGravable_IVA WHEN Alicuota_IVA8 = 7 THEN MtoGravable_IVA8 WHEN Alicuota_IVAR1 = 7 THEN MtoGravable_IVAR1 WHEN Alicuota_IVAR2
                          = 7 THEN MtoGravable_IVAR2 ELSE 0 END AS BASE_IVA_7, 
                         CASE WHEN Alicuota_IVA = 7 THEN Alicuota_IVA WHEN Alicuota_IVA8 = 7 THEN Alicuota_IVA8 WHEN Alicuota_IVAR1 = 7 THEN Alicuota_IVAR1 WHEN Alicuota_IVAR2 =
                          7 THEN Alicuota_IVAR2 ELSE 0 END AS ALICUOTA_IVA_7, 
                         CASE WHEN Alicuota_IVA = 7 THEN Monto_IVA WHEN Alicuota_IVA8 = 7 THEN Monto_IVA8 WHEN Alicuota_IVAR1 = 7 THEN Monto_IVAR1 WHEN Alicuota_IVAR2 = 7 THEN
                          Monto_IVAR2 ELSE 0 END AS MONTO_IVA_7, CASE WHEN RetencionIVA <> '0' THEN FECHATRAN ELSE NULL END AS FECHARETENCION3085
FROM            dbo.VW_ADM_LIBROIVACOMPRAS


/*Despues de esto debes de cargar por el administrativo -----> generador de reportes -----> Nuevo reporte -----> Archivo -----> Importar desde Archivo y listo abras finalizado suerte con tu nuevo libro de compras



Lo que ven en las lines de abajo es la construccion inicial del proyecto todo lo que ise que aunque con pocas lineas y conocimientos pude arreglar una falla en un reporte del libro de compras usando la vista mal elaborada y de una forma mas estructurada aunque poco elegante de como se reajusto la busqueda en la vista con un simple case whem then else as nombredelacolumna saludos jhonatan ruiz :) canal saint maracay region centro llanos.

PIRMER CAMPO BASE_IVA_12 12

, CASE 
	WHEN Alicuota_IVA = 12 THEN MtoGravable_IVA
	WHEN Alicuota_IVA8 = 12 THEN MtoGravable_IVA8
	WHEN Alicuota_IVAR1 = 12 THEN MtoGravable_IVAR1
	WHEN Alicuota_IVAR2 = 12 THEN MtoGravable_IVAR2
ELSE 0 END AS BASE_IVA_12 ,

PIRMER CAMPO ALICUOTA_IVA_12 12

CASE 
	WHEN Alicuota_IVA = 12 THEN Alicuota_IVA
	WHEN Alicuota_IVA8 = 12 THEN Alicuota_IVA8
	WHEN Alicuota_IVAR1 = 12 THEN Alicuota_IVAR1
	WHEN Alicuota_IVAR2 = 12 THEN Alicuota_IVAR2
ELSE 0 END AS ALICUOTA_IVA_12 ,


PIRMER CAMPO MONTO_IVA_12 12

CASE 
	WHEN Alicuota_IVA = 12 THEN Monto_IVA
	WHEN Alicuota_IVA8 = 12 THEN Monto_IVA8
	WHEN Alicuota_IVAR1 = 12 THEN Monto_IVAR1
	WHEN Alicuota_IVAR2 = 12 THEN Monto_IVAR2
ELSE 0 END AS MONTO_IVA_12 ,





PIRMER CAMPO BASE_IVA_8 8

CASE 
	WHEN Alicuota_IVA = 8 THEN MtoGravable_IVA
	WHEN Alicuota_IVA8 = 8 THEN MtoGravable_IVA8
	WHEN Alicuota_IVAR1 = 8 THEN MtoGravable_IVAR1
	WHEN Alicuota_IVAR2 = 8 THEN MtoGravable_IVAR2
ELSE 0 END AS BASE_IVA_8 ,

PIRMER CAMPO ALICUOTA_IVA_8 8

CASE 
	WHEN Alicuota_IVA = 8 THEN Alicuota_IVA
	WHEN Alicuota_IVA8 = 8 THEN Alicuota_IVA8
	WHEN Alicuota_IVAR1 = 8 THEN Alicuota_IVAR1
	WHEN Alicuota_IVAR2 = 8 THEN Alicuota_IVAR2
ELSE 0 END AS ALICUOTA_IVA_8 ,


PIRMER CAMPO MONTO_IVA_8 8

CASE 
	WHEN Alicuota_IVA = 8 THEN Monto_IVA
	WHEN Alicuota_IVA8 = 8 THEN Monto_IVA8
	WHEN Alicuota_IVAR1 = 8 THEN Monto_IVAR1
	WHEN Alicuota_IVAR2 = 8 THEN Monto_IVAR2
ELSE 0 END AS MONTO_IVA_8 ,



PIRMER CAMPO BASE_IVA_9 9

CASE 
	WHEN Alicuota_IVA = 9 THEN MtoGravable_IVA
	WHEN Alicuota_IVA8 = 9 THEN MtoGravable_IVA8
	WHEN Alicuota_IVAR1 = 9 THEN MtoGravable_IVAR1
	WHEN Alicuota_IVAR2 = 9 THEN MtoGravable_IVAR2
ELSE 0 END AS BASE_IVA_9 ,

PIRMER CAMPO ALICUOTA_IVA_9 9

CASE 
	WHEN Alicuota_IVA = 9 THEN Alicuota_IVA
	WHEN Alicuota_IVA8 = 9 THEN Alicuota_IVA8
	WHEN Alicuota_IVAR1 = 9 THEN Alicuota_IVAR1
	WHEN Alicuota_IVAR2 = 9 THEN Alicuota_IVAR2
ELSE 0 END AS ALICUOTA_IVA_9 ,


PIRMER CAMPO MONTO_IVA_9 9

CASE 
	WHEN Alicuota_IVA = 9 THEN Monto_IVA
	WHEN Alicuota_IVA8 = 9 THEN Monto_IVA8
	WHEN Alicuota_IVAR1 = 9 THEN Monto_IVAR1
	WHEN Alicuota_IVAR2 = 9 THEN Monto_IVAR2
ELSE 0 END AS MONTO_IVA_9 ,




PIRMER CAMPO BASE_IVA_7 7

CASE 
	WHEN Alicuota_IVA = 7 THEN MtoGravable_IVA
	WHEN Alicuota_IVA8 = 7 THEN MtoGravable_IVA8
	WHEN Alicuota_IVAR1 = 7 THEN MtoGravable_IVAR1
	WHEN Alicuota_IVAR2 = 7 THEN MtoGravable_IVAR2
ELSE 0 END AS BASE_IVA_7 ,

PIRMER CAMPO ALICUOTA_IVA_7 7

CASE 
	WHEN Alicuota_IVA = 7 THEN Alicuota_IVA
	WHEN Alicuota_IVA8 = 7 THEN Alicuota_IVA8
	WHEN Alicuota_IVAR1 = 7 THEN Alicuota_IVAR1
	WHEN Alicuota_IVAR2 = 7 THEN Alicuota_IVAR2
ELSE 0 END ALICUOTA_IVA_7 ,


PIRMER CAMPO MONTO_IVA_7 7

CASE 
	WHEN Alicuota_IVA = 7 THEN Monto_IVA
	WHEN Alicuota_IVA8 = 7 THEN Monto_IVA8
	WHEN Alicuota_IVAR1 = 7 THEN Monto_IVAR1
	WHEN Alicuota_IVAR2 = 7 THEN Monto_IVAR2
ELSE 0 END MONTO_IVA_7 
















V_LibroIVACompras.Monto_IVA
V_LibroIVACompras.Alicuota_IVA
V_LibroIVACompras.MtoGravable_IVA

V_LibroIVACompras.Monto_IVA8
V_LibroIVACompras.Alicuota_IVA8
V_LibroIVACompras.MtoGravable_IVA8

V_LibroIVACompras.Monto_IVAR1
V_LibroIVACompras.Alicuota_IVAR1
V_LibroIVACompras.MtoGravable_IVAR1

V_LibroIVACompras.Monto_IVAR2
V_LibroIVACompras.Alicuota_IVAR2
V_LibroIVACompras.MtoGravable_IVAR2











Y cuadtro horas despues de toda esta paja hago un arreglo para poder ver si el objeto tiene o no contenido y imprimir la fecha de la pedaso de retencion todo porque mi casa principal no me  entrega las cosas adecuadas


Fecha Retencion

case 

	when RetencionIVA <> '0' then FECHATRAN
	else null end as FECHARETENCION3085
								
								
								Fin de la echadera de carro pues saludos y a trabajar
								
								*/