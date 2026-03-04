import 'package:pulumi/pulumi.dart' as pulumi;
import 'sync_agent_args.dart';

/// An Azure SQL Database sync agent.
///
/// Uses Azure REST API version 2023-08-01. In version 2.x of the Azure Native provider, it used API version 2021-11-01.
///
/// Other available API versions: 2015-05-01-preview, 2020-02-02-preview, 2020-08-01-preview, 2020-11-01-preview, 2021-02-01-preview, 2021-05-01-preview, 2021-08-01-preview, 2021-11-01, 2021-11-01-preview, 2022-02-01-preview, 2022-05-01-preview, 2022-08-01-preview, 2022-11-01-preview, 2023-02-01-preview, 2023-05-01-preview, 2023-08-01-preview, 2024-05-01-preview, 2024-11-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native sql [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create a new sync agent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var syncAgent = new AzureNative.Sql.SyncAgent("syncAgent", new()
///     {
///         ResourceGroupName = "syncagentcrud-65440",
///         ServerName = "syncagentcrud-8475",
///         SyncAgentName = "syncagentcrud-3187",
///         SyncDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync",
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
/// 		_, err := sql.NewSyncAgent(ctx, "syncAgent", &sql.SyncAgentArgs{
/// 			ResourceGroupName: pulumi.String("syncagentcrud-65440"),
/// 			ServerName:        pulumi.String("syncagentcrud-8475"),
/// 			SyncAgentName:     pulumi.String("syncagentcrud-3187"),
/// 			SyncDatabaseId:    pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync"),
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
/// import com.pulumi.azurenative.sql.SyncAgent;
/// import com.pulumi.azurenative.sql.SyncAgentArgs;
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
///         var syncAgent = new SyncAgent("syncAgent", SyncAgentArgs.builder()
///             .resourceGroupName("syncagentcrud-65440")
///             .serverName("syncagentcrud-8475")
///             .syncAgentName("syncagentcrud-3187")
///             .syncDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync")
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
/// const syncAgent = new azure_native.sql.SyncAgent("syncAgent", {
///     resourceGroupName: "syncagentcrud-65440",
///     serverName: "syncagentcrud-8475",
///     syncAgentName: "syncagentcrud-3187",
///     syncDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sync_agent = azure_native.sql.SyncAgent("syncAgent",
///     resource_group_name="syncagentcrud-65440",
///     server_name="syncagentcrud-8475",
///     sync_agent_name="syncagentcrud-3187",
///     sync_database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync")
///
/// ```
///
/// ```yaml
/// resources:
///   syncAgent:
///     type: azure-native:sql:SyncAgent
///     properties:
///       resourceGroupName: syncagentcrud-65440
///       serverName: syncagentcrud-8475
///       syncAgentName: syncagentcrud-3187
///       syncDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Update a sync agent
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var syncAgent = new AzureNative.Sql.SyncAgent("syncAgent", new()
///     {
///         ResourceGroupName = "syncagentcrud-65440",
///         ServerName = "syncagentcrud-8475",
///         SyncAgentName = "syncagentcrud-3187",
///         SyncDatabaseId = "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync",
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
/// 		_, err := sql.NewSyncAgent(ctx, "syncAgent", &sql.SyncAgentArgs{
/// 			ResourceGroupName: pulumi.String("syncagentcrud-65440"),
/// 			ServerName:        pulumi.String("syncagentcrud-8475"),
/// 			SyncAgentName:     pulumi.String("syncagentcrud-3187"),
/// 			SyncDatabaseId:    pulumi.String("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync"),
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
/// import com.pulumi.azurenative.sql.SyncAgent;
/// import com.pulumi.azurenative.sql.SyncAgentArgs;
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
///         var syncAgent = new SyncAgent("syncAgent", SyncAgentArgs.builder()
///             .resourceGroupName("syncagentcrud-65440")
///             .serverName("syncagentcrud-8475")
///             .syncAgentName("syncagentcrud-3187")
///             .syncDatabaseId("/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync")
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
/// const syncAgent = new azure_native.sql.SyncAgent("syncAgent", {
///     resourceGroupName: "syncagentcrud-65440",
///     serverName: "syncagentcrud-8475",
///     syncAgentName: "syncagentcrud-3187",
///     syncDatabaseId: "/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// sync_agent = azure_native.sql.SyncAgent("syncAgent",
///     resource_group_name="syncagentcrud-65440",
///     server_name="syncagentcrud-8475",
///     sync_agent_name="syncagentcrud-3187",
///     sync_database_id="/subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync")
///
/// ```
///
/// ```yaml
/// resources:
///   syncAgent:
///     type: azure-native:sql:SyncAgent
///     properties:
///       resourceGroupName: syncagentcrud-65440
///       serverName: syncagentcrud-8475
///       syncAgentName: syncagentcrud-3187
///       syncDatabaseId: /subscriptions/00000000-1111-2222-3333-444444444444/resourceGroups/Default-SQL-Onebox/providers/Microsoft.Sql/servers/syncagentcrud-8475/databases/sync
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
/// $ pulumi import azure-native:sql:SyncAgent syncagent /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Sql/servers/{serverName}/syncAgents/{syncAgentName}
/// ```
class SyncAgent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Expiration time of the sync agent version.
  late final pulumi.Output<String> expiryTime;

  /// If the sync agent version is up to date.
  late final pulumi.Output<bool> isUpToDate;

  /// Last alive time of the sync agent.
  late final pulumi.Output<String> lastAliveTime;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// State of the sync agent.
  late final pulumi.Output<String> state;

  /// ARM resource id of the sync database in the sync agent.
  late final pulumi.Output<String?> syncDatabaseId;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// Version of the sync agent.
  late final pulumi.Output<String> version;

  /// Creates a new [SyncAgent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SyncAgent]. {@macro pulumi_sql_sync_agent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SyncAgent(
    String name, {
    SyncAgentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:sql:SyncAgent',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    expiryTime = registerOutput<String>('expiryTime');
    isUpToDate = registerOutput<bool>('isUpToDate');
    lastAliveTime = registerOutput<String>('lastAliveTime');
    this.name = registerOutput<String>('name');
    state = registerOutput<String>('state');
    syncDatabaseId = registerOutput<String?>('syncDatabaseId');
    type = registerOutput<String>('type');
    version = registerOutput<String>('version');
  }
}
