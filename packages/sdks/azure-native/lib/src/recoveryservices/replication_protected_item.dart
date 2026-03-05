import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_protected_item_args.dart';
import 'replication_protected_item_properties_response.dart';

/// Replication protected item.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Enables protection.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationProtectedItem = new AzureNative.RecoveryServices.ReplicationProtectedItem("replicationProtectedItem", new()
///     {
///         FabricName = "cloud1",
///         Properties = new AzureNative.RecoveryServices.Inputs.EnableProtectionInputPropertiesArgs
///         {
///             PolicyId = "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1",
///             ProtectableItemId = "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectableItems/f8491e4f-817a-40dd-a90c-af773978c75b",
///             ProviderSpecificDetails = new AzureNative.RecoveryServices.Inputs.HyperVReplicaAzureEnableProtectionInputArgs
///             {
///                 InstanceType = "HyperVReplicaAzure",
///             },
///         },
///         ProtectionContainerName = "cloud_6d224fc6-f326-5d35-96de-fbf51efb3179",
///         ReplicatedProtectedItemName = "f8491e4f-817a-40dd-a90c-af773978c75b",
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
/// 		_, err := recoveryservices.NewReplicationProtectedItem(ctx, "replicationProtectedItem", &recoveryservices.ReplicationProtectedItemArgs{
/// 			FabricName: pulumi.String("cloud1"),
/// 			Properties: &recoveryservices.EnableProtectionInputPropertiesArgs{
/// 				PolicyId:          pulumi.String("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1"),
/// 				ProtectableItemId: pulumi.String("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectableItems/f8491e4f-817a-40dd-a90c-af773978c75b"),
/// 				ProviderSpecificDetails: recoveryservices.HyperVReplicaAzureEnableProtectionInput{
/// 					InstanceType: "HyperVReplicaAzure",
/// 				},
/// 			},
/// 			ProtectionContainerName:     pulumi.String("cloud_6d224fc6-f326-5d35-96de-fbf51efb3179"),
/// 			ReplicatedProtectedItemName: pulumi.String("f8491e4f-817a-40dd-a90c-af773978c75b"),
/// 			ResourceGroupName:           pulumi.String("resourceGroupPS1"),
/// 			ResourceName:                pulumi.String("vault1"),
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
/// import com.pulumi.azurenative.recoveryservices.ReplicationProtectedItem;
/// import com.pulumi.azurenative.recoveryservices.ReplicationProtectedItemArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.EnableProtectionInputPropertiesArgs;
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
///         var replicationProtectedItem = new ReplicationProtectedItem("replicationProtectedItem", ReplicationProtectedItemArgs.builder()
///             .fabricName("cloud1")
///             .properties(EnableProtectionInputPropertiesArgs.builder()
///                 .policyId("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1")
///                 .protectableItemId("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectableItems/f8491e4f-817a-40dd-a90c-af773978c75b")
///                 .providerSpecificDetails(HyperVReplicaAzureEnableProtectionInputArgs.builder()
///                     .instanceType("HyperVReplicaAzure")
///                     .build())
///                 .build())
///             .protectionContainerName("cloud_6d224fc6-f326-5d35-96de-fbf51efb3179")
///             .replicatedProtectedItemName("f8491e4f-817a-40dd-a90c-af773978c75b")
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
/// const replicationProtectedItem = new azure_native.recoveryservices.ReplicationProtectedItem("replicationProtectedItem", {
///     fabricName: "cloud1",
///     properties: {
///         policyId: "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1",
///         protectableItemId: "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectableItems/f8491e4f-817a-40dd-a90c-af773978c75b",
///         providerSpecificDetails: {
///             instanceType: "HyperVReplicaAzure",
///         },
///     },
///     protectionContainerName: "cloud_6d224fc6-f326-5d35-96de-fbf51efb3179",
///     replicatedProtectedItemName: "f8491e4f-817a-40dd-a90c-af773978c75b",
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
/// replication_protected_item = azure_native.recoveryservices.ReplicationProtectedItem("replicationProtectedItem",
///     fabric_name="cloud1",
///     properties={
///         "policy_id": "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1",
///         "protectable_item_id": "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectableItems/f8491e4f-817a-40dd-a90c-af773978c75b",
///         "provider_specific_details": {
///             "instance_type": "HyperVReplicaAzure",
///         },
///     },
///     protection_container_name="cloud_6d224fc6-f326-5d35-96de-fbf51efb3179",
///     replicated_protected_item_name="f8491e4f-817a-40dd-a90c-af773978c75b",
///     resource_group_name="resourceGroupPS1",
///     resource_name_="vault1")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationProtectedItem:
///     type: azure-native:recoveryservices:ReplicationProtectedItem
///     properties:
///       fabricName: cloud1
///       properties:
///         policyId: /Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1
///         protectableItemId: /Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/cloud1/replicationProtectionContainers/cloud_6d224fc6-f326-5d35-96de-fbf51efb3179/replicationProtectableItems/f8491e4f-817a-40dd-a90c-af773978c75b
///         providerSpecificDetails:
///           instanceType: HyperVReplicaAzure
///       protectionContainerName: cloud_6d224fc6-f326-5d35-96de-fbf51efb3179
///       replicatedProtectedItemName: f8491e4f-817a-40dd-a90c-af773978c75b
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
/// $ pulumi import azure-native:recoveryservices:ReplicationProtectedItem f8491e4f-817a-40dd-a90c-af773978c75b /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationProtectionContainers/{protectionContainerName}/replicationProtectedItems/{replicatedProtectedItemName}
/// ```
class ReplicationProtectedItem extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Location
  late final pulumi.Output<String?> location;

  /// Resource Name
  late final pulumi.Output<String> name;

  /// The custom data.
  late final pulumi.Output<ReplicationProtectedItemPropertiesResponse>
  properties;

  /// Resource Type
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationProtectedItem].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationProtectedItem]. {@macro pulumi_recoveryservices_replication_protected_item_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationProtectedItem(
    String name, {
    ReplicationProtectedItemArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:recoveryservices:ReplicationProtectedItem',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ReplicationProtectedItemPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ReplicationProtectedItemPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
