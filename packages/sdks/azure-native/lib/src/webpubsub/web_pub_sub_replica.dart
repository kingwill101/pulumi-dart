import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_sku_response.dart';
import 'system_data_response.dart';
import 'web_pub_sub_replica_args.dart';

/// A class represent a replica resource.
///
/// Uses Azure REST API version 2024-03-01. In version 2.x of the Azure Native provider, it used API version 2023-03-01-preview.
///
/// Other available API versions: 2023-03-01-preview, 2023-06-01-preview, 2023-08-01-preview, 2024-01-01-preview, 2024-04-01-preview, 2024-08-01-preview, 2024-10-01-preview, 2025-01-01-preview, 2025-08-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native webpubsub [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebPubSubReplicas_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webPubSubReplica = new AzureNative.WebPubSub.WebPubSubReplica("webPubSubReplica", new()
///     {
///         Location = "eastus",
///         ReplicaName = "myWebPubSubService-eastus",
///         ResourceGroupName = "myResourceGroup",
///         ResourceName = "myWebPubSubService",
///         ResourceStopped = "false",
///         Sku = new AzureNative.WebPubSub.Inputs.ResourceSkuArgs
///         {
///             Capacity = 1,
///             Name = "Premium_P1",
///             Tier = AzureNative.WebPubSub.WebPubSubSkuTier.Premium,
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
/// 	webpubsub "github.com/pulumi/pulumi-azure-native-sdk/webpubsub/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := webpubsub.NewWebPubSubReplica(ctx, "webPubSubReplica", &webpubsub.WebPubSubReplicaArgs{
/// 			Location:          pulumi.String("eastus"),
/// 			ReplicaName:       pulumi.String("myWebPubSubService-eastus"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ResourceName:      pulumi.String("myWebPubSubService"),
/// 			ResourceStopped:   pulumi.String("false"),
/// 			Sku: &webpubsub.ResourceSkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String("Premium_P1"),
/// 				Tier:     pulumi.String(webpubsub.WebPubSubSkuTierPremium),
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
/// import com.pulumi.azurenative.webpubsub.WebPubSubReplica;
/// import com.pulumi.azurenative.webpubsub.WebPubSubReplicaArgs;
/// import com.pulumi.azurenative.webpubsub.inputs.ResourceSkuArgs;
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
///         var webPubSubReplica = new WebPubSubReplica("webPubSubReplica", WebPubSubReplicaArgs.builder()
///             .location("eastus")
///             .replicaName("myWebPubSubService-eastus")
///             .resourceGroupName("myResourceGroup")
///             .resourceName("myWebPubSubService")
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
/// const webPubSubReplica = new azure_native.webpubsub.WebPubSubReplica("webPubSubReplica", {
///     location: "eastus",
///     replicaName: "myWebPubSubService-eastus",
///     resourceGroupName: "myResourceGroup",
///     resourceName: "myWebPubSubService",
///     resourceStopped: "false",
///     sku: {
///         capacity: 1,
///         name: "Premium_P1",
///         tier: azure_native.webpubsub.WebPubSubSkuTier.Premium,
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
/// web_pub_sub_replica = azure_native.webpubsub.WebPubSubReplica("webPubSubReplica",
///     location="eastus",
///     replica_name="myWebPubSubService-eastus",
///     resource_group_name="myResourceGroup",
///     resource_name_="myWebPubSubService",
///     resource_stopped="false",
///     sku={
///         "capacity": 1,
///         "name": "Premium_P1",
///         "tier": azure_native.webpubsub.WebPubSubSkuTier.PREMIUM,
///     },
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   webPubSubReplica:
///     type: azure-native:webpubsub:WebPubSubReplica
///     properties:
///       location: eastus
///       replicaName: myWebPubSubService-eastus
///       resourceGroupName: myResourceGroup
///       resourceName: myWebPubSubService
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
/// $ pulumi import azure-native:webpubsub:WebPubSubReplica myWebPubSubService-eastus /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.SignalRService/webPubSub/{resourceName}/replicas/{replicaName}
/// ```
class WebPubSubReplica extends pulumi.CustomResource {
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

  /// Creates a new [WebPubSubReplica].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebPubSubReplica]. {@macro pulumi_webpubsub_web_pub_sub_replica_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebPubSubReplica(
    String name, {
    WebPubSubReplicaArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:webpubsub:WebPubSubReplica',
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
    sku = registerOutput<ResourceSkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ResourceSkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
