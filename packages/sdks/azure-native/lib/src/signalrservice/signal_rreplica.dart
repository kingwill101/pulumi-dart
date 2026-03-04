import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_sku_response.dart';
import 'signal_rreplica_args.dart';
import 'system_data_response.dart';

/// A class represent a replica resource.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native signalrservice [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SignalRReplicas_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var signalRReplica = new AzureNative.SignalRService.SignalRReplica("signalRReplica", new()
///     {
///         Location = "eastus",
///         ReplicaName = "mySignalRService-eastus",
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "mySignalRService",
///         ResourceStopped = "false",
///         Sku = new AzureNative.SignalRService.Inputs.ResourceSkuArgs
///         {
///             Capacity = 1,
///             Name = "Premium_P1",
///             Tier = AzureNative.SignalRService.SignalRSkuTier.Premium,
///         },
///         Tags =
///         {
///             { "key1", "value1" },
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
/// 	signalrservice "github.com/pulumi/pulumi-azure-native-sdk/signalrservice/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := signalrservice.NewSignalRReplica(ctx, "signalRReplica", &signalrservice.SignalRReplicaArgs{
/// 			Location:          pulumi.String("eastus"),
/// 			ReplicaName:       pulumi.String("mySignalRService-eastus"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("mySignalRService"),
/// 			ResourceStopped:   pulumi.String("false"),
/// 			Sku: &signalrservice.ResourceSkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String("Premium_P1"),
/// 				Tier:     pulumi.String(signalrservice.SignalRSkuTierPremium),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
/// import com.pulumi.azurenative.signalrservice.SignalRReplica;
/// import com.pulumi.azurenative.signalrservice.SignalRReplicaArgs;
/// import com.pulumi.azurenative.signalrservice.inputs.ResourceSkuArgs;
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
///         var signalRReplica = new SignalRReplica("signalRReplica", SignalRReplicaArgs.builder()
///             .location("eastus")
///             .replicaName("mySignalRService-eastus")
///             .resourceGroupName("myResourceGroup")
///             .resourceName("mySignalRService")
///             .resourceStopped("false")
///             .sku(ResourceSkuArgs.builder()
///                 .capacity(1)
///                 .name("Premium_P1")
///                 .tier("Premium")
///                 .build())
///             .tags(Map.of("key1", "value1"))
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
/// const signalRReplica = new azure_native.signalrservice.SignalRReplica("signalRReplica", {
///     location: "eastus",
///     replicaName: "mySignalRService-eastus",
///     resourceGroupName: "myResourceGroup",
///     resourceName: "mySignalRService",
///     resourceStopped: "false",
///     sku: {
///         capacity: 1,
///         name: "Premium_P1",
///         tier: azure_native.signalrservice.SignalRSkuTier.Premium,
///     },
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// signal_r_replica = azure_native.signalrservice.SignalRReplica("signalRReplica",
///     location="eastus",
///     replica_name="mySignalRService-eastus",
///     resource_group_name="myResourceGroup",
///     resource_name_="mySignalRService",
///     resource_stopped="false",
///     sku={
///         "capacity": 1,
///         "name": "Premium_P1",
///         "tier": azure_native.signalrservice.SignalRSkuTier.PREMIUM,
///     },
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   signalRReplica:
///     type: azure-native:signalrservice:SignalRReplica
///     properties:
///       location: eastus
///       replicaName: mySignalRService-eastus
///       resourceGroupName: myResourceGroup
///       resourceName: mySignalRService
///       resourceStopped: 'false'
///       sku:
///         capacity: 1
///         name: Premium_P1
///         tier: Premium
///       tags:
///         key1: value1
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
/// $ pulumi import azure-native:signalrservice:SignalRReplica mySignalRService-eastus /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/signalR/{resourceName}/replicas/{replicaName}
/// ```
class SignalRReplica extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Enable or disable the regional endpoint. Default to "Enabled".
  /// When it's Disabled, new connections will not be routed to this endpoint, however existing connections will not be affected.
  late final pulumi.Output<String?> regionEndpointEnabled;

  /// Stop or start the resource.  Default to "false".
  /// When it's true, the data plane of the resource is shutdown.
  /// When it's false, the data plane of the resource is started.
  late final pulumi.Output<String?> resourceStopped;

  /// The billing information of the resource.
  late final pulumi.Output<ResourceSkuResponse?> sku;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [SignalRReplica].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SignalRReplica]. {@macro pulumi_signalrservice_signal_rreplica_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SignalRReplica(
    String name, {
    SignalRReplicaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:signalrservice:SignalRReplica',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    regionEndpointEnabled = registerOutput<String?>('regionEndpointEnabled');
    resourceStopped = registerOutput<String?>('resourceStopped');
    sku = registerOutput<ResourceSkuResponse?>('sku');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
