import 'package:pulumi/pulumi.dart' as pulumi;
import 'replication_storage_classification_mapping_args.dart';
import 'storage_classification_mapping_properties_response.dart';

/// Storage mapping object.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create storage classification mapping.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationStorageClassificationMapping = new AzureNative.RecoveryServices.ReplicationStorageClassificationMapping("replicationStorageClassificationMapping", new()
///     {
///         FabricName = "2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0",
///         Properties = new AzureNative.RecoveryServices.Inputs.StorageMappingInputPropertiesArgs
///         {
///             TargetStorageClassificationId = "/Subscriptions/9112a37f-0f3e-46ec-9c00-060c6edca071/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0/replicationStorageClassifications/8891569e-aaef-4a46-a4a0-78c14f2d7b09",
///         },
///         ResourceGroupName = "resourceGroupPS1",
///         ResourceName = "vault1",
///         StorageClassificationMappingName = "testStorageMapping",
///         StorageClassificationName = "8891569e-aaef-4a46-a4a0-78c14f2d7b09",
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
/// 		_, err := recoveryservices.NewReplicationStorageClassificationMapping(ctx, "replicationStorageClassificationMapping", &recoveryservices.ReplicationStorageClassificationMappingArgs{
/// 			FabricName: pulumi.String("2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0"),
/// 			Properties: &recoveryservices.StorageMappingInputPropertiesArgs{
/// 				TargetStorageClassificationId: pulumi.String("/Subscriptions/9112a37f-0f3e-46ec-9c00-060c6edca071/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0/replicationStorageClassifications/8891569e-aaef-4a46-a4a0-78c14f2d7b09"),
/// 			},
/// 			ResourceGroupName:                pulumi.String("resourceGroupPS1"),
/// 			ResourceName:                     pulumi.String("vault1"),
/// 			StorageClassificationMappingName: pulumi.String("testStorageMapping"),
/// 			StorageClassificationName:        pulumi.String("8891569e-aaef-4a46-a4a0-78c14f2d7b09"),
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
/// import com.pulumi.azurenative.recoveryservices.ReplicationStorageClassificationMapping;
/// import com.pulumi.azurenative.recoveryservices.ReplicationStorageClassificationMappingArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.StorageMappingInputPropertiesArgs;
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
///         var replicationStorageClassificationMapping = new ReplicationStorageClassificationMapping("replicationStorageClassificationMapping", ReplicationStorageClassificationMappingArgs.builder()
///             .fabricName("2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0")
///             .properties(StorageMappingInputPropertiesArgs.builder()
///                 .targetStorageClassificationId("/Subscriptions/9112a37f-0f3e-46ec-9c00-060c6edca071/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0/replicationStorageClassifications/8891569e-aaef-4a46-a4a0-78c14f2d7b09")
///                 .build())
///             .resourceGroupName("resourceGroupPS1")
///             .resourceName("vault1")
///             .storageClassificationMappingName("testStorageMapping")
///             .storageClassificationName("8891569e-aaef-4a46-a4a0-78c14f2d7b09")
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
/// const replicationStorageClassificationMapping = new azure_native.recoveryservices.ReplicationStorageClassificationMapping("replicationStorageClassificationMapping", {
///     fabricName: "2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0",
///     properties: {
///         targetStorageClassificationId: "/Subscriptions/9112a37f-0f3e-46ec-9c00-060c6edca071/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0/replicationStorageClassifications/8891569e-aaef-4a46-a4a0-78c14f2d7b09",
///     },
///     resourceGroupName: "resourceGroupPS1",
///     resourceName: "vault1",
///     storageClassificationMappingName: "testStorageMapping",
///     storageClassificationName: "8891569e-aaef-4a46-a4a0-78c14f2d7b09",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// replication_storage_classification_mapping = azure_native.recoveryservices.ReplicationStorageClassificationMapping("replicationStorageClassificationMapping",
///     fabric_name="2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0",
///     properties={
///         "target_storage_classification_id": "/Subscriptions/9112a37f-0f3e-46ec-9c00-060c6edca071/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0/replicationStorageClassifications/8891569e-aaef-4a46-a4a0-78c14f2d7b09",
///     },
///     resource_group_name="resourceGroupPS1",
///     resource_name_="vault1",
///     storage_classification_mapping_name="testStorageMapping",
///     storage_classification_name="8891569e-aaef-4a46-a4a0-78c14f2d7b09")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationStorageClassificationMapping:
///     type: azure-native:recoveryservices:ReplicationStorageClassificationMapping
///     properties:
///       fabricName: 2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0
///       properties:
///         targetStorageClassificationId: /Subscriptions/9112a37f-0f3e-46ec-9c00-060c6edca071/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationFabrics/2a48e3770ac08aa2be8bfbd94fcfb1cbf2dcc487b78fb9d3bd778304441b06a0/replicationStorageClassifications/8891569e-aaef-4a46-a4a0-78c14f2d7b09
///       resourceGroupName: resourceGroupPS1
///       resourceName: vault1
///       storageClassificationMappingName: testStorageMapping
///       storageClassificationName: 8891569e-aaef-4a46-a4a0-78c14f2d7b09
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
/// $ pulumi import azure-native:recoveryservices:ReplicationStorageClassificationMapping testStorageMapping /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationStorageClassifications/{storageClassificationName}/replicationStorageClassificationMappings/{storageClassificationMappingName}
/// ```
class ReplicationStorageClassificationMapping extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Location
  late final pulumi.Output<String?> location;

  /// Resource Name
  late final pulumi.Output<String> name;

  /// Properties of the storage mapping object.
  late final pulumi.Output<StorageClassificationMappingPropertiesResponse>
  properties;

  /// Resource Type
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationStorageClassificationMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationStorageClassificationMapping]. {@macro pulumi_recoveryservices_replication_storage_classification_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationStorageClassificationMapping(
    String name, {
    ReplicationStorageClassificationMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:recoveryservices:ReplicationStorageClassificationMapping',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<StorageClassificationMappingPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return StorageClassificationMappingPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
