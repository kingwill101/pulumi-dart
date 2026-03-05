import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_protection_cluster_args.dart';
import 'replication_protection_cluster_properties_response.dart';

/// Replication protection Cluster.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2024-02-01.
///
/// Other available API versions: 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Replication protection Cluster.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationProtectionCluster = new AzureNative.RecoveryServices.ReplicationProtectionCluster("replicationProtectionCluster", new()
///     {
///         FabricName = "eastus",
///         Properties = new AzureNative.RecoveryServices.Inputs.ReplicationProtectionClusterPropertiesArgs
///         {
///             PolicyId = "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/24-hour-retention-policy",
///             ProviderSpecificDetails = new AzureNative.RecoveryServices.Inputs.A2AReplicationProtectionClusterDetailsArgs
///             {
///                 InstanceType = "A2A",
///             },
///             RecoveryContainerId = "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/centraluseuap/replicationProtectionContainers/centraluseuap-container",
///         },
///         ProtectionContainerName = "eastus-container",
///         ReplicationProtectionClusterName = "cluster12",
///         ResourceGroupName = "resourceGroupPS1",
///         ResourceName = "vault1",
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
/// 	recoveryservices "github.com/pulumi/pulumi-azure-native-sdk/recoveryservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := recoveryservices.NewReplicationProtectionCluster(ctx, "replicationProtectionCluster", &recoveryservices.ReplicationProtectionClusterArgs{
/// 			FabricName: pulumi.String("eastus"),
/// 			Properties: &recoveryservices.ReplicationProtectionClusterPropertiesArgs{
/// 				PolicyId: pulumi.String("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/24-hour-retention-policy"),
/// 				ProviderSpecificDetails: &recoveryservices.A2AReplicationProtectionClusterDetailsArgs{
/// 					InstanceType: pulumi.String("A2A"),
/// 				},
/// 				RecoveryContainerId: pulumi.String("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/centraluseuap/replicationProtectionContainers/centraluseuap-container"),
/// 			},
/// 			ProtectionContainerName:          pulumi.String("eastus-container"),
/// 			ReplicationProtectionClusterName: pulumi.String("cluster12"),
/// 			ResourceGroupName:                pulumi.String("resourceGroupPS1"),
/// 			ResourceName:                     pulumi.String("vault1"),
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
/// import com.pulumi.azurenative.recoveryservices.ReplicationProtectionCluster;
/// import com.pulumi.azurenative.recoveryservices.ReplicationProtectionClusterArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.ReplicationProtectionClusterPropertiesArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.A2AReplicationProtectionClusterDetailsArgs;
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
///         var replicationProtectionCluster = new ReplicationProtectionCluster("replicationProtectionCluster", ReplicationProtectionClusterArgs.builder()
///             .fabricName("eastus")
///             .properties(ReplicationProtectionClusterPropertiesArgs.builder()
///                 .policyId("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/24-hour-retention-policy")
///                 .providerSpecificDetails(Map.of("instanceType", "A2A"))
///                 .recoveryContainerId("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/centraluseuap/replicationProtectionContainers/centraluseuap-container")
///                 .build())
///             .protectionContainerName("eastus-container")
///             .replicationProtectionClusterName("cluster12")
///             .resourceGroupName("resourceGroupPS1")
///             .resourceName("vault1")
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
/// const replicationProtectionCluster = new azure_native.recoveryservices.ReplicationProtectionCluster("replicationProtectionCluster", {
///     fabricName: "eastus",
///     properties: {
///         policyId: "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/24-hour-retention-policy",
///         providerSpecificDetails: {
///             instanceType: "A2A",
///         },
///         recoveryContainerId: "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/centraluseuap/replicationProtectionContainers/centraluseuap-container",
///     },
///     protectionContainerName: "eastus-container",
///     replicationProtectionClusterName: "cluster12",
///     resourceGroupName: "resourceGroupPS1",
///     resourceName: "vault1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication_protection_cluster = azure_native.recoveryservices.ReplicationProtectionCluster("replicationProtectionCluster",
///     fabric_name="eastus",
///     properties={
///         "policy_id": "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/24-hour-retention-policy",
///         "provider_specific_details": {
///             "instance_type": "A2A",
///         },
///         "recovery_container_id": "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/centraluseuap/replicationProtectionContainers/centraluseuap-container",
///     },
///     protection_container_name="eastus-container",
///     replication_protection_cluster_name="cluster12",
///     resource_group_name="resourceGroupPS1",
///     resource_name_="vault1")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationProtectionCluster:
///     type: azure-native:recoveryservices:ReplicationProtectionCluster
///     properties:
///       fabricName: eastus
///       properties:
///         policyId: /Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/24-hour-retention-policy
///         providerSpecificDetails:
///           instanceType: A2A
///         recoveryContainerId: /Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/centraluseuap/replicationProtectionContainers/centraluseuap-container
///       protectionContainerName: eastus-container
///       replicationProtectionClusterName: cluster12
///       resourceGroupName: resourceGroupPS1
///       resourceName: vault1
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
/// $ pulumi import azure-native:recoveryservices:ReplicationProtectionCluster cluster12 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationProtectionContainers/{protectionContainerName}/replicationProtectionClusters/{replicationProtectionClusterName}
/// ```
class ReplicationProtectionCluster extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the protection cluster.
  late final pulumi.Output<String> name;

  /// The custom data.
  late final pulumi.Output<ReplicationProtectionClusterPropertiesResponse>
  properties;

  /// The Type of the object.
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationProtectionCluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationProtectionCluster]. {@macro pulumi_recoveryservices_replication_protection_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationProtectionCluster(
    String name, {
    ReplicationProtectionClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:recoveryservices:ReplicationProtectionCluster',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ReplicationProtectionClusterPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ReplicationProtectionClusterPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
