import 'package:pulumi/pulumi.dart' as pulumi;
import 'nat_gateway_args.dart';
import 'nat_gateway_sku_response.dart';

/// Nat Gateway resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create nat gateway
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var natGateway = new AzureNative.Network.NatGateway("natGateway", new()
///     {
///         Location = "westus",
///         NatGatewayName = "test-natgateway",
///         PublicIpAddresses = new[]
///         {
///             new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/PublicIpAddress1",
///             },
///         },
///         PublicIpPrefixes = new[]
///         {
///             new AzureNative.Network.Inputs.SubResourceArgs
///             {
///                 Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPPrefixes/PublicIpPrefix1",
///             },
///         },
///         ResourceGroupName = "rg1",
///         Sku = new AzureNative.Network.Inputs.NatGatewaySkuArgs
///         {
///             Name = AzureNative.Network.NatGatewaySkuName.Standard,
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
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewNatGateway(ctx, "natGateway", &network.NatGatewayArgs{
/// 			Location:       pulumi.String("westus"),
/// 			NatGatewayName: pulumi.String("test-natgateway"),
/// 			PublicIpAddresses: network.SubResourceArray{
/// 				&network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/PublicIpAddress1"),
/// 				},
/// 			},
/// 			PublicIpPrefixes: network.SubResourceArray{
/// 				&network.SubResourceArgs{
/// 					Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPPrefixes/PublicIpPrefix1"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			Sku: &network.NatGatewaySkuArgs{
/// 				Name: pulumi.String(network.NatGatewaySkuNameStandard),
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
/// import com.pulumi.azurenative.network.NatGateway;
/// import com.pulumi.azurenative.network.NatGatewayArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.NatGatewaySkuArgs;
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
///         var natGateway = new NatGateway("natGateway", NatGatewayArgs.builder()
///             .location("westus")
///             .natGatewayName("test-natgateway")
///             .publicIpAddresses(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/PublicIpAddress1")
///                 .build())
///             .publicIpPrefixes(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPPrefixes/PublicIpPrefix1")
///                 .build())
///             .resourceGroupName("rg1")
///             .sku(NatGatewaySkuArgs.builder()
///                 .name("Standard")
///                 .build())
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
/// const natGateway = new azure_native.network.NatGateway("natGateway", {
///     location: "westus",
///     natGatewayName: "test-natgateway",
///     publicIpAddresses: [{
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/PublicIpAddress1",
///     }],
///     publicIpPrefixes: [{
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPPrefixes/PublicIpPrefix1",
///     }],
///     resourceGroupName: "rg1",
///     sku: {
///         name: azure_native.network.NatGatewaySkuName.Standard,
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// nat_gateway = azure_native.network.NatGateway("natGateway",
///     location="westus",
///     nat_gateway_name="test-natgateway",
///     public_ip_addresses=[{
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/PublicIpAddress1",
///     }],
///     public_ip_prefixes=[{
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPPrefixes/PublicIpPrefix1",
///     }],
///     resource_group_name="rg1",
///     sku={
///         "name": azure_native.network.NatGatewaySkuName.STANDARD,
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   natGateway:
///     type: azure-native:network:NatGateway
///     properties:
///       location: westus
///       natGatewayName: test-natgateway
///       publicIpAddresses:
///         - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPAddresses/PublicIpAddress1
///       publicIpPrefixes:
///         - id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/publicIPPrefixes/PublicIpPrefix1
///       resourceGroupName: rg1
///       sku:
///         name: Standard
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
/// $ pulumi import azure-native:network:NatGateway test-natGateway /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/natGateways/{natGatewayName}
/// ```
class NatGatewayNetwork extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The idle timeout of the nat gateway.
  late final pulumi.Output<int?> idleTimeoutInMinutes;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// The provisioning state of the NAT gateway resource.
  late final pulumi.Output<String> provisioningState;
  /// An array of public ip addresses associated with the nat gateway resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> publicIpAddresses;
  /// An array of public ip prefixes associated with the nat gateway resource.
  late final pulumi.Output<List<Map<String, dynamic>>?> publicIpPrefixes;
  /// The resource GUID property of the NAT gateway resource.
  late final pulumi.Output<String> resourceGuid;
  /// The nat gateway SKU.
  late final pulumi.Output<NatGatewaySkuResponse?> sku;
  /// An array of references to the subnets using this nat gateway resource.
  late final pulumi.Output<List<Map<String, dynamic>>> subnets;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// A list of availability zones denoting the zone in which Nat Gateway should be deployed.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [NatGatewayNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NatGatewayNetwork]. {@macro pulumi_network_nat_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NatGatewayNetwork(
    String name, {
    NatGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:NatGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publicIpAddresses = registerOutput<List<Map<String, dynamic>>?>('publicIpAddresses');
    publicIpPrefixes = registerOutput<List<Map<String, dynamic>>?>('publicIpPrefixes');
    resourceGuid = registerOutput<String>('resourceGuid');
    sku = registerOutput<NatGatewaySkuResponse?>('sku', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return NatGatewaySkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    subnets = registerOutput<List<Map<String, dynamic>>>('subnets');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
    zones = registerOutput<List<String>?>('zones');
  }
}
