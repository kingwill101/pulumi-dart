import 'package:pulumi/pulumi.dart' as pulumi;
import 'fabric_properties_response.dart';
import 'replication_fabric_args.dart';

/// Fabric definition.
///
/// Uses Azure REST API version 2024-10-01. In version 2.x of the Azure Native provider, it used API version 2023-04-01.
///
/// Other available API versions: 2023-02-01, 2023-04-01, 2023-06-01, 2023-08-01, 2024-01-01, 2024-02-01, 2024-04-01, 2025-01-01, 2025-02-01, 2025-08-01, 2026-01-01, 2026-02-01, 2026-03-31-preview, 2026-05-01, 2026-05-31-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native recoveryservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates an Azure Site Recovery fabric.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var replicationFabric = new AzureNative.RecoveryServices.ReplicationFabric("replicationFabric", new()
///     {
///         FabricName = "cloud1",
///         Properties = new AzureNative.RecoveryServices.Inputs.FabricCreationInputPropertiesArgs
///         {
///             CustomDetails =
///             {
///                 { "instanceType", "FabricSpecificCreationInput" },
///             },
///         },
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
/// 		_, err := recoveryservices.NewReplicationFabric(ctx, "replicationFabric", &recoveryservices.ReplicationFabricArgs{
/// 			FabricName: pulumi.String("cloud1"),
/// 			Properties: &recoveryservices.FabricCreationInputPropertiesArgs{
/// 				CustomDetails: pulumi.Any{
/// 					InstanceType: pulumi.String("FabricSpecificCreationInput"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("resourceGroupPS1"),
/// 			ResourceName:      pulumi.String("vault1"),
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
/// resource "azure-native_recoveryservices_replicationfabric" "replicationFabric" {
///   fabric_name = "cloud1"
///   properties = {
///     custom_details = {
///       "instanceType" = "FabricSpecificCreationInput"
///     }
///   }
///   resource_group_name = "resourceGroupPS1"
///   resource_name       = "vault1"
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
/// import com.pulumi.azurenative.recoveryservices.ReplicationFabric;
/// import com.pulumi.azurenative.recoveryservices.ReplicationFabricArgs;
/// import com.pulumi.azurenative.recoveryservices.inputs.FabricCreationInputPropertiesArgs;
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
///         var replicationFabric = new ReplicationFabric("replicationFabric", ReplicationFabricArgs.builder()
///             .fabricName("cloud1")
///             .properties(FabricCreationInputPropertiesArgs.builder()
///                 .customDetails(Map.of("instanceType", "FabricSpecificCreationInput"))
///                 .build())
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
/// const replicationFabric = new azure_native.recoveryservices.ReplicationFabric("replicationFabric", {
///     fabricName: "cloud1",
///     properties: {
///         customDetails: {
///             instanceType: "FabricSpecificCreationInput",
///         },
///     },
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
/// replication_fabric = azure_native.recoveryservices.ReplicationFabric("replicationFabric",
///     fabric_name="cloud1",
///     properties={
///         "custom_details": {
///             "instance_type": "FabricSpecificCreationInput",
///         },
///     },
///     resource_group_name="resourceGroupPS1",
///     resource_name_="vault1")
///
/// ```
///
/// ```yaml
/// resources:
///   replicationFabric:
///     type: azure-native:recoveryservices:ReplicationFabric
///     properties:
///       fabricName: cloud1
///       properties:
///         customDetails:
///           instanceType: FabricSpecificCreationInput
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
/// $ pulumi import azure-native:recoveryservices:ReplicationFabric cloud1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationFabrics/{fabricName}
/// ```
class ReplicationFabric extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource Location
  late final pulumi.Output<String?> location;
  /// Resource Name
  late final pulumi.Output<String> name;
  /// Fabric related data.
  late final pulumi.Output<FabricPropertiesResponse> properties;
  /// Resource Type
  late final pulumi.Output<String> type;

  /// Creates a new [ReplicationFabric].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ReplicationFabric]. {@macro pulumi_recoveryservices_replication_fabric_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ReplicationFabric(
    String name, {
    ReplicationFabricArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:recoveryservices:ReplicationFabric',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<FabricPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FabricPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
