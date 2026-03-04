import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_manager_args.dart';
import 'extended_location_response.dart';
import 'managed_resource_group_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';

/// Uses Azure REST API version 2025-02-01. In version 2.x of the Azure Native provider, it used API version 2023-10-01-preview.
///
/// Other available API versions: 2024-07-01, 2024-10-01-preview, 2025-07-01-preview, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native networkcloud [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update cluster manager
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var clusterManager = new AzureNative.NetworkCloud.ClusterManager("clusterManager", new()
///     {
///         AnalyticsWorkspaceId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/microsoft.operationalInsights/workspaces/logAnalyticsWorkspaceName",
///         ClusterManagerName = "clusterManagerName",
///         FabricControllerId = "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/fabricControllerName",
///         Identity = new AzureNative.NetworkCloud.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.NetworkCloud.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "location",
///         ManagedResourceGroupConfiguration = new AzureNative.NetworkCloud.Inputs.ManagedResourceGroupConfigurationArgs
///         {
///             Location = "East US",
///             Name = "my-managed-rg",
///         },
///         ResourceGroupName = "resourceGroupName",
///         Tags =
///         {
///             { "key1", "myvalue1" },
///             { "key2", "myvalue2" },
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
/// 	networkcloud "github.com/pulumi/pulumi-azure-native-sdk/networkcloud/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkcloud.NewClusterManager(ctx, "clusterManager", &networkcloud.ClusterManagerArgs{
/// 			AnalyticsWorkspaceId: pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/microsoft.operationalInsights/workspaces/logAnalyticsWorkspaceName"),
/// 			ClusterManagerName:   pulumi.String("clusterManagerName"),
/// 			FabricControllerId:   pulumi.String("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/fabricControllerName"),
/// 			Identity: &networkcloud.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(networkcloud.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("location"),
/// 			ManagedResourceGroupConfiguration: &networkcloud.ManagedResourceGroupConfigurationArgs{
/// 				Location: pulumi.String("East US"),
/// 				Name:     pulumi.String("my-managed-rg"),
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("myvalue1"),
/// 				"key2": pulumi.String("myvalue2"),
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.networkcloud.ClusterManager;
/// import com.pulumi.azurenative.networkcloud.ClusterManagerArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ManagedServiceIdentityArgs;
/// import com.pulumi.azurenative.networkcloud.inputs.ManagedResourceGroupConfigurationArgs;
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
///         var clusterManager = new ClusterManager("clusterManager", ClusterManagerArgs.builder()
///             .analyticsWorkspaceId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/microsoft.operationalInsights/workspaces/logAnalyticsWorkspaceName")
///             .clusterManagerName("clusterManagerName")
///             .fabricControllerId("/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/fabricControllerName")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("location")
///             .managedResourceGroupConfiguration(ManagedResourceGroupConfigurationArgs.builder()
///                 .location("East US")
///                 .name("my-managed-rg")
///                 .build())
///             .resourceGroupName("resourceGroupName")
///             .tags(Map.ofEntries(
///                 Map.entry("key1", "myvalue1"),
///                 Map.entry("key2", "myvalue2")
///             ))
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
/// const clusterManager = new azure_native.networkcloud.ClusterManager("clusterManager", {
///     analyticsWorkspaceId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/microsoft.operationalInsights/workspaces/logAnalyticsWorkspaceName",
///     clusterManagerName: "clusterManagerName",
///     fabricControllerId: "/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/fabricControllerName",
///     identity: {
///         type: azure_native.networkcloud.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "location",
///     managedResourceGroupConfiguration: {
///         location: "East US",
///         name: "my-managed-rg",
///     },
///     resourceGroupName: "resourceGroupName",
///     tags: {
///         key1: "myvalue1",
///         key2: "myvalue2",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cluster_manager = azure_native.networkcloud.ClusterManager("clusterManager",
///     analytics_workspace_id="/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/microsoft.operationalInsights/workspaces/logAnalyticsWorkspaceName",
///     cluster_manager_name="clusterManagerName",
///     fabric_controller_id="/subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/fabricControllerName",
///     identity={
///         "type": azure_native.networkcloud.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="location",
///     managed_resource_group_configuration={
///         "location": "East US",
///         "name": "my-managed-rg",
///     },
///     resource_group_name="resourceGroupName",
///     tags={
///         "key1": "myvalue1",
///         "key2": "myvalue2",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   clusterManager:
///     type: azure-native:networkcloud:ClusterManager
///     properties:
///       analyticsWorkspaceId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/microsoft.operationalInsights/workspaces/logAnalyticsWorkspaceName
///       clusterManagerName: clusterManagerName
///       fabricControllerId: /subscriptions/123e4567-e89b-12d3-a456-426655440000/resourceGroups/resourceGroupName/providers/Microsoft.ManagedNetworkFabric/networkFabricControllers/fabricControllerName
///       identity:
///         type: SystemAssigned
///       location: location
///       managedResourceGroupConfiguration:
///         location: East US
///         name: my-managed-rg
///       resourceGroupName: resourceGroupName
///       tags:
///         key1: myvalue1
///         key2: myvalue2
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
/// $ pulumi import azure-native:networkcloud:ClusterManager clusterManagerName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NetworkCloud/clusterManagers/{clusterManagerName}
/// ```
class ClusterManager extends pulumi.CustomResource {
  /// The resource ID of the Log Analytics workspace that is used for the logs collection.
  late final pulumi.Output<String?> analyticsWorkspaceId;

  /// Field deprecated, this value will no longer influence the cluster manager allocation process and will be removed in a future version. The Azure availability zones within the region that will be used to support the cluster manager resource.
  late final pulumi.Output<List<String>?> availabilityZones;

  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The list of the cluster versions the manager supports. It is used as input in clusterVersion property of a cluster resource.
  late final pulumi.Output<List<Map<String, dynamic>>> clusterVersions;

  /// The detailed status that provides additional information about the cluster manager.
  late final pulumi.Output<String> detailedStatus;

  /// The descriptive message about the current detailed status.
  late final pulumi.Output<String> detailedStatusMessage;

  /// Resource ETag.
  late final pulumi.Output<String> etag;

  /// The resource ID of the fabric controller that has one to one mapping with the cluster manager.
  late final pulumi.Output<String> fabricControllerId;

  /// The identity of the cluster manager.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The configuration of the managed resource group associated with the resource.
  late final pulumi.Output<ManagedResourceGroupConfigurationResponse?>
  managedResourceGroupConfiguration;

  /// The extended location (custom location) that represents the cluster manager's control plane location. This extended location is used when creating cluster and rack manifest resources.
  late final pulumi.Output<ExtendedLocationResponse> managerExtendedLocation;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The provisioning state of the cluster manager.
  late final pulumi.Output<String> provisioningState;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Field deprecated, this value will no longer influence the cluster manager allocation process and will be removed in a future version. The size of the Azure virtual machines to use for hosting the cluster manager resource.
  late final pulumi.Output<String?> vmSize;

  /// Creates a new [ClusterManager].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ClusterManager]. {@macro pulumi_networkcloud_cluster_manager_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ClusterManager(
    String name, {
    ClusterManagerArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:networkcloud:ClusterManager',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    analyticsWorkspaceId = registerOutput<String?>('analyticsWorkspaceId');
    availabilityZones = registerOutput<List<String>?>('availabilityZones');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    clusterVersions = registerOutput<List<Map<String, dynamic>>>(
      'clusterVersions',
    );
    detailedStatus = registerOutput<String>('detailedStatus');
    detailedStatusMessage = registerOutput<String>('detailedStatusMessage');
    etag = registerOutput<String>('etag');
    fabricControllerId = registerOutput<String>('fabricControllerId');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    location = registerOutput<String>('location');
    managedResourceGroupConfiguration =
        registerOutput<ManagedResourceGroupConfigurationResponse?>(
          'managedResourceGroupConfiguration',
        );
    managerExtendedLocation = registerOutput<ExtendedLocationResponse>(
      'managerExtendedLocation',
    );
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    vmSize = registerOutput<String?>('vmSize');
  }
}
