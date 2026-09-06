import 'package:pulumi/pulumi.dart' as pulumi;
import 'protection_container_mapping_properties_response.dart';
import 'replication_protection_container_mapping_args.dart';

/// Protection container mapping object.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01, 2026-01-01, 2026-02-01, 2026-03-31-preview, 2026-05-01, 2026-05-31-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create protection container mapping.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationProtectionContainerMapping = new AzureNative.RecoveryServices.ReplicationProtectionContainerMapping("replicationProtectionContainerMapping", new()
///     {
///         FabricName = "cloud1",
///         MappingName = "cloud1protectionprofile1",
///         Properties = new AzureNative.RecoveryServices.Inputs.CreateProtectionContainerMappingInputPropertiesArgs
///         {
///             PolicyId = "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1",
///             ProviderSpecificInput =
///             {
///                 { "instanceType", "ReplicationProviderSpecificContainerMappingInput" },
///             },
///             TargetProtectionContainerId = "Microsoft Azure",
///         },
///         ProtectionContainerName = "cloud_6d224fc6-f326-5d35-96de-fbf51efb3179",
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
/// 		_, err := recoveryservices.NewReplicationProtectionContainerMapping(ctx, "replicationProtectionContainerMapping", &recoveryservices.ReplicationProtectionContainerMappingArgs{
/// 			FabricName:  pulumi.String("cloud1"),
/// 			MappingName: pulumi.String("cloud1protectionprofile1"),
/// 			Properties: &recoveryservices.CreateProtectionContainerMappingInputPropertiesArgs{
/// 				PolicyId: pulumi.String("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1"),
/// 				ProviderSpecificInput: pulumi.Any{
/// 					InstanceType: pulumi.String("ReplicationProviderSpecificContainerMappingInput"),
/// 				},
/// 				TargetProtectionContainerId: pulumi.String("Microsoft Azure"),
/// 			},
/// 			ProtectionContainerName: pulumi.String("cloud_6d224fc6-f326-5d35-96de-fbf51efb3179"),
/// 			ResourceGroupName:       pulumi.String("resourceGroupPS1"),
/// 			ResourceName:            pulumi.String("vault1"),
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
/// resource "azure-native_recoveryservices_replicationprotectioncontainermapping" "replicationProtectionContainerMapping" {
///   fabric_name  = "cloud1"
///   mapping_name = "cloud1protectionprofile1"
///   properties = {
///     policy_id = "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1"
///     provider_specific_input = {
///       "instanceType" = "ReplicationProviderSpecificContainerMappingInput"
///     }
///     target_protection_container_id = "Microsoft Azure"
///   }
///   protection_container_name = "cloud_6d224fc6-f326-5d35-96de-fbf51efb3179"
///   resource_group_name       = "resourceGroupPS1"
///   resource_name             = "vault1"
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
/// import com.pulumi.azurenative.recoveryservices.ReplicationProtectionContainerMapping;
/// import com.pulumi.azurenative.recoveryservices.ReplicationProtectionContainerMappingArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.CreateProtectionContainerMappingInputPropertiesArgs;
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
///         var replicationProtectionContainerMapping = new ReplicationProtectionContainerMapping("replicationProtectionContainerMapping", ReplicationProtectionContainerMappingArgs.builder()
///             .fabricName("cloud1")
///             .mappingName("cloud1protectionprofile1")
///             .properties(CreateProtectionContainerMappingInputPropertiesArgs.builder()
///                 .policyId("/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1")
///                 .providerSpecificInput(Map.of("instanceType", "ReplicationProviderSpecificContainerMappingInput"))
///                 .targetProtectionContainerId("Microsoft Azure")
///                 .build())
///             .protectionContainerName("cloud_6d224fc6-f326-5d35-96de-fbf51efb3179")
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
/// const replicationProtectionContainerMapping = new azure_native.recoveryservices.ReplicationProtectionContainerMapping("replicationProtectionContainerMapping", {
///     fabricName: "cloud1",
///     mappingName: "cloud1protectionprofile1",
///     properties: {
///         policyId: "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1",
///         providerSpecificInput: {
///             instanceType: "ReplicationProviderSpecificContainerMappingInput",
///         },
///         targetProtectionContainerId: "Microsoft Azure",
///     },
///     protectionContainerName: "cloud_6d224fc6-f326-5d35-96de-fbf51efb3179",
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
/// replication_protection_container_mapping = azure_native.recoveryservices.ReplicationProtectionContainerMapping("replicationProtectionContainerMapping",
///     fabric_name="cloud1",
///     mapping_name="cloud1protectionprofile1",
///     properties={
///         "policy_id": "/Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1",
///         "provider_specific_input": {
///             "instance_type": "ReplicationProviderSpecificContainerMappingInput",
///         },
///         "target_protection_container_id": "Microsoft Azure",
///     },
///     protection_container_name="cloud_6d224fc6-f326-5d35-96de-fbf51efb3179",
///     resource_group_name="resourceGroupPS1",
///     resource_name_="vault1")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationProtectionContainerMapping:
///     type: azure-native:recoveryservices:ReplicationProtectionContainerMapping
///     properties:
///       fabricName: cloud1
///       mappingName: cloud1protectionprofile1
///       properties:
///         policyId: /Subscriptions/c183865e-6077-46f2-a3b1-deb0f4f4650a/resourceGroups/resourceGroupPS1/providers/Microsoft.RecoveryServices/vaults/vault1/replicationPolicies/protectionprofile1
///         providerSpecificInput:
///           instanceType: ReplicationProviderSpecificContainerMappingInput
///         targetProtectionContainerId: Microsoft Azure
///       protectionContainerName: cloud_6d224fc6-f326-5d35-96de-fbf51efb3179
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
/// $ pulumi import azure-native:recoveryservices:ReplicationProtectionContainerMapping cloud1protectionprofile1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}/replicationProtectionContainers/{protectionContainerName}/replicationProtectionContainerMappings/{mappingName}
/// ```
class ReplicationProtectionContainerMapping extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Location
  late final pulumi.Output<String?> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// The custom data.
  late final pulumi.Output<ProtectionContainerMappingPropertiesResponse> properties;
  /// Resource Type
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationProtectionContainerMapping].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationProtectionContainerMapping]. {@macro pulumi_recoveryservices_replication_protection_container_mapping_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationProtectionContainerMapping(
    String name, {
    ReplicationProtectionContainerMappingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:ReplicationProtectionContainerMapping',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProtectionContainerMappingPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProtectionContainerMappingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ReplicationProtectionContainerMapping] resource.
  ReplicationProtectionContainerMapping.reference(String urn)
    : super(
        'azure-native:recoveryservices:ReplicationProtectionContainerMapping',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ProtectionContainerMappingPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ProtectionContainerMappingPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
