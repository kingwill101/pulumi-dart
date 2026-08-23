import 'package:pulumi/pulumi.dart' as pulumi;
import 'database_args.dart';
import 'database_identity_response.dart';
import 'database_key_response.dart';
import 'sku_response.dart';

/// A database resource.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2014-04-01, 2017-03-01-preview, 2017-10-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates a VCore database by specifying service objective name.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Family = "Gen4",
///             Name = "BC",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			DatabaseName:      pulumi.String("testdb"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:        pulumi.String("testsvr"),
/// 			Sku: &sql.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Family:   pulumi.String("Gen4"),
/// 				Name:     pulumi.String("BC"),
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
/// resource "azure-native_sql_database" "database" {
///   database_name       = "testdb"
///   location            = "southeastasia"
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   server_name         = "testsvr"
///   sku = {
///     capacity = 2
///     family   = "Gen4"
///     name     = "BC"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .databaseName("testdb")
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .family("Gen4")
///                 .name("BC")
///                 .build())
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
/// const database = new azure_native.sql.Database("database", {
///     databaseName: "testdb",
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     sku: {
///         capacity: 2,
///         family: "Gen4",
///         name: "BC",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     database_name="testdb",
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     sku={
///         "capacity": 2,
///         "family": "Gen4",
///         "name": "BC",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       databaseName: testdb
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       sku:
///         capacity: 2
///         family: Gen4
///         name: BC
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a VCore database by specifying sku name and capacity.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Name = "BC_Gen4",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			DatabaseName:      pulumi.String("testdb"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:        pulumi.String("testsvr"),
/// 			Sku: &sql.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String("BC_Gen4"),
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
/// resource "azure-native_sql_database" "database" {
///   database_name       = "testdb"
///   location            = "southeastasia"
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   server_name         = "testsvr"
///   sku = {
///     capacity = 2
///     name     = "BC_Gen4"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .databaseName("testdb")
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .name("BC_Gen4")
///                 .build())
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
/// const database = new azure_native.sql.Database("database", {
///     databaseName: "testdb",
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     sku: {
///         capacity: 2,
///         name: "BC_Gen4",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     database_name="testdb",
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     sku={
///         "capacity": 2,
///         "name": "BC_Gen4",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       databaseName: testdb
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       sku:
///         capacity: 2
///         name: BC_Gen4
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a data warehouse database as a cross-subscription restore from a backup of a dropped database.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         CreateMode = AzureNative.Sql.CreateMode.Restore,
///         DatabaseName = "testdw",
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         SourceResourceId = "/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/restorableDroppedDatabases/srcdw,131403269876900000",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			CreateMode:        pulumi.String(sql.CreateModeRestore),
/// 			DatabaseName:      pulumi.String("testdw"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:        pulumi.String("testsvr"),
/// 			SourceResourceId:  pulumi.String("/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/restorableDroppedDatabases/srcdw,131403269876900000"),
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
/// resource "azure-native_sql_database" "database" {
///   create_mode         = "Restore"
///   database_name       = "testdw"
///   location            = "southeastasia"
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   server_name         = "testsvr"
///   source_resource_id  = "/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/restorableDroppedDatabases/srcdw,131403269876900000"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .createMode("Restore")
///             .databaseName("testdw")
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .sourceResourceId("/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/restorableDroppedDatabases/srcdw,131403269876900000")
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
/// const database = new azure_native.sql.Database("database", {
///     createMode: azure_native.sql.CreateMode.Restore,
///     databaseName: "testdw",
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     sourceResourceId: "/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/restorableDroppedDatabases/srcdw,131403269876900000",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     create_mode=azure_native.sql.CreateMode.RESTORE,
///     database_name="testdw",
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     source_resource_id="/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/restorableDroppedDatabases/srcdw,131403269876900000")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       createMode: Restore
///       databaseName: testdw
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       sourceResourceId: /subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/restorableDroppedDatabases/srcdw,131403269876900000
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a data warehouse database as a cross-subscription restore from a geo-backup.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         CreateMode = AzureNative.Sql.CreateMode.Recovery,
///         DatabaseName = "testdw",
///         Location = "westus",
///         ResourceGroupName = "Default-SQL-WestUS",
///         ServerName = "testsvr",
///         SourceResourceId = "/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-EastUS/providers/Microsoft.Sql/servers/srcsvr/recoverabledatabases/srcdw",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			CreateMode:        pulumi.String(sql.CreateModeRecovery),
/// 			DatabaseName:      pulumi.String("testdw"),
/// 			Location:          pulumi.String("westus"),
/// 			ResourceGroupName: pulumi.String("Default-SQL-WestUS"),
/// 			ServerName:        pulumi.String("testsvr"),
/// 			SourceResourceId:  pulumi.String("/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-EastUS/providers/Microsoft.Sql/servers/srcsvr/recoverabledatabases/srcdw"),
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
/// resource "azure-native_sql_database" "database" {
///   create_mode         = "Recovery"
///   database_name       = "testdw"
///   location            = "westus"
///   resource_group_name = "Default-SQL-WestUS"
///   server_name         = "testsvr"
///   source_resource_id  = "/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-EastUS/providers/Microsoft.Sql/servers/srcsvr/recoverabledatabases/srcdw"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .createMode("Recovery")
///             .databaseName("testdw")
///             .location("westus")
///             .resourceGroupName("Default-SQL-WestUS")
///             .serverName("testsvr")
///             .sourceResourceId("/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-EastUS/providers/Microsoft.Sql/servers/srcsvr/recoverabledatabases/srcdw")
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
/// const database = new azure_native.sql.Database("database", {
///     createMode: azure_native.sql.CreateMode.Recovery,
///     databaseName: "testdw",
///     location: "westus",
///     resourceGroupName: "Default-SQL-WestUS",
///     serverName: "testsvr",
///     sourceResourceId: "/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-EastUS/providers/Microsoft.Sql/servers/srcsvr/recoverabledatabases/srcdw",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     create_mode=azure_native.sql.CreateMode.RECOVERY,
///     database_name="testdw",
///     location="westus",
///     resource_group_name="Default-SQL-WestUS",
///     server_name="testsvr",
///     source_resource_id="/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-EastUS/providers/Microsoft.Sql/servers/srcsvr/recoverabledatabases/srcdw")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       createMode: Recovery
///       databaseName: testdw
///       location: westus
///       resourceGroupName: Default-SQL-WestUS
///       serverName: testsvr
///       sourceResourceId: /subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-EastUS/providers/Microsoft.Sql/servers/srcsvr/recoverabledatabases/srcdw
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a data warehouse database as a cross-subscription restore from a restore point of an existing database.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         CreateMode = AzureNative.Sql.CreateMode.PointInTimeRestore,
///         DatabaseName = "testdw",
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         RestorePointInTime = "2022-01-22T05:35:31.503Z",
///         ServerName = "testsvr",
///         SourceResourceId = "/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/databases/srcdw",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			CreateMode:         pulumi.String(sql.CreateModePointInTimeRestore),
/// 			DatabaseName:       pulumi.String("testdw"),
/// 			Location:           pulumi.String("southeastasia"),
/// 			ResourceGroupName:  pulumi.String("Default-SQL-SouthEastAsia"),
/// 			RestorePointInTime: pulumi.String("2022-01-22T05:35:31.503Z"),
/// 			ServerName:         pulumi.String("testsvr"),
/// 			SourceResourceId:   pulumi.String("/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/databases/srcdw"),
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
/// resource "azure-native_sql_database" "database" {
///   create_mode           = "PointInTimeRestore"
///   database_name         = "testdw"
///   location              = "southeastasia"
///   resource_group_name   = "Default-SQL-SouthEastAsia"
///   restore_point_in_time = "2022-01-22T05:35:31.503Z"
///   server_name           = "testsvr"
///   source_resource_id    = "/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/databases/srcdw"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .createMode("PointInTimeRestore")
///             .databaseName("testdw")
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .restorePointInTime("2022-01-22T05:35:31.503Z")
///             .serverName("testsvr")
///             .sourceResourceId("/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/databases/srcdw")
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
/// const database = new azure_native.sql.Database("database", {
///     createMode: azure_native.sql.CreateMode.PointInTimeRestore,
///     databaseName: "testdw",
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     restorePointInTime: "2022-01-22T05:35:31.503Z",
///     serverName: "testsvr",
///     sourceResourceId: "/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/databases/srcdw",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     create_mode=azure_native.sql.CreateMode.POINT_IN_TIME_RESTORE,
///     database_name="testdw",
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     restore_point_in_time="2022-01-22T05:35:31.503Z",
///     server_name="testsvr",
///     source_resource_id="/subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/databases/srcdw")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       createMode: PointInTimeRestore
///       databaseName: testdw
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       restorePointInTime: 2022-01-22T05:35:31.503Z
///       serverName: testsvr
///       sourceResourceId: /subscriptions/55555555-6666-7777-8888-999999999999/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/srcsvr/databases/srcdw
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database as a copy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         CreateMode = AzureNative.Sql.CreateMode.Copy,
///         DatabaseName = "dbcopy",
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "S0",
///             Tier = "Standard",
///         },
///         SourceDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			CreateMode:        pulumi.String(sql.CreateModeCopy),
/// 			DatabaseName:      pulumi.String("dbcopy"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:        pulumi.String("testsvr"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("S0"),
/// 				Tier: pulumi.String("Standard"),
/// 			},
/// 			SourceDatabaseId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb"),
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
/// resource "azure-native_sql_database" "database" {
///   create_mode         = "Copy"
///   database_name       = "dbcopy"
///   location            = "southeastasia"
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   server_name         = "testsvr"
///   sku = {
///     name = "S0"
///     tier = "Standard"
///   }
///   source_database_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .createMode("Copy")
///             .databaseName("dbcopy")
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .tier("Standard")
///                 .build())
///             .sourceDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb")
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
/// const database = new azure_native.sql.Database("database", {
///     createMode: azure_native.sql.CreateMode.Copy,
///     databaseName: "dbcopy",
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     sku: {
///         name: "S0",
///         tier: "Standard",
///     },
///     sourceDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     create_mode=azure_native.sql.CreateMode.COPY,
///     database_name="dbcopy",
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     sku={
///         "name": "S0",
///         "tier": "Standard",
///     },
///     source_database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       createMode: Copy
///       databaseName: dbcopy
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       sku:
///         name: S0
///         tier: Standard
///       sourceDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SouthEastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database as a standby secondary.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         CreateMode = AzureNative.Sql.CreateMode.Secondary,
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         SecondaryType = AzureNative.Sql.SecondaryType.Standby,
///         ServerName = "testsvr",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "S0",
///             Tier = "Standard",
///         },
///         SourceDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			CreateMode:        pulumi.String(sql.CreateModeSecondary),
/// 			DatabaseName:      pulumi.String("testdb"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			SecondaryType:     pulumi.String(sql.SecondaryTypeStandby),
/// 			ServerName:        pulumi.String("testsvr"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("S0"),
/// 				Tier: pulumi.String("Standard"),
/// 			},
/// 			SourceDatabaseId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb"),
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
/// resource "azure-native_sql_database" "database" {
///   create_mode         = "Secondary"
///   database_name       = "testdb"
///   location            = "southeastasia"
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   secondary_type      = "Standby"
///   server_name         = "testsvr"
///   sku = {
///     name = "S0"
///     tier = "Standard"
///   }
///   source_database_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .createMode("Secondary")
///             .databaseName("testdb")
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .secondaryType("Standby")
///             .serverName("testsvr")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .tier("Standard")
///                 .build())
///             .sourceDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb")
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
/// const database = new azure_native.sql.Database("database", {
///     createMode: azure_native.sql.CreateMode.Secondary,
///     databaseName: "testdb",
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     secondaryType: azure_native.sql.SecondaryType.Standby,
///     serverName: "testsvr",
///     sku: {
///         name: "S0",
///         tier: "Standard",
///     },
///     sourceDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     create_mode=azure_native.sql.CreateMode.SECONDARY,
///     database_name="testdb",
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     secondary_type=azure_native.sql.SecondaryType.STANDBY,
///     server_name="testsvr",
///     sku={
///         "name": "S0",
///         "tier": "Standard",
///     },
///     source_database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       createMode: Secondary
///       databaseName: testdb
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       secondaryType: Standby
///       serverName: testsvr
///       sku:
///         name: S0
///         tier: Standard
///       sourceDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database as an on-line secondary.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         CreateMode = AzureNative.Sql.CreateMode.Secondary,
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         SecondaryType = AzureNative.Sql.SecondaryType.Geo,
///         ServerName = "testsvr",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "S0",
///             Tier = "Standard",
///         },
///         SourceDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			CreateMode:        pulumi.String(sql.CreateModeSecondary),
/// 			DatabaseName:      pulumi.String("testdb"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			SecondaryType:     pulumi.String(sql.SecondaryTypeGeo),
/// 			ServerName:        pulumi.String("testsvr"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("S0"),
/// 				Tier: pulumi.String("Standard"),
/// 			},
/// 			SourceDatabaseId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb"),
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
/// resource "azure-native_sql_database" "database" {
///   create_mode         = "Secondary"
///   database_name       = "testdb"
///   location            = "southeastasia"
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   secondary_type      = "Geo"
///   server_name         = "testsvr"
///   sku = {
///     name = "S0"
///     tier = "Standard"
///   }
///   source_database_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .createMode("Secondary")
///             .databaseName("testdb")
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .secondaryType("Geo")
///             .serverName("testsvr")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .tier("Standard")
///                 .build())
///             .sourceDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb")
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
/// const database = new azure_native.sql.Database("database", {
///     createMode: azure_native.sql.CreateMode.Secondary,
///     databaseName: "testdb",
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     secondaryType: azure_native.sql.SecondaryType.Geo,
///     serverName: "testsvr",
///     sku: {
///         name: "S0",
///         tier: "Standard",
///     },
///     sourceDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     create_mode=azure_native.sql.CreateMode.SECONDARY,
///     database_name="testdb",
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     secondary_type=azure_native.sql.SecondaryType.GEO,
///     server_name="testsvr",
///     sku={
///         "name": "S0",
///         "tier": "Standard",
///     },
///     source_database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       createMode: Secondary
///       databaseName: testdb
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       secondaryType: Geo
///       serverName: testsvr
///       sku:
///         name: S0
///         tier: Standard
///       sourceDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/testdb
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database as named replica secondary.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         CreateMode = AzureNative.Sql.CreateMode.Secondary,
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         SecondaryType = AzureNative.Sql.SecondaryType.Named,
///         ServerName = "testsvr",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Capacity = 2,
///             Name = "HS_Gen4",
///             Tier = "Hyperscale",
///         },
///         SourceDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/primarydb",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			CreateMode:        pulumi.String(sql.CreateModeSecondary),
/// 			DatabaseName:      pulumi.String("testdb"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			SecondaryType:     pulumi.String(sql.SecondaryTypeNamed),
/// 			ServerName:        pulumi.String("testsvr"),
/// 			Sku: &sql.SkuArgs{
/// 				Capacity: pulumi.Int(2),
/// 				Name:     pulumi.String("HS_Gen4"),
/// 				Tier:     pulumi.String("Hyperscale"),
/// 			},
/// 			SourceDatabaseId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/primarydb"),
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
/// resource "azure-native_sql_database" "database" {
///   create_mode         = "Secondary"
///   database_name       = "testdb"
///   location            = "southeastasia"
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   secondary_type      = "Named"
///   server_name         = "testsvr"
///   sku = {
///     capacity = 2
///     name     = "HS_Gen4"
///     tier     = "Hyperscale"
///   }
///   source_database_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/primarydb"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .createMode("Secondary")
///             .databaseName("testdb")
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .secondaryType("Named")
///             .serverName("testsvr")
///             .sku(SkuArgs.builder()
///                 .capacity(2)
///                 .name("HS_Gen4")
///                 .tier("Hyperscale")
///                 .build())
///             .sourceDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/primarydb")
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
/// const database = new azure_native.sql.Database("database", {
///     createMode: azure_native.sql.CreateMode.Secondary,
///     databaseName: "testdb",
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     secondaryType: azure_native.sql.SecondaryType.Named,
///     serverName: "testsvr",
///     sku: {
///         capacity: 2,
///         name: "HS_Gen4",
///         tier: "Hyperscale",
///     },
///     sourceDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/primarydb",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     create_mode=azure_native.sql.CreateMode.SECONDARY,
///     database_name="testdb",
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     secondary_type=azure_native.sql.SecondaryType.NAMED,
///     server_name="testsvr",
///     sku={
///         "capacity": 2,
///         "name": "HS_Gen4",
///         "tier": "Hyperscale",
///     },
///     source_database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/primarydb")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       createMode: Secondary
///       databaseName: testdb
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       secondaryType: Named
///       serverName: testsvr
///       sku:
///         capacity: 2
///         name: HS_Gen4
///         tier: Hyperscale
///       sourceDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-NorthEurope/providers/Microsoft.Sql/servers/testsvr1/databases/primarydb
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database from PointInTimeRestore.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         CreateMode = AzureNative.Sql.CreateMode.PointInTimeRestore,
///         DatabaseName = "dbpitr",
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         RestorePointInTime = "2020-10-22T05:35:31.503Z",
///         ServerName = "testsvr",
///         SourceDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SoutheastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			CreateMode:         pulumi.String(sql.CreateModePointInTimeRestore),
/// 			DatabaseName:       pulumi.String("dbpitr"),
/// 			Location:           pulumi.String("southeastasia"),
/// 			ResourceGroupName:  pulumi.String("Default-SQL-SouthEastAsia"),
/// 			RestorePointInTime: pulumi.String("2020-10-22T05:35:31.503Z"),
/// 			ServerName:         pulumi.String("testsvr"),
/// 			SourceDatabaseId:   pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SoutheastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb"),
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
/// resource "azure-native_sql_database" "database" {
///   create_mode           = "PointInTimeRestore"
///   database_name         = "dbpitr"
///   location              = "southeastasia"
///   resource_group_name   = "Default-SQL-SouthEastAsia"
///   restore_point_in_time = "2020-10-22T05:35:31.503Z"
///   server_name           = "testsvr"
///   source_database_id    = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SoutheastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .createMode("PointInTimeRestore")
///             .databaseName("dbpitr")
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .restorePointInTime("2020-10-22T05:35:31.503Z")
///             .serverName("testsvr")
///             .sourceDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SoutheastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb")
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
/// const database = new azure_native.sql.Database("database", {
///     createMode: azure_native.sql.CreateMode.PointInTimeRestore,
///     databaseName: "dbpitr",
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     restorePointInTime: "2020-10-22T05:35:31.503Z",
///     serverName: "testsvr",
///     sourceDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SoutheastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     create_mode=azure_native.sql.CreateMode.POINT_IN_TIME_RESTORE,
///     database_name="dbpitr",
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     restore_point_in_time="2020-10-22T05:35:31.503Z",
///     server_name="testsvr",
///     source_database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SoutheastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       createMode: PointInTimeRestore
///       databaseName: dbpitr
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       restorePointInTime: 2020-10-22T05:35:31.503Z
///       serverName: testsvr
///       sourceDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-SoutheastAsia/providers/Microsoft.Sql/servers/testsvr/databases/testdb
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database with Default enclave type.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         PreferredEnclaveType = AzureNative.Sql.AlwaysEncryptedEnclaveType.Default,
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			DatabaseName:         pulumi.String("testdb"),
/// 			Location:             pulumi.String("southeastasia"),
/// 			PreferredEnclaveType: pulumi.String(sql.AlwaysEncryptedEnclaveTypeDefault),
/// 			ResourceGroupName:    pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:           pulumi.String("testsvr"),
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
/// resource "azure-native_sql_database" "database" {
///   database_name          = "testdb"
///   location               = "southeastasia"
///   preferred_enclave_type = "Default"
///   resource_group_name    = "Default-SQL-SouthEastAsia"
///   server_name            = "testsvr"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .databaseName("testdb")
///             .location("southeastasia")
///             .preferredEnclaveType("Default")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
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
/// const database = new azure_native.sql.Database("database", {
///     databaseName: "testdb",
///     location: "southeastasia",
///     preferredEnclaveType: azure_native.sql.AlwaysEncryptedEnclaveType.Default,
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     database_name="testdb",
///     location="southeastasia",
///     preferred_enclave_type=azure_native.sql.AlwaysEncryptedEnclaveType.DEFAULT,
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       databaseName: testdb
///       location: southeastasia
///       preferredEnclaveType: Default
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database with VBS enclave type.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         PreferredEnclaveType = AzureNative.Sql.AlwaysEncryptedEnclaveType.VBS,
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			DatabaseName:         pulumi.String("testdb"),
/// 			Location:             pulumi.String("southeastasia"),
/// 			PreferredEnclaveType: pulumi.String(sql.AlwaysEncryptedEnclaveTypeVBS),
/// 			ResourceGroupName:    pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:           pulumi.String("testsvr"),
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
/// resource "azure-native_sql_database" "database" {
///   database_name          = "testdb"
///   location               = "southeastasia"
///   preferred_enclave_type = "VBS"
///   resource_group_name    = "Default-SQL-SouthEastAsia"
///   server_name            = "testsvr"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .databaseName("testdb")
///             .location("southeastasia")
///             .preferredEnclaveType("VBS")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
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
/// const database = new azure_native.sql.Database("database", {
///     databaseName: "testdb",
///     location: "southeastasia",
///     preferredEnclaveType: azure_native.sql.AlwaysEncryptedEnclaveType.VBS,
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     database_name="testdb",
///     location="southeastasia",
///     preferred_enclave_type=azure_native.sql.AlwaysEncryptedEnclaveType.VBS,
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       databaseName: testdb
///       location: southeastasia
///       preferredEnclaveType: VBS
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database with availability zone specified.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         AvailabilityZone = AzureNative.Sql.AvailabilityZoneType.One,
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         CreateMode = AzureNative.Sql.CreateMode.Default,
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         MaxSizeBytes = 1073741824,
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "S0",
///             Tier = "Standard",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			AvailabilityZone:  pulumi.String(sql.AvailabilityZoneTypeOne),
/// 			Collation:         pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			CreateMode:        pulumi.String(sql.CreateModeDefault),
/// 			DatabaseName:      pulumi.String("testdb"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			MaxSizeBytes:      pulumi.Float64(1073741824),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:        pulumi.String("testsvr"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("S0"),
/// 				Tier: pulumi.String("Standard"),
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
/// resource "azure-native_sql_database" "database" {
///   availability_zone   = "1"
///   collation           = "SQL_Latin1_General_CP1_CI_AS"
///   create_mode         = "Default"
///   database_name       = "testdb"
///   location            = "southeastasia"
///   max_size_bytes      = 1073741824
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   server_name         = "testsvr"
///   sku = {
///     name = "S0"
///     tier = "Standard"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .availabilityZone("1")
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .createMode("Default")
///             .databaseName("testdb")
///             .location("southeastasia")
///             .maxSizeBytes(1073741824.0)
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .tier("Standard")
///                 .build())
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
/// const database = new azure_native.sql.Database("database", {
///     availabilityZone: azure_native.sql.AvailabilityZoneType.One,
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     createMode: azure_native.sql.CreateMode.Default,
///     databaseName: "testdb",
///     location: "southeastasia",
///     maxSizeBytes: 1073741824,
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     sku: {
///         name: "S0",
///         tier: "Standard",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     availability_zone=azure_native.sql.AvailabilityZoneType.ONE,
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     create_mode=azure_native.sql.CreateMode.DEFAULT,
///     database_name="testdb",
///     location="southeastasia",
///     max_size_bytes=float(1073741824),
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     sku={
///         "name": "S0",
///         "tier": "Standard",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       availabilityZone: '1'
///       collation: SQL_Latin1_General_CP1_CI_AS
///       createMode: Default
///       databaseName: testdb
///       location: southeastasia
///       maxSizeBytes: 1.073741824e+09
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       sku:
///         name: S0
///         tier: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database with default mode.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         CreateMode = AzureNative.Sql.CreateMode.Default,
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         MaxSizeBytes = 1073741824,
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "S0",
///             Tier = "Standard",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			Collation:         pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			CreateMode:        pulumi.String(sql.CreateModeDefault),
/// 			DatabaseName:      pulumi.String("testdb"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			MaxSizeBytes:      pulumi.Float64(1073741824),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:        pulumi.String("testsvr"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("S0"),
/// 				Tier: pulumi.String("Standard"),
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
/// resource "azure-native_sql_database" "database" {
///   collation           = "SQL_Latin1_General_CP1_CI_AS"
///   create_mode         = "Default"
///   database_name       = "testdb"
///   location            = "southeastasia"
///   max_size_bytes      = 1073741824
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   server_name         = "testsvr"
///   sku = {
///     name = "S0"
///     tier = "Standard"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .createMode("Default")
///             .databaseName("testdb")
///             .location("southeastasia")
///             .maxSizeBytes(1073741824.0)
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .tier("Standard")
///                 .build())
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
/// const database = new azure_native.sql.Database("database", {
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     createMode: azure_native.sql.CreateMode.Default,
///     databaseName: "testdb",
///     location: "southeastasia",
///     maxSizeBytes: 1073741824,
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     sku: {
///         name: "S0",
///         tier: "Standard",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     create_mode=azure_native.sql.CreateMode.DEFAULT,
///     database_name="testdb",
///     location="southeastasia",
///     max_size_bytes=float(1073741824),
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     sku={
///         "name": "S0",
///         "tier": "Standard",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       collation: SQL_Latin1_General_CP1_CI_AS
///       createMode: Default
///       databaseName: testdb
///       location: southeastasia
///       maxSizeBytes: 1.073741824e+09
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       sku:
///         name: S0
///         tier: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database with ledger on.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         DatabaseName = "testdb",
///         IsLedgerOn = true,
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			DatabaseName:      pulumi.String("testdb"),
/// 			IsLedgerOn:        pulumi.Bool(true),
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:        pulumi.String("testsvr"),
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
/// resource "azure-native_sql_database" "database" {
///   database_name       = "testdb"
///   is_ledger_on        = true
///   location            = "southeastasia"
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   server_name         = "testsvr"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .databaseName("testdb")
///             .isLedgerOn(true)
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
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
/// const database = new azure_native.sql.Database("database", {
///     databaseName: "testdb",
///     isLedgerOn: true,
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     database_name="testdb",
///     is_ledger_on=True,
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       databaseName: testdb
///       isLedgerOn: true
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database with minimum number of parameters.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			DatabaseName:      pulumi.String("testdb"),
/// 			Location:          pulumi.String("southeastasia"),
/// 			ResourceGroupName: pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:        pulumi.String("testsvr"),
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
/// resource "azure-native_sql_database" "database" {
///   database_name       = "testdb"
///   location            = "southeastasia"
///   resource_group_name = "Default-SQL-SouthEastAsia"
///   server_name         = "testsvr"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .databaseName("testdb")
///             .location("southeastasia")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
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
/// const database = new azure_native.sql.Database("database", {
///     databaseName: "testdb",
///     location: "southeastasia",
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     database_name="testdb",
///     location="southeastasia",
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       databaseName: testdb
///       location: southeastasia
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database with preferred maintenance window.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         Collation = "SQL_Latin1_General_CP1_CI_AS",
///         CreateMode = AzureNative.Sql.CreateMode.Default,
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         MaintenanceConfigurationId = "/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_SouthEastAsia_1",
///         MaxSizeBytes = 1073741824,
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
///         Sku = new AzureNative.Sql.Inputs.SkuArgs
///         {
///             Name = "S2",
///             Tier = "Standard",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			Collation:                  pulumi.String("SQL_Latin1_General_CP1_CI_AS"),
/// 			CreateMode:                 pulumi.String(sql.CreateModeDefault),
/// 			DatabaseName:               pulumi.String("testdb"),
/// 			Location:                   pulumi.String("southeastasia"),
/// 			MaintenanceConfigurationId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_SouthEastAsia_1"),
/// 			MaxSizeBytes:               pulumi.Float64(1073741824),
/// 			ResourceGroupName:          pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:                 pulumi.String("testsvr"),
/// 			Sku: &sql.SkuArgs{
/// 				Name: pulumi.String("S2"),
/// 				Tier: pulumi.String("Standard"),
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
/// resource "azure-native_sql_database" "database" {
///   collation                    = "SQL_Latin1_General_CP1_CI_AS"
///   create_mode                  = "Default"
///   database_name                = "testdb"
///   location                     = "southeastasia"
///   maintenance_configuration_id = "/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_SouthEastAsia_1"
///   max_size_bytes               = 1073741824
///   resource_group_name          = "Default-SQL-SouthEastAsia"
///   server_name                  = "testsvr"
///   sku = {
///     name = "S2"
///     tier = "Standard"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
/// import com.pulumi.azurenative.sql.inputs.SkuArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .collation("SQL_Latin1_General_CP1_CI_AS")
///             .createMode("Default")
///             .databaseName("testdb")
///             .location("southeastasia")
///             .maintenanceConfigurationId("/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_SouthEastAsia_1")
///             .maxSizeBytes(1073741824.0)
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
///             .sku(SkuArgs.builder()
///                 .name("S2")
///                 .tier("Standard")
///                 .build())
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
/// const database = new azure_native.sql.Database("database", {
///     collation: "SQL_Latin1_General_CP1_CI_AS",
///     createMode: azure_native.sql.CreateMode.Default,
///     databaseName: "testdb",
///     location: "southeastasia",
///     maintenanceConfigurationId: "/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_SouthEastAsia_1",
///     maxSizeBytes: 1073741824,
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
///     sku: {
///         name: "S2",
///         tier: "Standard",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     collation="SQL_Latin1_General_CP1_CI_AS",
///     create_mode=azure_native.sql.CreateMode.DEFAULT,
///     database_name="testdb",
///     location="southeastasia",
///     maintenance_configuration_id="/subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_SouthEastAsia_1",
///     max_size_bytes=float(1073741824),
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr",
///     sku={
///         "name": "S2",
///         "tier": "Standard",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       collation: SQL_Latin1_General_CP1_CI_AS
///       createMode: Default
///       databaseName: testdb
///       location: southeastasia
///       maintenanceConfigurationId: /subscriptions/00000000-1111-2222-3333-444444444444/providers/Microsoft.Maintenance/publicMaintenanceConfigurations/SQL_SouthEastAsia_1
///       maxSizeBytes: 1.073741824e+09
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
///       sku:
///         name: S2
///         tier: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Creates a database with specified backup storage redundancy.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var database = new AzureNative.Sql.Database("database", new()
///     {
///         DatabaseName = "testdb",
///         Location = "southeastasia",
///         RequestedBackupStorageRedundancy = AzureNative.Sql.BackupStorageRedundancy.Zone,
///         ResourceGroupName = "Default-SQL-SouthEastAsia",
///         ServerName = "testsvr",
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
/// 		_, err := sql.NewDatabase(ctx, "database", &sql.DatabaseArgs{
/// 			DatabaseName:                     pulumi.String("testdb"),
/// 			Location:                         pulumi.String("southeastasia"),
/// 			RequestedBackupStorageRedundancy: pulumi.String(sql.BackupStorageRedundancyZone),
/// 			ResourceGroupName:                pulumi.String("Default-SQL-SouthEastAsia"),
/// 			ServerName:                       pulumi.String("testsvr"),
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
/// resource "azure-native_sql_database" "database" {
///   database_name                       = "testdb"
///   location                            = "southeastasia"
///   requested_backup_storage_redundancy = "Zone"
///   resource_group_name                 = "Default-SQL-SouthEastAsia"
///   server_name                         = "testsvr"
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
/// import com.pulumi.azurenative.sql.Database;
/// import com.pulumi.azurenative.sql.DatabaseArgs;
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
///         var database = new Database("database", DatabaseArgs.builder()
///             .databaseName("testdb")
///             .location("southeastasia")
///             .requestedBackupStorageRedundancy("Zone")
///             .resourceGroupName("Default-SQL-SouthEastAsia")
///             .serverName("testsvr")
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
/// const database = new azure_native.sql.Database("database", {
///     databaseName: "testdb",
///     location: "southeastasia",
///     requestedBackupStorageRedundancy: azure_native.sql.BackupStorageRedundancy.Zone,
///     resourceGroupName: "Default-SQL-SouthEastAsia",
///     serverName: "testsvr",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// database = azure_native.sql.Database("database",
///     database_name="testdb",
///     location="southeastasia",
///     requested_backup_storage_redundancy=azure_native.sql.BackupStorageRedundancy.ZONE,
///     resource_group_name="Default-SQL-SouthEastAsia",
///     server_name="testsvr")
///
/// ```
///
/// ```yaml
/// resources:
///   database:
///     type: azure-native:sql:Database
///     properties:
///       databaseName: testdb
///       location: southeastasia
///       requestedBackupStorageRedundancy: Zone
///       resourceGroupName: Default-SQL-SouthEastAsia
///       serverName: testsvr
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
/// $ pulumi import azure-native:sql:Database testdb /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}
/// ```
class Database extends pulumi.CustomResource {
  /// Time in minutes after which database is automatically paused. A value of -1 means that automatic pause is disabled
  late final pulumi.Output<int?> autoPauseDelay;
  /// Specifies the availability zone the database is pinned to.
  late final pulumi.Output<String?> availabilityZone;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Collation of the metadata catalog.
  late final pulumi.Output<String?> catalogCollation;
  /// The collation of the database.
  late final pulumi.Output<String?> collation;
  /// The creation date of the database (ISO8601 format).
  late final pulumi.Output<String> creationDate;
  /// The storage account type used to store backups for this database.
  late final pulumi.Output<String> currentBackupStorageRedundancy;
  /// The current service level objective name of the database.
  late final pulumi.Output<String> currentServiceObjectiveName;
  /// The name and tier of the SKU.
  late final pulumi.Output<SkuResponse> currentSku;
  /// The ID of the database.
  late final pulumi.Output<String> databaseId;
  /// The default secondary region for this database.
  late final pulumi.Output<String> defaultSecondaryLocation;
  /// This records the earliest start date and time that restore is available for this database (ISO8601 format).
  late final pulumi.Output<String> earliestRestoreDate;
  /// The resource identifier of the elastic pool containing this database.
  late final pulumi.Output<String?> elasticPoolId;
  /// The azure key vault URI of the database if it's configured with per Database Customer Managed Keys.
  late final pulumi.Output<String?> encryptionProtector;
  /// The flag to enable or disable auto rotation of database encryption protector AKV key.
  late final pulumi.Output<bool?> encryptionProtectorAutoRotation;
  /// Failover Group resource identifier that this database belongs to.
  late final pulumi.Output<String> failoverGroupId;
  /// The Client id used for cross tenant per database CMK scenario
  late final pulumi.Output<String?> federatedClientId;
  /// Specifies the behavior when monthly free limits are exhausted for the free database.
  ///
  /// AutoPause: The database will be auto paused upon exhaustion of free limits for remainder of the month.
  ///
  /// BillForUsage: The database will continue to be online upon exhaustion of free limits and any overage will be billed.
  late final pulumi.Output<String?> freeLimitExhaustionBehavior;
  /// The number of secondary replicas associated with the Business Critical, Premium, or Hyperscale edition database that are used to provide high availability. Not applicable to a Hyperscale database within an elastic pool.
  late final pulumi.Output<int?> highAvailabilityReplicaCount;
  /// The Azure Active Directory identity of the database.
  late final pulumi.Output<DatabaseIdentityResponse?> identity;
  /// Infra encryption is enabled for this database.
  late final pulumi.Output<bool> isInfraEncryptionEnabled;
  /// Whether or not this database is a ledger database, which means all tables in the database are ledger tables. Note: the value of this property cannot be changed after the database has been created.
  late final pulumi.Output<bool?> isLedgerOn;
  /// The resource ids of the user assigned identities to use
  late final pulumi.Output<Map<String, DatabaseKeyResponse>?> keys;
  /// Kind of database. This is metadata used for the Azure portal experience.
  late final pulumi.Output<String> kind;
  /// The license type to apply for this database. `LicenseIncluded` if you need a license, or `BasePrice` if you have a license and are eligible for the Azure Hybrid Benefit.
  late final pulumi.Output<String?> licenseType;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Maintenance configuration id assigned to the database. This configuration defines the period when the maintenance updates will occur.
  late final pulumi.Output<String?> maintenanceConfigurationId;
  /// Resource that manages the database.
  late final pulumi.Output<String> managedBy;
  /// Whether or not customer controlled manual cutover needs to be done during Update Database operation to Hyperscale tier.
  ///
  /// This property is only applicable when scaling database from Business Critical/General Purpose/Premium/Standard tier to Hyperscale tier.
  ///
  /// When manualCutover is specified, the scaling operation will wait for user input to trigger cutover to Hyperscale database.
  ///
  /// To trigger cutover, please provide 'performCutover' parameter when the Scaling operation is in Waiting state.
  late final pulumi.Output<bool?> manualCutover;
  /// The max log size for this database.
  late final pulumi.Output<double> maxLogSizeBytes;
  /// The max size of the database expressed in bytes.
  late final pulumi.Output<double?> maxSizeBytes;
  /// Minimal capacity that database will always have allocated, if not paused
  late final pulumi.Output<double?> minCapacity;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The date when database was paused by user configuration or action(ISO8601 format). Null if the database is ready.
  late final pulumi.Output<String> pausedDate;
  /// To trigger customer controlled manual cutover during the wait state while Scaling operation is in progress.
  ///
  /// This property parameter is only applicable for scaling operations that are initiated along with 'manualCutover' parameter.
  ///
  /// This property is only applicable when scaling database from Business Critical/General Purpose/Premium/Standard tier to Hyperscale tier is already in progress.
  ///
  /// When performCutover is specified, the scaling operation will trigger cutover and perform role-change to Hyperscale database.
  late final pulumi.Output<bool?> performCutover;
  /// Type of enclave requested on the database i.e. Default or VBS enclaves.
  late final pulumi.Output<String?> preferredEnclaveType;
  /// The state of read-only routing. If enabled, connections that have application intent set to readonly in their connection string may be routed to a readonly secondary replica in the same region. Not applicable to a Hyperscale database within an elastic pool.
  late final pulumi.Output<String?> readScale;
  /// The storage account type to be used to store backups for this database.
  late final pulumi.Output<String?> requestedBackupStorageRedundancy;
  /// The requested service level objective name of the database.
  late final pulumi.Output<String> requestedServiceObjectiveName;
  /// The date when database was resumed by user action or database login (ISO8601 format). Null if the database is paused.
  late final pulumi.Output<String> resumedDate;
  /// The secondary type of the database if it is a secondary.  Valid values are Geo, Named and Standby.
  late final pulumi.Output<String?> secondaryType;
  /// The database SKU.
  ///
  /// The list of SKUs may vary by region and support offer. To determine the SKUs (including the SKU name, tier/edition, family, and capacity) that are available to your subscription in an Azure region, use the `Capabilities_ListByLocation` REST API or one of the following commands:
  ///
  /// ```azurecli
  /// az sql db list-editions -l <location> -o table
  /// ````
  ///
  /// ```powershell
  /// Get-AzSqlServerServiceObjective -Location <location>
  /// ````
  late final pulumi.Output<SkuResponse?> sku;
  /// The status of the database.
  late final pulumi.Output<String> status;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Whether or not the database uses free monthly limits. Allowed on one database in a subscription.
  late final pulumi.Output<bool?> useFreeLimit;
  /// Whether or not this database is zone redundant, which means the replicas of this database will be spread across multiple availability zones.
  late final pulumi.Output<bool?> zoneRedundant;

  /// Creates a new [Database].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Database]. {@macro pulumi_sql_database_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Database(
    String name, {
    DatabaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:Database',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    autoPauseDelay = registerOutput<int?>('autoPauseDelay');
    availabilityZone = registerOutput<String?>('availabilityZone');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    catalogCollation = registerOutput<String?>('catalogCollation');
    collation = registerOutput<String?>('collation');
    creationDate = registerOutput<String>('creationDate');
    currentBackupStorageRedundancy = registerOutput<String>('currentBackupStorageRedundancy');
    currentServiceObjectiveName = registerOutput<String>('currentServiceObjectiveName');
    currentSku = registerOutput<SkuResponse>('currentSku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    databaseId = registerOutput<String>('databaseId');
    defaultSecondaryLocation = registerOutput<String>('defaultSecondaryLocation');
    earliestRestoreDate = registerOutput<String>('earliestRestoreDate');
    elasticPoolId = registerOutput<String?>('elasticPoolId');
    encryptionProtector = registerOutput<String?>('encryptionProtector');
    encryptionProtectorAutoRotation = registerOutput<bool?>('encryptionProtectorAutoRotation');
    failoverGroupId = registerOutput<String>('failoverGroupId');
    federatedClientId = registerOutput<String?>('federatedClientId');
    freeLimitExhaustionBehavior = registerOutput<String?>('freeLimitExhaustionBehavior');
    highAvailabilityReplicaCount = registerOutput<int?>('highAvailabilityReplicaCount');
    identity = registerOutput<DatabaseIdentityResponse?>('identity', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DatabaseIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    isInfraEncryptionEnabled = registerOutput<bool>('isInfraEncryptionEnabled');
    isLedgerOn = registerOutput<bool?>('isLedgerOn');
    keys = registerOutput<Map<String, DatabaseKeyResponse>?>('keys', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeMapValues<DatabaseKeyResponse>(guardedValue, (value) => DatabaseKeyResponse.fromMap((value as Map).cast<String, dynamic>())); });
    kind = registerOutput<String>('kind');
    licenseType = registerOutput<String?>('licenseType');
    location = registerOutput<String>('location');
    maintenanceConfigurationId = registerOutput<String?>('maintenanceConfigurationId');
    managedBy = registerOutput<String>('managedBy');
    manualCutover = registerOutput<bool?>('manualCutover');
    maxLogSizeBytes = registerOutput<double>('maxLogSizeBytes');
    maxSizeBytes = registerOutput<double?>('maxSizeBytes');
    minCapacity = registerOutput<double?>('minCapacity');
    this.name = registerOutput<String>('name');
    pausedDate = registerOutput<String>('pausedDate');
    performCutover = registerOutput<bool?>('performCutover');
    preferredEnclaveType = registerOutput<String?>('preferredEnclaveType');
    readScale = registerOutput<String?>('readScale');
    requestedBackupStorageRedundancy = registerOutput<String?>('requestedBackupStorageRedundancy');
    requestedServiceObjectiveName = registerOutput<String>('requestedServiceObjectiveName');
    resumedDate = registerOutput<String>('resumedDate');
    secondaryType = registerOutput<String?>('secondaryType');
    sku = registerOutput<SkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    useFreeLimit = registerOutput<bool?>('useFreeLimit');
    zoneRedundant = registerOutput<bool?>('zoneRedundant');
  }
}
