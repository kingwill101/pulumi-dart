import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_router_args.dart';

/// VirtualRouter Resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create VirtualRouter
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualRouter = new AzureNative.Network.VirtualRouter("virtualRouter", new()
///     {
///         HostedGateway = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vnetGateway",
///         },
///         Location = "West US",
///         ResourceGroupName = "rg1",
///         Tags =
///         {
///             { "key1", "value1" },
///         },
///         VirtualRouterName = "virtualRouter",
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewVirtualRouter(ctx, "virtualRouter", &network.VirtualRouterArgs{
/// 			HostedGateway: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vnetGateway"),
/// 			},
/// 			Location:          pulumi.String("West US"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
/// 			},
/// 			VirtualRouterName: pulumi.String("virtualRouter"),
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
/// import com.pulumi.azurenative.network.VirtualRouter;
/// import com.pulumi.azurenative.network.VirtualRouterArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var virtualRouter = new VirtualRouter("virtualRouter", VirtualRouterArgs.builder()
///             .hostedGateway(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vnetGateway")
///                 .build())
///             .location("West US")
///             .resourceGroupName("rg1")
///             .tags(Map.of("key1", "value1"))
///             .virtualRouterName("virtualRouter")
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
/// const virtualRouter = new azure_native.network.VirtualRouter("virtualRouter", {
///     hostedGateway: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vnetGateway",
///     },
///     location: "West US",
///     resourceGroupName: "rg1",
///     tags: {
///         key1: "value1",
///     },
///     virtualRouterName: "virtualRouter",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_router = azure_native.network.VirtualRouter("virtualRouter",
///     hosted_gateway={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vnetGateway",
///     },
///     location="West US",
///     resource_group_name="rg1",
///     tags={
///         "key1": "value1",
///     },
///     virtual_router_name="virtualRouter")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualRouter:
///     type: azure-native:network:VirtualRouter
///     properties:
///       hostedGateway:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualNetworkGateways/vnetGateway
///       location: West US
///       resourceGroupName: rg1
///       tags:
///         key1: value1
///       virtualRouterName: virtualRouter
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
/// $ pulumi import azure-native:network:VirtualRouter virtualRouter /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualRouters/{virtualRouterName}
/// ```
class VirtualRouter extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The Gateway on which VirtualRouter is hosted.
  late final pulumi.Output<SubResourceResponse?> hostedGateway;

  /// The Subnet on which VirtualRouter is hosted.
  late final pulumi.Output<SubResourceResponse?> hostedSubnet;

  /// Resource location.
  late final pulumi.Output<String?> location;

  /// Resource name.
  late final pulumi.Output<String> name;

  /// List of references to VirtualRouterPeerings.
  late final pulumi.Output<List<Map<String, dynamic>>> peerings;

  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Resource type.
  late final pulumi.Output<String> type;

  /// VirtualRouter ASN.
  late final pulumi.Output<double?> virtualRouterAsn;

  /// VirtualRouter IPs.
  late final pulumi.Output<List<String>?> virtualRouterIps;

  /// Creates a new [VirtualRouter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualRouter]. {@macro pulumi_network_virtual_router_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualRouter(
    String name, {
    VirtualRouterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:VirtualRouter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    hostedGateway = registerOutput<SubResourceResponse?>(
      'hostedGateway',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    hostedSubnet = registerOutput<SubResourceResponse?>(
      'hostedSubnet',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SubResourceResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    peerings = registerOutput<List<Map<String, dynamic>>>('peerings');
    provisioningState = registerOutput<String>('provisioningState');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    virtualRouterAsn = registerOutput<double?>('virtualRouterAsn');
    virtualRouterIps = registerOutput<List<String>?>('virtualRouterIps');
  }
}
