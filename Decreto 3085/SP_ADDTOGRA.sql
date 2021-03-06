create PROCEDURE [dbo].[sp_addtogra]
   @tname varchar(80), 
   @alias varchar(80)
AS

BEGIN
set nocount on

Delete SATABL 
Where TableName=@tname 


DELETE SAFIEL 
Where TableName=@tname

 
Insert Into SATABL 
(tablename, tablealias) 
Values (@tname, @alias) 


Insert Into  SAFIEL 
(TableName, FieldName, FieldAlias, DataType, Selectable, Searchable, 
Sortable, AutoSearch, Mandatory) 

( 
Select A.Name As TableName
, B.Name As FieldName
, B.Name As FieldAlias
,   Case B.XType 
    When 56  Then 'dtLongInt' 
        When 58  Then 'dtInteger' 
        When 106 Then 'dtDouble' 
        When 167 Then 'dtString' 
        When 61  Then 'dtDateTime' 
        When 35  Then 'dtMemo' 
        When 52  Then 'dtInteger' 
        When 34  Then 'dtGraphic' 
        When 165 Then 'dtBlob' 
        End As DataType, 
       'T' Selectable, 
       'T' Searchable, 
       'T' Sortable, 
       'F' AutoSearch, 
       'F' Mandatory 
from SysObjects A, syscolumns B 
where A.id=B.id and A.name=@tname

)
END