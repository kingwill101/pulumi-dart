import 'package:pulumi/pulumi.dart' as pulumi;
import 'sku_response.dart';
import 'sync_group_args.dart';
import 'sync_group_schema_response.dart';

/// An Azure SQL Database sync group.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2015-05-01-preview, 2019-06-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a sync group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var syncGroup = new AzureNative.Sql.SyncGroup("syncGroup", new()
///     {
///         ConflictResolutionPolicy = AzureNative.Sql.SyncConflictResolutionPolicy.HubWin,
///         DatabaseName = "syncgroupcrud-4328",
///         HubDatabaseUserName = "hubUser",
///         Interval = -1,
///         ResourceGroupName = "syncgroupcrud-65440",
///         ServerName = "syncgroupcrud-8475",
///         SyncDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///         SyncGroupName = "syncgroupcrud-3187",
///         UsePrivateLinkConnection = true,
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
/// 		_, err := sql.NewSyncGroup(ctx, "syncGroup", &sql.SyncGroupArgs{
/// 			ConflictResolutionPolicy: pulumi.String(sql.SyncConflictResolutionPolicyHubWin),
/// 			DatabaseName:             pulumi.String("syncgroupcrud-4328"),
/// 			HubDatabaseUserName:      pulumi.String("hubUser"),
/// 			Interval:                 pulumi.Int(-1),
/// 			ResourceGroupName:        pulumi.String("syncgroupcrud-65440"),
/// 			ServerName:               pulumi.String("syncgroupcrud-8475"),
/// 			SyncDatabaseId:           pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328"),
/// 			SyncGroupName:            pulumi.String("syncgroupcrud-3187"),
/// 			UsePrivateLinkConnection: pulumi.Bool(true),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.SyncGroup;
/// import com.pulumi.azurenative.sql.SyncGroupArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var syncGroup = new SyncGroup("syncGroup", SyncGroupArgs.builder()
///             .conflictResolutionPolicy("HubWin")
///             .databaseName("syncgroupcrud-4328")
///             .hubDatabaseUserName("hubUser")
///             .interval(-1)
///             .resourceGroupName("syncgroupcrud-65440")
///             .serverName("syncgroupcrud-8475")
///             .syncDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328")
///             .syncGroupName("syncgroupcrud-3187")
///             .usePrivateLinkConnection(true)
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
/// const syncGroup = new azure_native.sql.SyncGroup("syncGroup", {
///     conflictResolutionPolicy: azure_native.sql.SyncConflictResolutionPolicy.HubWin,
///     databaseName: "syncgroupcrud-4328",
///     hubDatabaseUserName: "hubUser",
///     interval: -1,
///     resourceGroupName: "syncgroupcrud-65440",
///     serverName: "syncgroupcrud-8475",
///     syncDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///     syncGroupName: "syncgroupcrud-3187",
///     usePrivateLinkConnection: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sync_group = azure_native.sql.SyncGroup("syncGroup",
///     conflict_resolution_policy=azure_native.sql.SyncConflictResolutionPolicy.HUB_WIN,
///     database_name="syncgroupcrud-4328",
///     hub_database_user_name="hubUser",
///     interval=-1,
///     resource_group_name="syncgroupcrud-65440",
///     server_name="syncgroupcrud-8475",
///     sync_database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///     sync_group_name="syncgroupcrud-3187",
///     use_private_link_connection=True)
///
/// ```
///
/// ```yaml
/// resources:
///   syncGroup:
///     type: azure-native:sql:SyncGroup
///     properties:
///       conflictResolutionPolicy: HubWin
///       databaseName: syncgroupcrud-4328
///       hubDatabaseUserName: hubUser
///       interval: -1
///       resourceGroupName: syncgroupcrud-65440
///       serverName: syncgroupcrud-8475
///       syncDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328
///       syncGroupName: syncgroupcrud-3187
///       usePrivateLinkConnection: true
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update a sync group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var syncGroup = new AzureNative.Sql.SyncGroup("syncGroup", new()
///     {
///         ConflictResolutionPolicy = AzureNative.Sql.SyncConflictResolutionPolicy.HubWin,
///         DatabaseName = "syncgroupcrud-4328",
///         HubDatabaseUserName = "hubUser",
///         Interval = -1,
///         ResourceGroupName = "syncgroupcrud-65440",
///         ServerName = "syncgroupcrud-8475",
///         SyncDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///         SyncGroupName = "syncgroupcrud-3187",
///         UsePrivateLinkConnection = true,
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
/// 		_, err := sql.NewSyncGroup(ctx, "syncGroup", &sql.SyncGroupArgs{
/// 			ConflictResolutionPolicy: pulumi.String(sql.SyncConflictResolutionPolicyHubWin),
/// 			DatabaseName:             pulumi.String("syncgroupcrud-4328"),
/// 			HubDatabaseUserName:      pulumi.String("hubUser"),
/// 			Interval:                 pulumi.Int(-1),
/// 			ResourceGroupName:        pulumi.String("syncgroupcrud-65440"),
/// 			ServerName:               pulumi.String("syncgroupcrud-8475"),
/// 			SyncDatabaseId:           pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328"),
/// 			SyncGroupName:            pulumi.String("syncgroupcrud-3187"),
/// 			UsePrivateLinkConnection: pulumi.Bool(true),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.sql.SyncGroup;
/// import com.pulumi.azurenative.sql.SyncGroupArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var syncGroup = new SyncGroup("syncGroup", SyncGroupArgs.builder()
///             .conflictResolutionPolicy("HubWin")
///             .databaseName("syncgroupcrud-4328")
///             .hubDatabaseUserName("hubUser")
///             .interval(-1)
///             .resourceGroupName("syncgroupcrud-65440")
///             .serverName("syncgroupcrud-8475")
///             .syncDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328")
///             .syncGroupName("syncgroupcrud-3187")
///             .usePrivateLinkConnection(true)
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
/// const syncGroup = new azure_native.sql.SyncGroup("syncGroup", {
///     conflictResolutionPolicy: azure_native.sql.SyncConflictResolutionPolicy.HubWin,
///     databaseName: "syncgroupcrud-4328",
///     hubDatabaseUserName: "hubUser",
///     interval: -1,
///     resourceGroupName: "syncgroupcrud-65440",
///     serverName: "syncgroupcrud-8475",
///     syncDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///     syncGroupName: "syncgroupcrud-3187",
///     usePrivateLinkConnection: true,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sync_group = azure_native.sql.SyncGroup("syncGroup",
///     conflict_resolution_policy=azure_native.sql.SyncConflictResolutionPolicy.HUB_WIN,
///     database_name="syncgroupcrud-4328",
///     hub_database_user_name="hubUser",
///     interval=-1,
///     resource_group_name="syncgroupcrud-65440",
///     server_name="syncgroupcrud-8475",
///     sync_database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328",
///     sync_group_name="syncgroupcrud-3187",
///     use_private_link_connection=True)
///
/// ```
///
/// ```yaml
/// resources:
///   syncGroup:
///     type: azure-native:sql:SyncGroup
///     properties:
///       conflictResolutionPolicy: HubWin
///       databaseName: syncgroupcrud-4328
///       hubDatabaseUserName: hubUser
///       interval: -1
///       resourceGroupName: syncgroupcrud-65440
///       serverName: syncgroupcrud-8475
///       syncDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/syncgroupcrud-3521/providers/Microsoft.Sql/servers/syncgroupcrud-8475/databases/syncgroupcrud-4328
///       syncGroupName: syncgroupcrud-3187
///       usePrivateLinkConnection: true
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
/// $ pulumi import azure-native:sql:SyncGroup syncgroupcrud-3187 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/databases/{databaseName}/syncGroups/{syncGroupName}
/// ```
class SyncGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Conflict logging retention period.
  late final pulumi.Output<int?> conflictLoggingRetentionInDays;

  /// Conflict resolution policy of the sync group.
  late final pulumi.Output<String?> conflictResolutionPolicy;

  /// If conflict logging is enabled.
  late final pulumi.Output<bool?> enableConflictLogging;

  /// User name for the sync group hub database credential.
  late final pulumi.Output<String?> hubDatabaseUserName;

  /// Sync interval of the sync group.
  late final pulumi.Output<int?> interval;

  /// Last sync time of the sync group.
  late final pulumi.Output<String> lastSyncTime;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// Private endpoint name of the sync group if use private link connection is enabled.
  late final pulumi.Output<String> privateEndpointName;

  /// Sync schema of the sync group.
  late final pulumi.Output<SyncGroupSchemaResponse?> schema;

  /// The name and capacity of the SKU.
  late final pulumi.Output<SkuResponse?> sku;

  /// ARM resource id of the sync database in the sync group.
  late final pulumi.Output<String?> syncDatabaseId;

  /// Sync state of the sync group.
  late final pulumi.Output<String> syncState;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// If use private link connection is enabled.
  late final pulumi.Output<bool?> usePrivateLinkConnection;

  /// Creates a new [SyncGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SyncGroup]. {@macro pulumi_sql_sync_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SyncGroup(
    String name, {
    SyncGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:SyncGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    conflictLoggingRetentionInDays = registerOutput<int?>(
      'conflictLoggingRetentionInDays',
    );
    conflictResolutionPolicy = registerOutput<String?>(
      'conflictResolutionPolicy',
    );
    enableConflictLogging = registerOutput<bool?>('enableConflictLogging');
    hubDatabaseUserName = registerOutput<String?>('hubDatabaseUserName');
    interval = registerOutput<int?>('interval');
    lastSyncTime = registerOutput<String>('lastSyncTime');
    this.name = registerOutput<String>('name');
    privateEndpointName = registerOutput<String>('privateEndpointName');
    schema = registerOutput<SyncGroupSchemaResponse?>('schema');
    sku = registerOutput<SkuResponse?>('sku');
    syncDatabaseId = registerOutput<String?>('syncDatabaseId');
    syncState = registerOutput<String>('syncState');
    type = registerOutput<String>('type');
    usePrivateLinkConnection = registerOutput<bool?>(
      'usePrivateLinkConnection',
    );
  }
}
