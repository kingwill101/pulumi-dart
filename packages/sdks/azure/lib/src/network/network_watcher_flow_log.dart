import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_watcher_flow_log_args.dart';
import 'network_watcher_flow_log_retention_policy.dart';
import 'network_watcher_flow_log_state.dart';
import 'network_watcher_flow_log_traffic_analytics.dart';

/// Manages a Network Watcher Flow Log.
///
/// &gt; **Note:** The `azure.network.NetworkWatcherFlowLog` creates a new storage lifecyle management rule that overwrites existing rules. Please make sure to use a `storage_account` with no existing management rules, until the issue is fixed.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const test = new azure.network.NetworkSecurityGroup("test", {
///     name: "acctestnsg",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const testNetworkWatcher = new azure.network.NetworkWatcher("test", {
///     name: "acctestnw",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const testAccount = new azure.storage.Account("test", {
///     name: "acctestsa",
///     resourceGroupName: example.name,
///     location: example.location,
///     accountTier: "Standard",
///     accountKind: "StorageV2",
///     accountReplicationType: "LRS",
///     httpsTrafficOnlyEnabled: true,
/// });
/// const testAnalyticsWorkspace = new azure.operationalinsights.AnalyticsWorkspace("test", {
///     name: "acctestlaw",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "PerGB2018",
/// });
/// const testNetworkWatcherFlowLog = new azure.network.NetworkWatcherFlowLog("test", {
///     networkWatcherName: testNetworkWatcher.name,
///     resourceGroupName: example.name,
///     name: "example-log",
///     targetResourceId: test.id,
///     storageAccountId: testAccount.id,
///     enabled: true,
///     retentionPolicy: {
///         enabled: true,
///         days: 7,
///     },
///     trafficAnalytics: {
///         enabled: true,
///         workspaceId: testAnalyticsWorkspace.workspaceId,
///         workspaceRegion: testAnalyticsWorkspace.location,
///         workspaceResourceId: testAnalyticsWorkspace.id,
///         intervalInMinutes: 10,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// test = azure.network.NetworkSecurityGroup("test",
///     name="acctestnsg",
///     location=example.location,
///     resource_group_name=example.name)
/// test_network_watcher = azure.network.NetworkWatcher("test",
///     name="acctestnw",
///     location=example.location,
///     resource_group_name=example.name)
/// test_account = azure.storage.Account("test",
///     name="acctestsa",
///     resource_group_name=example.name,
///     location=example.location,
///     account_tier="Standard",
///     account_kind="StorageV2",
///     account_replication_type="LRS",
///     https_traffic_only_enabled=True)
/// test_analytics_workspace = azure.operationalinsights.AnalyticsWorkspace("test",
///     name="acctestlaw",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="PerGB2018")
/// test_network_watcher_flow_log = azure.network.NetworkWatcherFlowLog("test",
///     network_watcher_name=test_network_watcher.name,
///     resource_group_name=example.name,
///     name="example-log",
///     target_resource_id=test.id,
///     storage_account_id=test_account.id,
///     enabled=True,
///     retention_policy={
///         "enabled": True,
///         "days": 7,
///     },
///     traffic_analytics={
///         "enabled": True,
///         "workspace_id": test_analytics_workspace.workspace_id,
///         "workspace_region": test_analytics_workspace.location,
///         "workspace_resource_id": test_analytics_workspace.id,
///         "interval_in_minutes": 10,
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var test = new Azure.Network.NetworkSecurityGroup("test", new()
///     {
///         Name = "acctestnsg",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var testNetworkWatcher = new Azure.Network.NetworkWatcher("test", new()
///     {
///         Name = "acctestnw",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var testAccount = new Azure.Storage.Account("test", new()
///     {
///         Name = "acctestsa",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AccountTier = "Standard",
///         AccountKind = "StorageV2",
///         AccountReplicationType = "LRS",
///         HttpsTrafficOnlyEnabled = true,
///     });
///
///     var testAnalyticsWorkspace = new Azure.OperationalInsights.AnalyticsWorkspace("test", new()
///     {
///         Name = "acctestlaw",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "PerGB2018",
///     });
///
///     var testNetworkWatcherFlowLog = new Azure.Network.NetworkWatcherFlowLog("test", new()
///     {
///         NetworkWatcherName = testNetworkWatcher.Name,
///         ResourceGroupName = example.Name,
///         Name = "example-log",
///         TargetResourceId = test.Id,
///         StorageAccountId = testAccount.Id,
///         Enabled = true,
///         RetentionPolicy = new Azure.Network.Inputs.NetworkWatcherFlowLogRetentionPolicyArgs
///         {
///             Enabled = true,
///             Days = 7,
///         },
///         TrafficAnalytics = new Azure.Network.Inputs.NetworkWatcherFlowLogTrafficAnalyticsArgs
///         {
///             Enabled = true,
///             WorkspaceId = testAnalyticsWorkspace.WorkspaceId,
///             WorkspaceRegion = testAnalyticsWorkspace.Location,
///             WorkspaceResourceId = testAnalyticsWorkspace.Id,
///             IntervalInMinutes = 10,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/operationalinsights"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := network.NewNetworkSecurityGroup(ctx, "test", &network.NetworkSecurityGroupArgs{
/// 			Name:              pulumi.String("acctestnsg"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testNetworkWatcher, err := network.NewNetworkWatcher(ctx, "test", &network.NetworkWatcherArgs{
/// 			Name:              pulumi.String("acctestnw"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testAccount, err := storage.NewAccount(ctx, "test", &storage.AccountArgs{
/// 			Name:                    pulumi.String("acctestsa"),
/// 			ResourceGroupName:       example.Name,
/// 			Location:                example.Location,
/// 			AccountTier:             pulumi.String("Standard"),
/// 			AccountKind:             pulumi.String("StorageV2"),
/// 			AccountReplicationType:  pulumi.String("LRS"),
/// 			HttpsTrafficOnlyEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testAnalyticsWorkspace, err := operationalinsights.NewAnalyticsWorkspace(ctx, "test", &operationalinsights.AnalyticsWorkspaceArgs{
/// 			Name:              pulumi.String("acctestlaw"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("PerGB2018"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkWatcherFlowLog(ctx, "test", &network.NetworkWatcherFlowLogArgs{
/// 			NetworkWatcherName: testNetworkWatcher.Name,
/// 			ResourceGroupName:  example.Name,
/// 			Name:               pulumi.String("example-log"),
/// 			TargetResourceId:   test.ID(),
/// 			StorageAccountId:   testAccount.ID(),
/// 			Enabled:            pulumi.Bool(true),
/// 			RetentionPolicy: &network.NetworkWatcherFlowLogRetentionPolicyArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Days:    pulumi.Int(7),
/// 			},
/// 			TrafficAnalytics: &network.NetworkWatcherFlowLogTrafficAnalyticsArgs{
/// 				Enabled:             pulumi.Bool(true),
/// 				WorkspaceId:         testAnalyticsWorkspace.WorkspaceId,
/// 				WorkspaceRegion:     testAnalyticsWorkspace.Location,
/// 				WorkspaceResourceId: testAnalyticsWorkspace.ID(),
/// 				IntervalInMinutes:   pulumi.Int(10),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.NetworkWatcher;
/// import com.pulumi.azure.network.NetworkWatcherArgs;
/// import com.pulumi.azure.storage.Account;
/// import com.pulumi.azure.storage.AccountArgs;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspace;
/// import com.pulumi.azure.operationalinsights.AnalyticsWorkspaceArgs;
/// import com.pulumi.azure.network.NetworkWatcherFlowLog;
/// import com.pulumi.azure.network.NetworkWatcherFlowLogArgs;
/// import com.pulumi.azure.network.inputs.NetworkWatcherFlowLogRetentionPolicyArgs;
/// import com.pulumi.azure.network.inputs.NetworkWatcherFlowLogTrafficAnalyticsArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var test = new NetworkSecurityGroup("test", NetworkSecurityGroupArgs.builder()
///             .name("acctestnsg")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var testNetworkWatcher = new NetworkWatcher("testNetworkWatcher", NetworkWatcherArgs.builder()
///             .name("acctestnw")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var testAccount = new Account("testAccount", AccountArgs.builder()
///             .name("acctestsa")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .accountTier("Standard")
///             .accountKind("StorageV2")
///             .accountReplicationType("LRS")
///             .httpsTrafficOnlyEnabled(true)
///             .build());
///
///         var testAnalyticsWorkspace = new AnalyticsWorkspace("testAnalyticsWorkspace", AnalyticsWorkspaceArgs.builder()
///             .name("acctestlaw")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("PerGB2018")
///             .build());
///
///         var testNetworkWatcherFlowLog = new NetworkWatcherFlowLog("testNetworkWatcherFlowLog", NetworkWatcherFlowLogArgs.builder()
///             .networkWatcherName(testNetworkWatcher.name())
///             .resourceGroupName(example.name())
///             .name("example-log")
///             .targetResourceId(test.id())
///             .storageAccountId(testAccount.id())
///             .enabled(true)
///             .retentionPolicy(NetworkWatcherFlowLogRetentionPolicyArgs.builder()
///                 .enabled(true)
///                 .days(7)
///                 .build())
///             .trafficAnalytics(NetworkWatcherFlowLogTrafficAnalyticsArgs.builder()
///                 .enabled(true)
///                 .workspaceId(testAnalyticsWorkspace.workspaceId())
///                 .workspaceRegion(testAnalyticsWorkspace.location())
///                 .workspaceResourceId(testAnalyticsWorkspace.id())
///                 .intervalInMinutes(10)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   test:
///     type: azure:network:NetworkSecurityGroup
///     properties:
///       name: acctestnsg
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   testNetworkWatcher:
///     type: azure:network:NetworkWatcher
///     name: test
///     properties:
///       name: acctestnw
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   testAccount:
///     type: azure:storage:Account
///     name: test
///     properties:
///       name: acctestsa
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       accountTier: Standard
///       accountKind: StorageV2
///       accountReplicationType: LRS
///       httpsTrafficOnlyEnabled: true
///   testAnalyticsWorkspace:
///     type: azure:operationalinsights:AnalyticsWorkspace
///     name: test
///     properties:
///       name: acctestlaw
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: PerGB2018
///   testNetworkWatcherFlowLog:
///     type: azure:network:NetworkWatcherFlowLog
///     name: test
///     properties:
///       networkWatcherName: ${testNetworkWatcher.name}
///       resourceGroupName: ${example.name}
///       name: example-log
///       targetResourceId: ${test.id}
///       storageAccountId: ${testAccount.id}
///       enabled: true
///       retentionPolicy:
///         enabled: true
///         days: 7
///       trafficAnalytics:
///         enabled: true
///         workspaceId: ${testAnalyticsWorkspace.workspaceId}
///         workspaceRegion: ${testAnalyticsWorkspace.location}
///         workspaceResourceId: ${testAnalyticsWorkspace.id}
///         intervalInMinutes: 10
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// Network Watcher Flow Logs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkWatcherFlowLog:NetworkWatcherFlowLog watcher1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkWatchers/watcher1/flowLogs/log1
/// ```
class NetworkWatcherFlowLog extends pulumi.CustomResource {
  /// Should Network Flow Logging be Enabled?
  late final pulumi.Output<bool> enabled;
  /// The location where the Network Watcher Flow Log resides. Changing this forces a new resource to be created. Defaults to the `location` of the Network Watcher.
  late final pulumi.Output<String> location;
  /// The name of the Network Watcher Flow Log. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> networkSecurityGroupId;
  /// The name of the Network Watcher. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkWatcherName;
  /// The name of the resource group in which the Network Watcher was deployed. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A `retention_policy` block as documented below.
  late final pulumi.Output<NetworkWatcherFlowLogRetentionPolicy> retentionPolicy;
  /// The ID of the Storage Account where flow logs are stored.
  late final pulumi.Output<String> storageAccountId;
  /// A mapping of tags which should be assigned to the Network Watcher Flow Log.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the Resource for which to enable flow logs for.
  ///
  /// &gt; **Note:** As of July 30, 2025, it is no longer possible to create new flow logs for Network Security Groups.
  late final pulumi.Output<String> targetResourceId;
  /// A `traffic_analytics` block as documented below.
  late final pulumi.Output<NetworkWatcherFlowLogTrafficAnalytics?> trafficAnalytics;
  /// The version (revision) of the flow log. Possible values are `1` and `2`. Defaults to `1`.
  late final pulumi.Output<int?> version;

  /// Creates a new [NetworkWatcherFlowLog].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkWatcherFlowLog]. {@macro pulumi_network_network_watcher_flow_log_network_watcher_flow_log_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkWatcherFlowLog(
    String name, {
    NetworkWatcherFlowLogArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkWatcherFlowLog:NetworkWatcherFlowLog',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkSecurityGroupId = registerOutput<String>('networkSecurityGroupId');
    networkWatcherName = registerOutput<String>('networkWatcherName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionPolicy = registerOutput<NetworkWatcherFlowLogRetentionPolicy>('retentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkWatcherFlowLogRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccountId = registerOutput<String>('storageAccountId');
    tags = registerOutput<Map<String, String>?>('tags');
    targetResourceId = registerOutput<String>('targetResourceId');
    trafficAnalytics = registerOutput<NetworkWatcherFlowLogTrafficAnalytics?>('trafficAnalytics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkWatcherFlowLogTrafficAnalytics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<int?>('version');
  }

  /// Gets an existing [NetworkWatcherFlowLog] resource's state with the given [name] and [id].
  static NetworkWatcherFlowLog get(
    String name,
    pulumi.Input<String> id, {
    NetworkWatcherFlowLogState? state,
  }) {
    return NetworkWatcherFlowLog._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkWatcherFlowLog._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/networkWatcherFlowLog:NetworkWatcherFlowLog',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    enabled = registerOutput<bool>('enabled');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkSecurityGroupId = registerOutput<String>('networkSecurityGroupId');
    networkWatcherName = registerOutput<String>('networkWatcherName');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    retentionPolicy = registerOutput<NetworkWatcherFlowLogRetentionPolicy>('retentionPolicy', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkWatcherFlowLogRetentionPolicy.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    storageAccountId = registerOutput<String>('storageAccountId');
    tags = registerOutput<Map<String, String>?>('tags');
    targetResourceId = registerOutput<String>('targetResourceId');
    trafficAnalytics = registerOutput<NetworkWatcherFlowLogTrafficAnalytics?>('trafficAnalytics', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NetworkWatcherFlowLogTrafficAnalytics.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    version = registerOutput<int?>('version');
  }
}
