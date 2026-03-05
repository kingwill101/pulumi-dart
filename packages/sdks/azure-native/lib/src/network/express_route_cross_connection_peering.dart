import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_peering_config_response.dart';
import 'express_route_cross_connection_peering_args.dart';
import 'ipv6_express_route_circuit_peering_config_response.dart';

/// Peering in an ExpressRoute Cross Connection resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-06-01, 2018-07-01, 2018-08-01, 2018-10-01, 2018-11-01, 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ExpressRouteCrossConnectionBgpPeeringCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var expressRouteCrossConnectionPeering = new AzureNative.Network.ExpressRouteCrossConnectionPeering("expressRouteCrossConnectionPeering", new()
///     {
///         CrossConnectionName = "<circuitServiceKey>",
///         Ipv6PeeringConfig = new AzureNative.Network.Inputs.Ipv6ExpressRouteCircuitPeeringConfigArgs
///         {
///             PrimaryPeerAddressPrefix = "3FFE:FFFF:0:CD30::/126",
///             SecondaryPeerAddressPrefix = "3FFE:FFFF:0:CD30::4/126",
///         },
///         PeerASN = 200,
///         PeeringName = "AzurePrivatePeering",
///         PrimaryPeerAddressPrefix = "192.168.16.252/30",
///         ResourceGroupName = "CrossConnection-SiliconValley",
///         SecondaryPeerAddressPrefix = "192.168.18.252/30",
///         VlanId = 200,
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
/// 		_, err := network.NewExpressRouteCrossConnectionPeering(ctx, "expressRouteCrossConnectionPeering", &network.ExpressRouteCrossConnectionPeeringArgs{
/// 			CrossConnectionName: pulumi.String("<circuitServiceKey>"),
/// 			Ipv6PeeringConfig: &network.Ipv6ExpressRouteCircuitPeeringConfigArgs{
/// 				PrimaryPeerAddressPrefix:   pulumi.String("3FFE:FFFF:0:CD30::/126"),
/// 				SecondaryPeerAddressPrefix: pulumi.String("3FFE:FFFF:0:CD30::4/126"),
/// 			},
/// 			PeerASN:                    pulumi.Float64(200),
/// 			PeeringName:                pulumi.String("AzurePrivatePeering"),
/// 			PrimaryPeerAddressPrefix:   pulumi.String("192.168.16.252/30"),
/// 			ResourceGroupName:          pulumi.String("CrossConnection-SiliconValley"),
/// 			SecondaryPeerAddressPrefix: pulumi.String("192.168.18.252/30"),
/// 			VlanId:                     pulumi.Int(200),
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
/// import com.pulumi.azurenative.network.ExpressRouteCrossConnectionPeering;
/// import com.pulumi.azurenative.network.ExpressRouteCrossConnectionPeeringArgs;
/// import com.pulumi.azurenative.network.inputs.Ipv6ExpressRouteCircuitPeeringConfigArgs;
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
///         var expressRouteCrossConnectionPeering = new ExpressRouteCrossConnectionPeering("expressRouteCrossConnectionPeering", ExpressRouteCrossConnectionPeeringArgs.builder()
///             .crossConnectionName("<circuitServiceKey>")
///             .ipv6PeeringConfig(Ipv6ExpressRouteCircuitPeeringConfigArgs.builder()
///                 .primaryPeerAddressPrefix("3FFE:FFFF:0:CD30::/126")
///                 .secondaryPeerAddressPrefix("3FFE:FFFF:0:CD30::4/126")
///                 .build())
///             .peerASN(200.0)
///             .peeringName("AzurePrivatePeering")
///             .primaryPeerAddressPrefix("192.168.16.252/30")
///             .resourceGroupName("CrossConnection-SiliconValley")
///             .secondaryPeerAddressPrefix("192.168.18.252/30")
///             .vlanId(200)
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
/// const expressRouteCrossConnectionPeering = new azure_native.network.ExpressRouteCrossConnectionPeering("expressRouteCrossConnectionPeering", {
///     crossConnectionName: "<circuitServiceKey>",
///     ipv6PeeringConfig: {
///         primaryPeerAddressPrefix: "3FFE:FFFF:0:CD30::/126",
///         secondaryPeerAddressPrefix: "3FFE:FFFF:0:CD30::4/126",
///     },
///     peerASN: 200,
///     peeringName: "AzurePrivatePeering",
///     primaryPeerAddressPrefix: "192.168.16.252/30",
///     resourceGroupName: "CrossConnection-SiliconValley",
///     secondaryPeerAddressPrefix: "192.168.18.252/30",
///     vlanId: 200,
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// express_route_cross_connection_peering = azure_native.network.ExpressRouteCrossConnectionPeering("expressRouteCrossConnectionPeering",
///     cross_connection_name="<circuitServiceKey>",
///     ipv6_peering_config={
///         "primary_peer_address_prefix": "3FFE:FFFF:0:CD30::/126",
///         "secondary_peer_address_prefix": "3FFE:FFFF:0:CD30::4/126",
///     },
///     peer_asn=200,
///     peering_name="AzurePrivatePeering",
///     primary_peer_address_prefix="192.168.16.252/30",
///     resource_group_name="CrossConnection-SiliconValley",
///     secondary_peer_address_prefix="192.168.18.252/30",
///     vlan_id=200)
///
/// ```
///
/// ```yaml
/// resources:
///   expressRouteCrossConnectionPeering:
///     type: azure-native:network:ExpressRouteCrossConnectionPeering
///     properties:
///       crossConnectionName: <circuitServiceKey>
///       ipv6PeeringConfig:
///         primaryPeerAddressPrefix: 3FFE:FFFF:0:CD30::/126
///         secondaryPeerAddressPrefix: 3FFE:FFFF:0:CD30::4/126
///       peerASN: 200
///       peeringName: AzurePrivatePeering
///       primaryPeerAddressPrefix: 192.168.16.252/30
///       resourceGroupName: CrossConnection-SiliconValley
///       secondaryPeerAddressPrefix: 192.168.18.252/30
///       vlanId: 200
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
/// $ pulumi import azure-native:network:ExpressRouteCrossConnectionPeering AzurePrivatePeering /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/expressRouteCrossConnections/{crossConnectionName}/peerings/{peeringName}
/// ```
class ExpressRouteCrossConnectionPeering extends pulumi.CustomResource {
  /// The Azure ASN.
  late final pulumi.Output<int> azureASN;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The GatewayManager Etag.
  late final pulumi.Output<String?> gatewayManagerEtag;
  /// The IPv6 peering configuration.
  late final pulumi.Output<Ipv6ExpressRouteCircuitPeeringConfigResponse?> ipv6PeeringConfig;
  /// Who was the last to modify the peering.
  late final pulumi.Output<String> lastModifiedBy;
  /// The Microsoft peering configuration.
  late final pulumi.Output<ExpressRouteCircuitPeeringConfigResponse?> microsoftPeeringConfig;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// The peer ASN.
  late final pulumi.Output<double?> peerASN;
  /// The peering type.
  late final pulumi.Output<String?> peeringType;
  /// The primary port.
  late final pulumi.Output<String> primaryAzurePort;
  /// The primary address prefix.
  late final pulumi.Output<String?> primaryPeerAddressPrefix;
  /// The provisioning state of the express route cross connection peering resource.
  late final pulumi.Output<String> provisioningState;
  /// The secondary port.
  late final pulumi.Output<String> secondaryAzurePort;
  /// The secondary address prefix.
  late final pulumi.Output<String?> secondaryPeerAddressPrefix;
  /// The shared key.
  late final pulumi.Output<String?> sharedKey;
  /// The peering state.
  late final pulumi.Output<String?> state;
  /// The VLAN ID.
  late final pulumi.Output<int?> vlanId;

