import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_member_args.dart';

/// An Azure SQL Database sync member.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2015-05-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview, 2025-01-01, 2025-02-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new sync member
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var syncMember = new AzureNative.Sql.SyncMember("syncMember", new()
///     {
///         DatabaseName = "syncgroupcrud-7421",
///         DatabaseType = AzureNative.Sql.SyncMemberDbType.AzureSqlDatabase,
///         ResourceGroupName = "syncgroupcrud-65440",
///         ServerName = "syncgroupcrud-8475",
///         SyncDirection = AzureNative.Sql.SyncDirection.Bidirectional,
///         SyncGroupName = "syncgroupcrud-3187",
///         SyncMemberAzureDatabaseResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///         SyncMemberName = "syncmembercrud-4879",
///         UsePrivateLinkConnection = true,
///         UserName = "myUser",
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
/// 		_, err := sql.NewSyncMember(ctx, "syncMember", &sql.SyncMemberArgs{
/// 			DatabaseName:                      pulumi.String("syncgroupcrud-7421"),
/// 			DatabaseType:                      pulumi.String(sql.SyncMemberDbTypeAzureSqlDatabase),
/// 			ResourceGroupName:                 pulumi.String("syncgroupcrud-65440"),
/// 			ServerName:                        pulumi.String("syncgroupcrud-8475"),
/// 			SyncDirection:                     pulumi.String(sql.SyncDirectionBidirectional),
/// 			SyncGroupName:                     pulumi.String("syncgroupcrud-3187"),
/// 			SyncMemberAzureDatabaseResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328"),
/// 			SyncMemberName:                    pulumi.String("syncmembercrud-4879"),
/// 			UsePrivateLinkConnection:          pulumi.Bool(true),
/// 			UserName:                          pulumi.String("myUser"),
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
/// resource "azure-native_sql_syncmember" "syncMember" {
///   database_name                          = "syncgroupcrud-7421"
///   database_type                          = "AzureSqlDatabase"
///   resource_group_name                    = "syncgroupcrud-65440"
///   server_name                            = "syncgroupcrud-8475"
///   sync_direction                         = "Bidirectional"
///   sync_group_name                        = "syncgroupcrud-3187"
///   sync_member_azure_database_resource_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328"
///   sync_member_name                       = "syncmembercrud-4879"
///   use_private_link_connection            = true
///   user_name                              = "myUser"
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
/// import com.pulumi.azurenative.sql.SyncMember;
/// import com.pulumi.azurenative.sql.SyncMemberArgs;
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
///         var syncMember = new SyncMember("syncMember", SyncMemberArgs.builder()
///             .databaseName("syncgroupcrud-7421")
///             .databaseType("AzureSqlDatabase")
///             .resourceGroupName("syncgroupcrud-65440")
///             .serverName("syncgroupcrud-8475")
///             .syncDirection("Bidirectional")
///             .syncGroupName("syncgroupcrud-3187")
///             .syncMemberAzureDatabaseResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328")
///             .syncMemberName("syncmembercrud-4879")
///             .usePrivateLinkConnection(true)
///             .userName("myUser")
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
/// const syncMember = new azure_native.sql.SyncMember("syncMember", {
///     databaseName: "syncgroupcrud-7421",
///     databaseType: azure_native.sql.SyncMemberDbType.AzureSqlDatabase,
///     resourceGroupName: "syncgroupcrud-65440",
///     serverName: "syncgroupcrud-8475",
///     syncDirection: azure_native.sql.SyncDirection.Bidirectional,
///     syncGroupName: "syncgroupcrud-3187",
///     syncMemberAzureDatabaseResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///     syncMemberName: "syncmembercrud-4879",
///     usePrivateLinkConnection: true,
///     userName: "myUser",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sync_member = azure_native.sql.SyncMember("syncMember",
///     database_name="syncgroupcrud-7421",
///     database_type=azure_native.sql.SyncMemberDbType.AZURE_SQL_DATABASE,
///     resource_group_name="syncgroupcrud-65440",
///     server_name="syncgroupcrud-8475",
///     sync_direction=azure_native.sql.SyncDirection.BIDIRECTIONAL,
///     sync_group_name="syncgroupcrud-3187",
///     sync_member_azure_database_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///     sync_member_name="syncmembercrud-4879",
///     use_private_link_connection=True,
///     user_name="myUser")
///
/// ```
///
/// ```yaml
/// resources:
///   syncMember:
///     type: azure-native:sql:SyncMember
///     properties:
///       databaseName: syncgroupcrud-7421
///       databaseType: AzureSqlDatabase
///       resourceGroupName: syncgroupcrud-65440
///       serverName: syncgroupcrud-8475
///       syncDirection: Bidirectional
///       syncGroupName: syncgroupcrud-3187
///       syncMemberAzureDatabaseResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328
///       syncMemberName: syncmembercrud-4879
///       usePrivateLinkConnection: true
///       userName: myUser
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update a sync member
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var syncMember = new AzureNative.Sql.SyncMember("syncMember", new()
///     {
///         DatabaseName = "syncgroupcrud-7421",
///         DatabaseType = AzureNative.Sql.SyncMemberDbType.AzureSqlDatabase,
///         ResourceGroupName = "syncgroupcrud-65440",
///         ServerName = "syncgroupcrud-8475",
///         SyncDirection = AzureNative.Sql.SyncDirection.Bidirectional,
///         SyncGroupName = "syncgroupcrud-3187",
///         SyncMemberAzureDatabaseResourceId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///         SyncMemberName = "syncmembercrud-4879",
///         UsePrivateLinkConnection = true,
///         UserName = "myUser",
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
/// 		_, err := sql.NewSyncMember(ctx, "syncMember", &sql.SyncMemberArgs{
/// 			DatabaseName:                      pulumi.String("syncgroupcrud-7421"),
/// 			DatabaseType:                      pulumi.String(sql.SyncMemberDbTypeAzureSqlDatabase),
/// 			ResourceGroupName:                 pulumi.String("syncgroupcrud-65440"),
/// 			ServerName:                        pulumi.String("syncgroupcrud-8475"),
/// 			SyncDirection:                     pulumi.String(sql.SyncDirectionBidirectional),
/// 			SyncGroupName:                     pulumi.String("syncgroupcrud-3187"),
/// 			SyncMemberAzureDatabaseResourceId: pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328"),
/// 			SyncMemberName:                    pulumi.String("syncmembercrud-4879"),
/// 			UsePrivateLinkConnection:          pulumi.Bool(true),
/// 			UserName:                          pulumi.String("myUser"),
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
/// resource "azure-native_sql_syncmember" "syncMember" {
///   database_name                          = "syncgroupcrud-7421"
///   database_type                          = "AzureSqlDatabase"
///   resource_group_name                    = "syncgroupcrud-65440"
///   server_name                            = "syncgroupcrud-8475"
///   sync_direction                         = "Bidirectional"
///   sync_group_name                        = "syncgroupcrud-3187"
///   sync_member_azure_database_resource_id = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328"
///   sync_member_name                       = "syncmembercrud-4879"
///   use_private_link_connection            = true
///   user_name                              = "myUser"
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
/// import com.pulumi.azurenative.sql.SyncMember;
/// import com.pulumi.azurenative.sql.SyncMemberArgs;
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
///         var syncMember = new SyncMember("syncMember", SyncMemberArgs.builder()
///             .databaseName("syncgroupcrud-7421")
///             .databaseType("AzureSqlDatabase")
///             .resourceGroupName("syncgroupcrud-65440")
///             .serverName("syncgroupcrud-8475")
///             .syncDirection("Bidirectional")
///             .syncGroupName("syncgroupcrud-3187")
///             .syncMemberAzureDatabaseResourceId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328")
///             .syncMemberName("syncmembercrud-4879")
///             .usePrivateLinkConnection(true)
///             .userName("myUser")
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
/// const syncMember = new azure_native.sql.SyncMember("syncMember", {
///     databaseName: "syncgroupcrud-7421",
///     databaseType: azure_native.sql.SyncMemberDbType.AzureSqlDatabase,
///     resourceGroupName: "syncgroupcrud-65440",
///     serverName: "syncgroupcrud-8475",
///     syncDirection: azure_native.sql.SyncDirection.Bidirectional,
///     syncGroupName: "syncgroupcrud-3187",
///     syncMemberAzureDatabaseResourceId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///     syncMemberName: "syncmembercrud-4879",
///     usePrivateLinkConnection: true,
///     userName: "myUser",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sync_member = azure_native.sql.SyncMember("syncMember",
///     database_name="syncgroupcrud-7421",
///     database_type=azure_native.sql.SyncMemberDbType.AZURE_SQL_DATABASE,
///     resource_group_name="syncgroupcrud-65440",
///     server_name="syncgroupcrud-8475",
///     sync_direction=azure_native.sql.SyncDirection.BIDIRECTIONAL,
///     sync_group_name="syncgroupcrud-3187",
///     sync_member_azure_database_resource_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///     sync_member_name="syncmembercrud-4879",
///     use_private_link_connection=True,
///     user_name="myUser")
///
/// ```
///
/// ```yaml
/// resources:
///   syncMember:
///     type: azure-native:sql:SyncMember
///     properties:
///       databaseName: syncgroupcrud-7421
///       databaseType: AzureSqlDatabase
///       resourceGroupName: syncgroupcrud-65440
///       serverName: syncgroupcrud-8475
///       syncDirection: Bidirectional
///       syncGroupName: syncgroupcrud-3187
///       syncMemberAzureDatabaseResourceId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-65440/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328
///       syncMemberName: syncmembercrud-4879
///       usePrivateLinkConnection: true
///       userName: myUser
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
/// $ pulumi import azure-native:sql:SyncMember syncmembercrud-4879 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/syncGroups/{syncGroupName}/syncMembers/{syncMemberName}
/// ```
class SyncMember extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Database name of the member database in the sync member.
  late final pulumi.Output<String?> databaseName;
  /// Database type of the sync member.
  late final pulumi.Output<String?> databaseType;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Private endpoint name of the sync member if use private link connection is enabled, for sync members in Azure.
  late final pulumi.Output<String> privateEndpointName;
  /// Server name of the member database in the sync member
  late final pulumi.Output<String?> serverName;
  /// SQL Server database id of the sync member.
  late final pulumi.Output<String?> sqlServerDatabaseId;
  /// ARM resource id of the sync agent in the sync member.
  late final pulumi.Output<String?> syncAgentId;
  /// Sync direction of the sync member.
  late final pulumi.Output<String?> syncDirection;
  /// ARM resource id of the sync member logical database, for sync members in Azure.
  late final pulumi.Output<String?> syncMemberAzureDatabaseResourceId;
  /// Sync state of the sync member.
  late final pulumi.Output<String> syncState;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// Whether to use private link connection.
  late final pulumi.Output<bool?> usePrivateLinkConnection;
  /// User name of the member database in the sync member.
  late final pulumi.Output<String?> userName;

  /// Creates a new [SyncMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SyncMember]. {@macro pulumi_sql_sync_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SyncMember(
    String name, {
    SyncMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:sql:SyncMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    databaseName = registerOutput<String?>('databaseName');
    databaseType = registerOutput<String?>('databaseType');
    this.name = registerOutput<String>('name');
    privateEndpointName = registerOutput<String>('privateEndpointName');
    serverName = registerOutput<String?>('serverName');
    sqlServerDatabaseId = registerOutput<String?>('sqlServerDatabaseId');
    syncAgentId = registerOutput<String?>('syncAgentId');
    syncDirection = registerOutput<String?>('syncDirection');
    syncMemberAzureDatabaseResourceId = registerOutput<String?>('syncMemberAzureDatabaseResourceId');
    syncState = registerOutput<String>('syncState');
    type = registerOutput<String>('type');
    usePrivateLinkConnection = registerOutput<bool?>('usePrivateLinkConnection');
    userName = registerOutput<String?>('userName');
  }
}
