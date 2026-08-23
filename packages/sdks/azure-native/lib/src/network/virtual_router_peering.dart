import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_router_peering_args.dart';

/// Virtual Router Peering resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Virtual Router Peering
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualRouterPeering = new AzureNative.Network.VirtualRouterPeering("virtualRouterPeering", new()
///     {
///         PeerAsn = 20000,
///         PeerIp = "192.168.1.5",
///         PeeringName = "peering1",
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewVirtualRouterPeering(ctx, "virtualRouterPeering", &network.VirtualRouterPeeringArgs{
/// 			PeerAsn:           pulumi.Float64(20000),
/// 			PeerIp:            pulumi.String("192.168.1.5"),
/// 			PeeringName:       pulumi.String("peering1"),
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_virtualrouterpeering" "virtualRouterPeering" {
///   peer_asn            = 20000
///   peer_ip             = "192.168.1.5"
///   peering_name        = "peering1"
///   resource_group_name = "rg1"
///   virtual_router_name = "virtualRouter"
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
/// import com.pulumi.azurenative.network.VirtualRouterPeering;
/// import com.pulumi.azurenative.network.VirtualRouterPeeringArgs;
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
///         var virtualRouterPeering = new VirtualRouterPeering("virtualRouterPeering", VirtualRouterPeeringArgs.builder()
///             .peerAsn(20000.0)
///             .peerIp("192.168.1.5")
///             .peeringName("peering1")
///             .resourceGroupName("rg1")
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
/// const virtualRouterPeering = new azure_native.network.VirtualRouterPeering("virtualRouterPeering", {
///     peerAsn: 20000,
///     peerIp: "192.168.1.5",
///     peeringName: "peering1",
///     resourceGroupName: "rg1",
///     virtualRouterName: "virtualRouter",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_router_peering = azure_native.network.VirtualRouterPeering("virtualRouterPeering",
///     peer_asn=float(20000),
///     peer_ip="192.168.1.5",
///     peering_name="peering1",
///     resource_group_name="rg1",
///     virtual_router_name="virtualRouter")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualRouterPeering:
///     type: azure-native:network:VirtualRouterPeering
///     properties:
///       peerAsn: 20000
///       peerIp: 192.168.1.5
///       peeringName: peering1
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:VirtualRouterPeering peering1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualRouters/{virtualRouterName}/peerings/{peeringName}
/// ```
class VirtualRouterPeering extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Name of the virtual router peering that is unique within a virtual router.
  late final pulumi.Output<String?> name;
  /// Peer ASN.
  late final pulumi.Output<double?> peerAsn;
  /// Peer IP.
  late final pulumi.Output<String?> peerIp;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Peering type.
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualRouterPeering].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualRouterPeering]. {@macro pulumi_network_virtual_router_peering_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualRouterPeering(
    String name, {
    VirtualRouterPeeringArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VirtualRouterPeering',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    peerAsn = registerOutput<double?>('peerAsn');
    peerIp = registerOutput<String?>('peerIp');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