  /// Creates a new [ExpressRouteCrossConnectionPeering].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteCrossConnectionPeering]. {@macro pulumi_network_express_route_cross_connection_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteCrossConnectionPeering(
    String name, {
    ExpressRouteCrossConnectionPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ExpressRouteCrossConnectionPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureASN = registerOutput<int>('azureASN');
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    gatewayManagerEtag = registerOutput<String?>('gatewayManagerEtag');
    ipv6PeeringConfig = registerOutput<Ipv6ExpressRouteCircuitPeeringConfigResponse?>('ipv6PeeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return Ipv6ExpressRouteCircuitPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    lastModifiedBy = registerOutput<String>('lastModifiedBy');
    microsoftPeeringConfig = registerOutput<ExpressRouteCircuitPeeringConfigResponse?>('microsoftPeeringConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ExpressRouteCircuitPeeringConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String?>('name');
    peerASN = registerOutput<double?>('peerASN');
    peeringType = registerOutput<String?>('peeringType');
    primaryAzurePort = registerOutput<String>('primaryAzurePort');
    primaryPeerAddressPrefix = registerOutput<String?>('primaryPeerAddressPrefix');
    provisioningState = registerOutput<String>('provisioningState');
    secondaryAzurePort = registerOutput<String>('secondaryAzurePort');
    secondaryPeerAddressPrefix = registerOutput<String?>('secondaryPeerAddressPrefix');
    sharedKey = registerOutput<String?>('sharedKey');
    state = registerOutput<String?>('state');
    vlanId = registerOutput<int?>('vlanId');
  }
}
