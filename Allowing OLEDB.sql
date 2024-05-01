USE [master] 
GO 
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'AllowInProcess', 1 
GO 
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'DynamicParameters', 1 
GO
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.12.0', N'DisallowAdHocAccess', 0
GO 
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.16.0', N'AllowInProcess', 1 
GO 
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.16.0', N'DynamicParameters', 1 
GO
EXEC master.dbo.sp_MSset_oledb_prop N'Microsoft.ACE.OLEDB.16.0', N'DisallowAdHocAccess', 0
GO