﻿// Licence file C:\Users\jiras\Documents\ReversePOCO.txt not found.
// Please obtain your licence file at www.ReversePOCO.co.uk, and place it in your documents folder shown above.
// Defaulting to Trial version.


// ------------------------------------------------------------------------------------------------
// WARNING: Failed to load provider "System.Data.SqlClient" - A network-related or instance-specific error occurred while establishing a connection to SQL Server. The server was not found or was not accessible. Verify that the instance name is correct and that SQL Server is configured to allow remote connections. (provider: Named Pipes Provider, error: 40 - Could not open a connection to SQL Server)
// Allowed providers:
//    "System.Data.Odbc"
//    "System.Data.OleDb"
//    "System.Data.OracleClient"
//    "System.Data.SqlClient"
//    "System.Data.SqlServerCe.3.5"
//    "Microsoft.SqlServerCe.Client.4.0"

/*   at System.Data.SqlClient.SqlInternalConnectionTds..ctor(DbConnectionPoolIdentity identity, SqlConnectionString connectionOptions, SqlCredential credential, Object providerInfo, String newPassword, SecureString newSecurePassword, Boolean redirectedUserInstance, SqlConnectionString userConnectionOptions, SessionData reconnectSessionData, DbConnectionPool pool, String accessToken, Boolean applyTransientFaultHandling, SqlAuthenticationProviderManager sqlAuthProviderManager)
   at System.Data.SqlClient.SqlConnectionFactory.CreateConnection(DbConnectionOptions options, DbConnectionPoolKey poolKey, Object poolGroupProviderInfo, DbConnectionPool pool, DbConnection owningConnection, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionFactory.CreatePooledConnection(DbConnectionPool pool, DbConnection owningObject, DbConnectionOptions options, DbConnectionPoolKey poolKey, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionPool.CreateObject(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool.UserCreateRequest(DbConnection owningObject, DbConnectionOptions userOptions, DbConnectionInternal oldConnection)
   at System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, UInt32 waitForMultipleObjectsTimeout, Boolean allowCreate, Boolean onlyOneCheckConnection, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionPool.TryGetConnection(DbConnection owningObject, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionFactory.TryGetConnection(DbConnection owningConnection, TaskCompletionSource`1 retry, DbConnectionOptions userOptions, DbConnectionInternal oldConnection, DbConnectionInternal& connection)
   at System.Data.ProviderBase.DbConnectionInternal.TryOpenConnectionInternal(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.ProviderBase.DbConnectionClosed.TryOpenConnection(DbConnection outerConnection, DbConnectionFactory connectionFactory, TaskCompletionSource`1 retry, DbConnectionOptions userOptions)
   at System.Data.SqlClient.SqlConnection.TryOpenInner(TaskCompletionSource`1 retry)
   at System.Data.SqlClient.SqlConnection.TryOpen(TaskCompletionSource`1 retry)
   at System.Data.SqlClient.SqlConnection.Open()
   at Microsoft.VisualStudio.TextTemplatingDEBDC15C2A1B01256DC2449D523F2F823815B6CB5F3D1BE7F1795BB355D8AABD7909CEF9AAA672BDA1E697721272E3BDC836AC91B31E73DEBF8ACF10E373ED57.GeneratedTextTransformation.DatabaseReader.Init() in D:\eCommerce\API\eCommerceAPI\eCommerceAPI\Entity\EF.Reverse.POCO.v3.ttinclude:line 12200
   at Microsoft.VisualStudio.TextTemplatingDEBDC15C2A1B01256DC2449D523F2F823815B6CB5F3D1BE7F1795BB355D8AABD7909CEF9AAA672BDA1E697721272E3BDC836AC91B31E73DEBF8ACF10E373ED57.GeneratedTextTransformation.SqlServerDatabaseReader.Init() in D:\eCommerce\API\eCommerceAPI\eCommerceAPI\Entity\EF.Reverse.POCO.v3.ttinclude:line 15604
   at Microsoft.VisualStudio.TextTemplatingDEBDC15C2A1B01256DC2449D523F2F823815B6CB5F3D1BE7F1795BB355D8AABD7909CEF9AAA672BDA1E697721272E3BDC836AC91B31E73DEBF8ACF10E373ED57.GeneratedTextTransformation.Generator.Init(DatabaseReader databaseReader, String singleDbContextSubNamespace) in D:\eCommerce\API\eCommerceAPI\eCommerceAPI\Entity\EF.Reverse.POCO.v3.ttinclude:line 4138
   at Microsoft.VisualStudio.TextTemplatingDEBDC15C2A1B01256DC2449D523F2F823815B6CB5F3D1BE7F1795BB355D8AABD7909CEF9AAA672BDA1E697721272E3BDC836AC91B31E73DEBF8ACF10E373ED57.GeneratedTextTransformation.GeneratorFactory.Create(FileManagementService fileManagementService, Type fileManagerType, String singleDbContextSubNamespace) in D:\eCommerce\API\eCommerceAPI\eCommerceAPI\Entity\EF.Reverse.POCO.v3.ttinclude:line 6284*/
// ------------------------------------------------------------------------------------------------

