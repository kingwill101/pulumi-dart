import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_database_args.dart';

/// A managed database resource.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2017-03-01-preview, 2018-06-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates a new managed database by restoring from an external backup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedDatabase = new AzureNative.Sql.ManagedDatabase("managedDatabase", new()
///     {
///         AutoCompleteRestore = true,
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         CreateMode = AzureNative.Sql.ManagedDatabaseCreateMode.RestoreExternalBackup,
///         DatabaseName = "managedDatabase",
///         LastBackupName = "last_backup_name",
///         Location = "southeastasia",
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         StorageContainerSasToken = "sv=2015-12-11&sr=c&sp=rl&sig=1234",
///         StorageContainerUri = "https://myaccountname.blob.core.windows.net/backups",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedDatabase(ctx, "managedDatabase", &sql.ManagedDatabaseArgs{
/// 			AutoCompleteRestore:      pulumi.Bool(true),
/// 			Collation:                pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			CreateMode:               pulumi.String(sql.ManagedDatabaseCreateModeRestoreExternalBackup),
/// 			DatabaseName:             pulumi.String("managedDatabase"),
/// 			LastBackupName:           pulumi.String("last_backup_name"),
/// 			Location:                 pulumi.String("southeastasia"),
/// 			ManagedInstanceName:      pulumi.String("managedInstance"),
/// 			ResourceGroupName:        pulumi.String("Default-SQL-SouthEastAsia"),
/// 			StorageContainerSasToken: pulumi.String("sv=2015-12-11&sr=c&sp=rl&sig=1234"),
/// 			StorageContainerUri:      pulumi.String("https://myaccountname.blob.core.windows.net/backups"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_manageddatabase" "managedDatabase" {
///   auto_complete_restore       = true
///   collation                   = "SQL_Latin1_General_CP1_CI_AS"
///   create_mode                 = "RestoreExternalBackup"
///   database_name               = "managedDatabase"
///   last_backup_name            = "last_backup_name"
///   location                    = "southeastasia"
///   managed_instance_name       = "managedInstance"
///   resource_group_name         = "Default-SQL-SouthEastAsia"
///   storage_container_sas_token = "sv=2015-12-11&sr=c&sp=rl&sig=1234"
///   storage_container_uri       = "https://myaccountname.blob.core.windows.net/backups"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ManagedDatabase;
/// import com.pulumi.azurenative.sql.ManagedDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedDatabase = new ManagedDatabase("managedDatabase", ManagedDatabaseArgs.builder()
///             .autoCompleteRestore(true)
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .createMode("RestoreExternalBackup")
///             .databaseName("managedDatabase")
///             .lastBackupName("last_backup_name")
///             .location("southeastasia")
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .storageContainerSasToken("sv=2015-12-11&sr=c&sp=rl&sig=1234")
///             .storageContainerUri("https://myaccountname.blob.core.windows.net/backups")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedDatabase = new azure_native.sql.ManagedDatabase("managedDatabase", {
///     autoCompleteRestore: true,
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     createMode: azure_native.sql.ManagedDatabaseCreateMode.RestoreExternalBackup,
///     databaseName: "managedDatabase",
///     lastBackupName: "last_backup_name",
///     location: "southeastasia",
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     storageContainerSasToken: "sv=2015-12-11&sr=c&sp=rl&sig=1234",
///     storageContainerUri: "https://myaccountname.blob.core.windows.net/backups",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_database = azure_native.sql.ManagedDatabase("managedDatabase",
///     auto_complete_restore=True,
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     create_mode=azure_native.sql.ManagedDatabaseCreateMode.RESTORE_EXTERNAL_BACKUP,
///     database_name="managedDatabase",
///     last_backup_name="last_backup_name",
///     location="southeastasia",
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     storage_container_sas_token="sv=2015-12-11&sr=c&sp=rl&sig=1234",
///     storage_container_uri="https://myaccountname.blob.core.windows.net/backups")
///
/// ```
///
/// ```yaml
/// resources:
///   managedDatabase:
///     type: azure-native:sql:ManagedDatabase
///     properties:
///       autoCompleteRestore: true
///       collation: SQL_Latin1_General_CP1_CI_AS
///       createMode: RestoreExternalBackup
///       databaseName: managedDatabase
///       lastBackupName: last_backup_name
///       location: southeastasia
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
///       storageContainerSasToken: sv=2015-12-11&sr=c&sp=rl&sig=1234
///       storageContainerUri: https://myaccountname.blob.core.windows.net/backups
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a new managed database by restoring from an external backup using managed identity
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedDatabase = new AzureNative.Sql.ManagedDatabase("managedDatabase", new()
///     {
///         AutoCompleteRestore = true,
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         CreateMode = AzureNative.Sql.ManagedDatabaseCreateMode.RestoreExternalBackup,
///         DatabaseName = "managedDatabase",
///         LastBackupName = "last_backup_name",
///         Location = "southeastasia",
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         StorageContainerIdentity = "ManagedIdentity",
///         StorageContainerUri = "https://myaccountname.blob.core.windows.net/backups",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedDatabase(ctx, "managedDatabase", &sql.ManagedDatabaseArgs{
/// 			AutoCompleteRestore:      pulumi.Bool(true),
/// 			Collation:                pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			CreateMode:               pulumi.String(sql.ManagedDatabaseCreateModeRestoreExternalBackup),
/// 			DatabaseName:             pulumi.String("managedDatabase"),
/// 			LastBackupName:           pulumi.String("last_backup_name"),
/// 			Location:                 pulumi.String("southeastasia"),
/// 			ManagedInstanceName:      pulumi.String("managedInstance"),
/// 			ResourceGroupName:        pulumi.String("Default-SQL-SouthEastAsia"),
/// 			StorageContainerIdentity: pulumi.String("ManagedIdentity"),
/// 			StorageContainerUri:      pulumi.String("https://myaccountname.blob.core.windows.net/backups"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_manageddatabase" "managedDatabase" {
///   auto_complete_restore      = true
///   collation                  = "SQL_Latin1_General_CP1_CI_AS"
///   create_mode                = "RestoreExternalBackup"
///   database_name              = "managedDatabase"
///   last_backup_name           = "last_backup_name"
///   location                   = "southeastasia"
///   managed_instance_name      = "managedInstance"
///   resource_group_name        = "Default-SQL-SouthEastAsia"
///   storage_container_identity = "ManagedIdentity"
///   storage_container_uri      = "https://myaccountname.blob.core.windows.net/backups"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ManagedDatabase;
/// import com.pulumi.azurenative.sql.ManagedDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedDatabase = new ManagedDatabase("managedDatabase", ManagedDatabaseArgs.builder()
///             .autoCompleteRestore(true)
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .createMode("RestoreExternalBackup")
///             .databaseName("managedDatabase")
///             .lastBackupName("last_backup_name")
///             .location("southeastasia")
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .storageContainerIdentity("ManagedIdentity")
///             .storageContainerUri("https://myaccountname.blob.core.windows.net/backups")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedDatabase = new azure_native.sql.ManagedDatabase("managedDatabase", {
///     autoCompleteRestore: true,
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     createMode: azure_native.sql.ManagedDatabaseCreateMode.RestoreExternalBackup,
///     databaseName: "managedDatabase",
///     lastBackupName: "last_backup_name",
///     location: "southeastasia",
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     storageContainerIdentity: "ManagedIdentity",
///     storageContainerUri: "https://myaccountname.blob.core.windows.net/backups",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_database = azure_native.sql.ManagedDatabase("managedDatabase",
///     auto_complete_restore=True,
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     create_mode=azure_native.sql.ManagedDatabaseCreateMode.RESTORE_EXTERNAL_BACKUP,
///     database_name="managedDatabase",
///     last_backup_name="last_backup_name",
///     location="southeastasia",
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     storage_container_identity="ManagedIdentity",
///     storage_container_uri="https://myaccountname.blob.core.windows.net/backups")
///
/// ```
///
/// ```yaml
/// resources:
///   managedDatabase:
///     type: azure-native:sql:ManagedDatabase
///     properties:
///       autoCompleteRestore: true
///       collation: SQL_Latin1_General_CP1_CI_AS
///       createMode: RestoreExternalBackup
///       databaseName: managedDatabase
///       lastBackupName: last_backup_name
///       location: southeastasia
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
///       storageContainerIdentity: ManagedIdentity
///       storageContainerUri: https://myaccountname.blob.core.windows.net/backups
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a new managed database from restoring a geo-replicated backup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedDatabase = new AzureNative.Sql.ManagedDatabase("managedDatabase", new()
///     {
///         CreateMode = AzureNative.Sql.ManagedDatabaseCreateMode.Recovery,
///         DatabaseName = "testdb_recovered",
///         Location = "southeastasia",
///         ManagedInstanceName = "server1",
///         RecoverableDatabaseId = "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-WestEurope/providers/Microsoft.Sql/managedInstances/testsvr/recoverableDatabases/testdb",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedDatabase(ctx, "managedDatabase", &sql.ManagedDatabaseArgs{
/// 			CreateMode:            pulumi.String(sql.ManagedDatabaseCreateModeRecovery),
/// 			DatabaseName:          pulumi.String("testdb_recovered"),
/// 			Location:              pulumi.String("southeastasia"),
/// 			ManagedInstanceName:   pulumi.String("server1"),
/// 			RecoverableDatabaseId: pulumi.String("/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-WestEurope/providers/Microsoft.Sql/managedInstances/testsvr/recoverableDatabases/testdb"),
/// 			ResourceGroupName:     pulumi.String("Default-SQL-SouthEastAsia"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_manageddatabase" "managedDatabase" {
///   create_mode             = "Recovery"
///   database_name           = "testdb_recovered"
///   location                = "southeastasia"
///   managed_instance_name   = "server1"
///   recoverable_database_id = "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-WestEurope/providers/Microsoft.Sql/managedInstances/testsvr/recoverableDatabases/testdb"
///   resource_group_name     = "Default-SQL-SouthEastAsia"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ManagedDatabase;
/// import com.pulumi.azurenative.sql.ManagedDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedDatabase = new ManagedDatabase("managedDatabase", ManagedDatabaseArgs.builder()
///             .createMode("Recovery")
///             .databaseName("testdb_recovered")
///             .location("southeastasia")
///             .managedInstanceName("server1")
///             .recoverableDatabaseId("/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-WestEurope/providers/Microsoft.Sql/managedInstances/testsvr/recoverableDatabases/testdb")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedDatabase = new azure_native.sql.ManagedDatabase("managedDatabase", {
///     createMode: azure_native.sql.ManagedDatabaseCreateMode.Recovery,
///     databaseName: "testdb_recovered",
///     location: "southeastasia",
///     managedInstanceName: "server1",
///     recoverableDatabaseId: "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-WestEurope/providers/Microsoft.Sql/managedInstances/testsvr/recoverableDatabases/testdb",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_database = azure_native.sql.ManagedDatabase("managedDatabase",
///     create_mode=azure_native.sql.ManagedDatabaseCreateMode.RECOVERY,
///     database_name="testdb_recovered",
///     location="southeastasia",
///     managed_instance_name="server1",
///     recoverable_database_id="/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-WestEurope/providers/Microsoft.Sql/managedInstances/testsvr/recoverableDatabases/testdb",
///     resource_group_name="Default-SQL-SouthEastAsia")
///
/// ```
///
/// ```yaml
/// resources:
///   managedDatabase:
///     type: azure-native:sql:ManagedDatabase
///     properties:
///       createMode: Recovery
///       databaseName: testdb_recovered
///       location: southeastasia
///       managedInstanceName: server1
///       recoverableDatabaseId: /subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-WestEurope/providers/Microsoft.Sql/managedInstances/testsvr/recoverableDatabases/testdb
///       resourceGroupName: Default-SQL-SouthEastAsia
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a new managed database from restoring a long term retention backup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedDatabase = new AzureNative.Sql.ManagedDatabase("managedDatabase", new()
///     {
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         CreateMode = AzureNative.Sql.ManagedDatabaseCreateMode.RestoreExternalBackup,
///         DatabaseName = "managedDatabase",
///         Location = "southeastasia",
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         StorageContainerSasToken = "sv=2015-12-11&sr=c&sp=rl&sig=1234",
///         StorageContainerUri = "https://myaccountname.blob.core.windows.net/backups",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedDatabase(ctx, "managedDatabase", &sql.ManagedDatabaseArgs{
/// 			Collation:                pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			CreateMode:               pulumi.String(sql.ManagedDatabaseCreateModeRestoreExternalBackup),
/// 			DatabaseName:             pulumi.String("managedDatabase"),
/// 			Location:                 pulumi.String("southeastasia"),
/// 			ManagedInstanceName:      pulumi.String("managedInstance"),
/// 			ResourceGroupName:        pulumi.String("Default-SQL-SouthEastAsia"),
/// 			StorageContainerSasToken: pulumi.String("sv=2015-12-11&sr=c&sp=rl&sig=1234"),
/// 			StorageContainerUri:      pulumi.String("https://myaccountname.blob.core.windows.net/backups"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_manageddatabase" "managedDatabase" {
///   collation                   = "SQL_Latin1_General_CP1_CI_AS"
///   create_mode                 = "RestoreExternalBackup"
///   database_name               = "managedDatabase"
///   location                    = "southeastasia"
///   managed_instance_name       = "managedInstance"
///   resource_group_name         = "Default-SQL-SouthEastAsia"
///   storage_container_sas_token = "sv=2015-12-11&sr=c&sp=rl&sig=1234"
///   storage_container_uri       = "https://myaccountname.blob.core.windows.net/backups"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ManagedDatabase;
/// import com.pulumi.azurenative.sql.ManagedDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedDatabase = new ManagedDatabase("managedDatabase", ManagedDatabaseArgs.builder()
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .createMode("RestoreExternalBackup")
///             .databaseName("managedDatabase")
///             .location("southeastasia")
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .storageContainerSasToken("sv=2015-12-11&sr=c&sp=rl&sig=1234")
///             .storageContainerUri("https://myaccountname.blob.core.windows.net/backups")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedDatabase = new azure_native.sql.ManagedDatabase("managedDatabase", {
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     createMode: azure_native.sql.ManagedDatabaseCreateMode.RestoreExternalBackup,
///     databaseName: "managedDatabase",
///     location: "southeastasia",
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     storageContainerSasToken: "sv=2015-12-11&sr=c&sp=rl&sig=1234",
///     storageContainerUri: "https://myaccountname.blob.core.windows.net/backups",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_database = azure_native.sql.ManagedDatabase("managedDatabase",
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     create_mode=azure_native.sql.ManagedDatabaseCreateMode.RESTORE_EXTERNAL_BACKUP,
///     database_name="managedDatabase",
///     location="southeastasia",
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     storage_container_sas_token="sv=2015-12-11&sr=c&sp=rl&sig=1234",
///     storage_container_uri="https://myaccountname.blob.core.windows.net/backups")
///
/// ```
///
/// ```yaml
/// resources:
///   managedDatabase:
///     type: azure-native:sql:ManagedDatabase
///     properties:
///       collation: SQL_Latin1_General_CP1_CI_AS
///       createMode: RestoreExternalBackup
///       databaseName: managedDatabase
///       location: southeastasia
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
///       storageContainerSasToken: sv=2015-12-11&sr=c&sp=rl&sig=1234
///       storageContainerUri: https://myaccountname.blob.core.windows.net/backups
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a new managed database using cross subscription point in time restore
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedDatabase = new AzureNative.Sql.ManagedDatabase("managedDatabase", new()
///     {
///         CreateMode = AzureNative.Sql.ManagedDatabaseCreateMode.PointInTimeRestore,
///         CrossSubscriptionSourceDatabaseId = "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr2/databases/testdb",
///         CrossSubscriptionTargetManagedInstanceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr",
///         DatabaseName = "managedDatabase",
///         Location = "southeastasia",
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         RestorePointInTime = "2017-07-14T05:35:31.503Z",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedDatabase(ctx, "managedDatabase", &sql.ManagedDatabaseArgs{
/// 			CreateMode:                               pulumi.String(sql.ManagedDatabaseCreateModePointInTimeRestore),
/// 			CrossSubscriptionSourceDatabaseId:        pulumi.String("/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr2/databases/testdb"),
/// 			CrossSubscriptionTargetManagedInstanceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr"),
/// 			DatabaseName:                             pulumi.String("managedDatabase"),
/// 			Location:                                 pulumi.String("southeastasia"),
/// 			ManagedInstanceName:                      pulumi.String("managedInstance"),
/// 			ResourceGroupName:                        pulumi.String("Default-SQL-SouthEastAsia"),
/// 			RestorePointInTime:                       pulumi.String("2017-07-14T05:35:31.503Z"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_manageddatabase" "managedDatabase" {
///   create_mode                                   = "PointInTimeRestore"
///   cross_subscription_source_database_id         = "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr2/databases/testdb"
///   cross_subscription_target_managed_instance_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr"
///   database_name                                 = "managedDatabase"
///   location                                      = "southeastasia"
///   managed_instance_name                         = "managedInstance"
///   resource_group_name                           = "Default-SQL-SouthEastAsia"
///   restore_point_in_time                         = "2017-07-14T05:35:31.503Z"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ManagedDatabase;
/// import com.pulumi.azurenative.sql.ManagedDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedDatabase = new ManagedDatabase("managedDatabase", ManagedDatabaseArgs.builder()
///             .createMode("PointInTimeRestore")
///             .crossSubscriptionSourceDatabaseId("/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr2/databases/testdb")
///             .crossSubscriptionTargetManagedInstanceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr")
///             .databaseName("managedDatabase")
///             .location("southeastasia")
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .restorePointInTime("2017-07-14T05:35:31.503Z")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedDatabase = new azure_native.sql.ManagedDatabase("managedDatabase", {
///     createMode: azure_native.sql.ManagedDatabaseCreateMode.PointInTimeRestore,
///     crossSubscriptionSourceDatabaseId: "/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr2/databases/testdb",
///     crossSubscriptionTargetManagedInstanceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr",
///     databaseName: "managedDatabase",
///     location: "southeastasia",
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     restorePointInTime: "2017-07-14T05:35:31.503Z",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_database = azure_native.sql.ManagedDatabase("managedDatabase",
///     create_mode=azure_native.sql.ManagedDatabaseCreateMode.POINT_IN_TIME_RESTORE,
///     cross_subscription_source_database_id="/subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr2/databases/testdb",
///     cross_subscription_target_managed_instance_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr",
///     database_name="managedDatabase",
///     location="southeastasia",
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     restore_point_in_time="2017-07-14T05:35:31.503Z")
///
/// ```
///
/// ```yaml
/// resources:
///   managedDatabase:
///     type: azure-native:sql:ManagedDatabase
///     properties:
///       createMode: PointInTimeRestore
///       crossSubscriptionSourceDatabaseId: /subscriptions/11111111-2222-3333-4444-555555555555/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr2/databases/testdb
///       crossSubscriptionTargetManagedInstanceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr
///       databaseName: managedDatabase
///       location: southeastasia
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
///       restorePointInTime: 2017-07-14T05:35:31.503Z
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a new managed database using point in time restore
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedDatabase = new AzureNative.Sql.ManagedDatabase("managedDatabase", new()
///     {
///         CreateMode = AzureNative.Sql.ManagedDatabaseCreateMode.PointInTimeRestore,
///         DatabaseName = "managedDatabase",
///         Location = "southeastasia",
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         RestorePointInTime = "2017-07-14T05:35:31.503Z",
///         SourceDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr/databases/testdb",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedDatabase(ctx, "managedDatabase", &sql.ManagedDatabaseArgs{
/// 			CreateMode:          pulumi.String(sql.ManagedDatabaseCreateModePointInTimeRestore),
/// 			DatabaseName:        pulumi.String("managedDatabase"),
/// 			Location:            pulumi.String("southeastasia"),
/// 			ManagedInstanceName: pulumi.String("managedInstance"),
/// 			ResourceGroupName:   pulumi.String("Default-SQL-SouthEastAsia"),
/// 			RestorePointInTime:  pulumi.String("2017-07-14T05:35:31.503Z"),
/// 			SourceDatabaseId:    pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr/databases/testdb"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_manageddatabase" "managedDatabase" {
///   create_mode           = "PointInTimeRestore"
///   database_name         = "managedDatabase"
///   location              = "southeastasia"
///   managed_instance_name = "managedInstance"
///   resource_group_name   = "Default-SQL-SouthEastAsia"
///   restore_point_in_time = "2017-07-14T05:35:31.503Z"
///   source_database_id    = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr/databases/testdb"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ManagedDatabase;
/// import com.pulumi.azurenative.sql.ManagedDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedDatabase = new ManagedDatabase("managedDatabase", ManagedDatabaseArgs.builder()
///             .createMode("PointInTimeRestore")
///             .databaseName("managedDatabase")
///             .location("southeastasia")
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .restorePointInTime("2017-07-14T05:35:31.503Z")
///             .sourceDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr/databases/testdb")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedDatabase = new azure_native.sql.ManagedDatabase("managedDatabase", {
///     createMode: azure_native.sql.ManagedDatabaseCreateMode.PointInTimeRestore,
///     databaseName: "managedDatabase",
///     location: "southeastasia",
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     restorePointInTime: "2017-07-14T05:35:31.503Z",
///     sourceDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr/databases/testdb",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_database = azure_native.sql.ManagedDatabase("managedDatabase",
///     create_mode=azure_native.sql.ManagedDatabaseCreateMode.POINT_IN_TIME_RESTORE,
///     database_name="managedDatabase",
///     location="southeastasia",
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     restore_point_in_time="2017-07-14T05:35:31.503Z",
///     source_database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr/databases/testdb")
///
/// ```
///
/// ```yaml
/// resources:
///   managedDatabase:
///     type: azure-native:sql:ManagedDatabase
///     properties:
///       createMode: PointInTimeRestore
///       databaseName: managedDatabase
///       location: southeastasia
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
///       restorePointInTime: 2017-07-14T05:35:31.503Z
///       sourceDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/managedInstances/testsvr/databases/testdb
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a new managed database with ledger on.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedDatabase = new AzureNative.Sql.ManagedDatabase("managedDatabase", new()
///     {
///         DatabaseName = "managedDatabase",
///         IsLedgerOn = true,
///         Location = "southeastasia",
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedDatabase(ctx, "managedDatabase", &sql.ManagedDatabaseArgs{
/// 			DatabaseName:        pulumi.String("managedDatabase"),
/// 			IsLedgerOn:          pulumi.Bool(true),
/// 			Location:            pulumi.String("southeastasia"),
/// 			ManagedInstanceName: pulumi.String("managedInstance"),
/// 			ResourceGroupName:   pulumi.String("Default-SQL-SouthEastAsia"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_manageddatabase" "managedDatabase" {
///   database_name         = "managedDatabase"
///   is_ledger_on          = true
///   location              = "southeastasia"
///   managed_instance_name = "managedInstance"
///   resource_group_name   = "Default-SQL-SouthEastAsia"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ManagedDatabase;
/// import com.pulumi.azurenative.sql.ManagedDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedDatabase = new ManagedDatabase("managedDatabase", ManagedDatabaseArgs.builder()
///             .databaseName("managedDatabase")
///             .isLedgerOn(true)
///             .location("southeastasia")
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedDatabase = new azure_native.sql.ManagedDatabase("managedDatabase", {
///     databaseName: "managedDatabase",
///     isLedgerOn: true,
///     location: "southeastasia",
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_database = azure_native.sql.ManagedDatabase("managedDatabase",
///     database_name="managedDatabase",
///     is_ledger_on=True,
///     location="southeastasia",
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia")
///
/// ```
///
/// ```yaml
/// resources:
///   managedDatabase:
///     type: azure-native:sql:ManagedDatabase
///     properties:
///       databaseName: managedDatabase
///       isLedgerOn: true
///       location: southeastasia
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a new managed database with maximal properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedDatabase = new AzureNative.Sql.ManagedDatabase("managedDatabase", new()
///     {
///         DatabaseName = "managedDatabase",
///         Location = "southeastasia",
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         Tags =
///         {
///             { "tagKey1", "TagValue1" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedDatabase(ctx, "managedDatabase", &sql.ManagedDatabaseArgs{
/// 			DatabaseName:        pulumi.String("managedDatabase"),
/// 			Location:            pulumi.String("southeastasia"),
/// 			ManagedInstanceName: pulumi.String("managedInstance"),
/// 			ResourceGroupName:   pulumi.String("Default-SQL-SouthEastAsia"),
/// 			Tags: pulumi.StringMap{
/// 				"tagKey1": pulumi.String("TagValue1"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_manageddatabase" "managedDatabase" {
///   database_name         = "managedDatabase"
///   location              = "southeastasia"
///   managed_instance_name = "managedInstance"
///   resource_group_name   = "Default-SQL-SouthEastAsia"
///   tags = {
///     "tagKey1" = "TagValue1"
///   }
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ManagedDatabase;
/// import com.pulumi.azurenative.sql.ManagedDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedDatabase = new ManagedDatabase("managedDatabase", ManagedDatabaseArgs.builder()
///             .databaseName("managedDatabase")
///             .location("southeastasia")
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .tags(Map.of("tagKey1", "TagValue1"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedDatabase = new azure_native.sql.ManagedDatabase("managedDatabase", {
///     databaseName: "managedDatabase",
///     location: "southeastasia",
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     tags: {
///         tagKey1: "TagValue1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_database = azure_native.sql.ManagedDatabase("managedDatabase",
///     database_name="managedDatabase",
///     location="southeastasia",
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     tags={
///         "tagKey1": "TagValue1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   managedDatabase:
///     type: azure-native:sql:ManagedDatabase
///     properties:
///       databaseName: managedDatabase
///       location: southeastasia
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
///       tags:
///         tagKey1: TagValue1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a new managed database with minimal properties
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var managedDatabase = new AzureNative.Sql.ManagedDatabase("managedDatabase", new()
///     {
///         DatabaseName = "managedDatabase",
///         Location = "southeastasia",
///         ManagedInstanceName = "managedInstance",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	sql "github.com/pulumi/pulumi-azure-native-sdk/sql/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sql.NewManagedDatabase(ctx, "managedDatabase", &sql.ManagedDatabaseArgs{
/// 			DatabaseName:        pulumi.String("managedDatabase"),
/// 			Location:            pulumi.String("southeastasia"),
/// 			ManagedInstanceName: pulumi.String("managedInstance"),
/// 			ResourceGroupName:   pulumi.String("Default-SQL-SouthEastAsia"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_sql_manageddatabase" "managedDatabase" {
///   database_name         = "managedDatabase"
///   location              = "southeastasia"
///   managed_instance_name = "managedInstance"
///   resource_group_name   = "Default-SQL-SouthEastAsia"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.ManagedDatabase;
/// import com.pulumi.azurenative.sql.ManagedDatabaseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var managedDatabase = new ManagedDatabase("managedDatabase", ManagedDatabaseArgs.builder()
///             .databaseName("managedDatabase")
///             .location("southeastasia")
///             .managedInstanceName("managedInstance")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const managedDatabase = new azure_native.sql.ManagedDatabase("managedDatabase", {
///     databaseName: "managedDatabase",
///     location: "southeastasia",
///     managedInstanceName: "managedInstance",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// managed_database = azure_native.sql.ManagedDatabase("managedDatabase",
///     database_name="managedDatabase",
///     location="southeastasia",
///     managed_instance_name="managedInstance",
///     resource_group_name="Default-SQL-SouthEastAsia")
///
/// ```
///
/// ```yaml
/// resources:
///   managedDatabase:
///     type: azure-native:sql:ManagedDatabase
///     properties:
///       databaseName: managedDatabase
///       location: southeastasia
///       managedInstanceName: managedInstance
///       resourceGroupName: Default-SQL-SouthEastAsia
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:sql:ManagedDatabase testdb1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/managedInstances/{managedInstanceName}/databases/{databaseName}
/// ```
class ManagedDatabase extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Collation of the metadata catalog.
  late final pulumi.Output<String?> catalogCollation;
  /// Collation of the managed database.
  late final pulumi.Output<String?> collation;
  /// Creation date of the database.
  late final pulumi.Output<String> creationDate;
  /// Geo paired region.
  late final pulumi.Output<String> defaultSecondaryLocation;
  /// Earliest restore point in time for point in time restore.
  late final pulumi.Output<String> earliestRestorePoint;
  /// Instance Failover Group resource identifier that this managed database belongs to.
  late final pulumi.Output<String> failoverGroupId;
  /// Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  late final pulumi.Output<bool?> isLedgerOn;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Status of the database.
  late final pulumi.Output<String> status;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ManagedDatabase].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedDatabase]. {@macro pulumi_sql_managed_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedDatabase(
    String name, {
    ManagedDatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:ManagedDatabase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    catalogCollation = registerOutput<String?>('catalogCollation');
    collation = registerOutput<String?>('collation');
    creationDate = registerOutput<String>('creationDate');
    defaultSecondaryLocation = registerOutput<String>('defaultSecondaryLocation');
    earliestRestorePoint = registerOutput<String>('earliestRestorePoint');
    failoverGroupId = registerOutput<String>('failoverGroupId');
    isLedgerOn = registerOutput<bool?>('isLedgerOn');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
