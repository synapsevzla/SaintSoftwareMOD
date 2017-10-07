Vistas a crear en la base de datos

Esta vista busca los impuestos con valores de 9 y 7 sin importar si son generales reducidos o al luju y es para la facturacion.

# Nombre de la vista: VW_TAXT_VTA_3085
```
SELECT        TipoFac, NumeroD, CodTaxs, Monto, MtoTax, TGravable, CodSucu, 
                         CASE WHEN MtoTax = 9 THEN '*Descto de I.V.A del 3% Decreto Nro 3085 9% de I.V.A' WHEN MtoTax = 7 THEN '*Descto de I.V.A del 5% Decreto Nro 3085 7% de I.V.A' WHEN
                          MtoTax = 12 THEN '*No Aplica Descuento Segun Decreto 3085 IVA' ELSE NULL END AS Decreto3085, 
                         CASE WHEN MtoTax = 9 THEN Monto WHEN MtoTax = 7 THEN Monto WHEN MtoTax = 12 THEN 0 ELSE NULL END AS MONTO2
FROM            dbo.SATAXVTA
WHERE        (MtoTax = 7) AND (TipoFac = 'A') OR
                         (MtoTax = 9) AND (TipoFac = 'A') OR
                         (MtoTax = 12) AND (TipoFac = 'A')

```
Esta vista busca los impuestos con valores de 9 y 7 sin importal si son generales reducidos o al lujo y es para buscar los impuestos de las devoluciones

# Nombre de la Vista: VW_TAXT_VTA_DEV3085
```
SELECT        TipoFac, NumeroD, CodTaxs, Monto, MtoTax, TGravable, CodSucu, 
                         CASE WHEN MtoTax = 9 THEN '*Reverso 3% Decreto Nro 3085 9% de I.V.A' WHEN MtoTax = 7 THEN '*Reverso 5% Decreto Nro 3085 7% de I.V.A' WHEN MtoTax = 12 THEN
                          '*No Aplica Reverso de Decreto 3085 IVA' ELSE NULL END AS Decreto3085, 
                         CASE WHEN MtoTax = 9 THEN Monto WHEN MtoTax = 7 THEN Monto WHEN MtoTax = 12 THEN 0 ELSE NULL END AS MONTO2
FROM            dbo.SATAXVTA
WHERE        (MtoTax = 7) AND (TipoFac = 'B') OR
                         (MtoTax = 9) AND (TipoFac = 'B') OR
                         (MtoTax = 12) AND (TipoFac = 'B')
```
Agregue el procedimiento almacenado enviado junto al correo electronico en la base de datos para que al momento de ejecutarlo se agruegen las vistas al generador de reportes


```
EXEC  SP_ADDTOGRA 'nombre_de_vista', 'alias_de_vista' remplaza lo que estan entre comillas por el nombre de la vista
```



Algunos ajustes son necesarios para las facturas que manejan 12 con el decreto y el iva del 8% en este caso debera realizar los ajustes necesarios para la busqueda del iva en este formato pero a nivel de reporte

formato de factura iva sencillo sin tener que hacer ajustes: factura3085
formato de dev iva sencillo sin tener que hacer ajustes: dev3085
formato de factura para ajustar 3085 mas iva 8%: especial3085

Tenga en cuenta que debido este decreto el comportamiento del sistema cambio por lo que al momento del reajuste del iva los productos facturados con el descuento del 3 y del 5% del iva reflejan como iva el 9 y el 7 %.

Si usted es de estas personas que tiene en su forma libre los productos reflejando las tasas de los impuestos tendra un gran problema a la hora de la impresion de los mismos por lo que debera realizar un ajuste sobre una variable en el mejor de los casos.

# Ejemplo del ajuste que selecciona y muestra el iva correspondiente sobre una variable aplicada a la linea del producto.

```
if Impuesto_Item_factura2['Monto_Impuesto']=12
then 
Value:= 12 
else if Impuesto_Item_factura2['Monto_Impuesto']=9
then
Value:= 12   
else if Impuesto_Item_factura2['Monto_Impuesto']=7
then
Value:= 12
else if Impuesto_Item_factura2['Monto_Impuesto']=8
then
Value:= 8      
else
Value:= 'Exento';
```

El modelo al cual hago referencia es 

factura alti especia decreto 3085.rtm y dev alti especial 3085.rtm 

Con estos dos ejemplos usted se podra guiar para adecuar sus formatos adaptados a al decreto.

Saludos y exito.
