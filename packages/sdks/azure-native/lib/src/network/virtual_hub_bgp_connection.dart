import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';
import 'virtual_hub_bgp_connection_args.dart';

/// Virtual Appliance Site resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### VirtualHubRouteTableV2Put
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var virtualHubBgpConnection = new AzureNative.Network.VirtualHubBgpConnection("virtualHubBgpConnection", new()
///     {
///         ConnectionName = "conn1",
///         HubVirtualNetworkConnection = new AzureNative.Network.Inputs.SubResourceArgs
///         {
///             Id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubVirtualNetworkConnections/hubVnetConn1",
///         },
///         PeerAsn = 20000,
///         PeerIp = "192.168.1.5",
///         ResourceGroupName = "rg1",
///         VirtualHubName = "hub1",
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
/// 		_, err := network.NewVirtualHubBgpConnection(ctx, "virtualHubBgpConnection", &network.VirtualHubBgpConnectionArgs{
/// 			ConnectionName: pulumi.String("conn1"),
/// 			HubVirtualNetworkConnection: &network.SubResourceArgs{
/// 				Id: pulumi.String("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubVirtualNetworkConnections/hubVnetConn1"),
/// 			},
/// 			PeerAsn:           pulumi.Float64(20000),
/// 			PeerIp:            pulumi.String("192.168.1.5"),
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			VirtualHubName:    pulumi.String("hub1"),
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
/// resource "azure-native_network_virtualhubbgpconnection" "virtualHubBgpConnection" {
///   connection_name = "conn1"
///   hub_virtual_network_connection = {
///     id = "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubVirtualNetworkConnections/hubVnetConn1"
///   }
///   peer_asn            = 20000
///   peer_ip             = "192.168.1.5"
///   resource_group_name = "rg1"
///   virtual_hub_name    = "hub1"
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
/// import com.pulumi.azurenative.network.VirtualHubBgpConnection;
/// import com.pulumi.azurenative.network.VirtualHubBgpConnectionArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
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
///         var virtualHubBgpConnection = new VirtualHubBgpConnection("virtualHubBgpConnection", VirtualHubBgpConnectionArgs.builder()
///             .connectionName("conn1")
///             .hubVirtualNetworkConnection(SubResourceArgs.builder()
///                 .id("/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubVirtualNetworkConnections/hubVnetConn1")
///                 .build())
///             .peerAsn(20000.0)
///             .peerIp("192.168.1.5")
///             .resourceGroupName("rg1")
///             .virtualHubName("hub1")
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
/// const virtualHubBgpConnection = new azure_native.network.VirtualHubBgpConnection("virtualHubBgpConnection", {
///     connectionName: "conn1",
///     hubVirtualNetworkConnection: {
///         id: "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubVirtualNetworkConnections/hubVnetConn1",
///     },
///     peerAsn: 20000,
///     peerIp: "192.168.1.5",
///     resourceGroupName: "rg1",
///     virtualHubName: "hub1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// virtual_hub_bgp_connection = azure_native.network.VirtualHubBgpConnection("virtualHubBgpConnection",
///     connection_name="conn1",
///     hub_virtual_network_connection={
///         "id": "/subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubVirtualNetworkConnections/hubVnetConn1",
///     },
///     peer_asn=float(20000),
///     peer_ip="192.168.1.5",
///     resource_group_name="rg1",
///     virtual_hub_name="hub1")
///
/// ```
///
/// ```yaml
/// resources:
///   virtualHubBgpConnection:
///     type: azure-native:network:VirtualHubBgpConnection
///     properties:
///       connectionName: conn1
///       hubVirtualNetworkConnection:
///         id: /subscriptions/subid/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/hub1/hubVirtualNetworkConnections/hubVnetConn1
///       peerAsn: 20000
///       peerIp: 192.168.1.5
///       resourceGroupName: rg1
///       virtualHubName: hub1
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
/// $ pulumi import azure-native:network:VirtualHubBgpConnection conn1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{virtualHubName}/bgpConnections/{connectionName}
/// ```
class VirtualHubBgpConnection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The current state of the VirtualHub to Peer.
  late final pulumi.Output<String> connectionState;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The reference to the HubVirtualNetworkConnection resource.
  late final pulumi.Output<SubResourceResponse?> hubVirtualNetworkConnection;
  /// Name of the connection.
  late final pulumi.Output<String?> name;
  /// Peer ASN.
  late final pulumi.Output<double?> peerAsn;
  /// Peer IP.
  late final pulumi.Output<String?> peerIp;
  /// The provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Connection type.
  late final pulumi.Output<String> type;

  /// Creates a new [VirtualHubBgpConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualHubBgpConnection]. {@macro pulumi_network_virtual_hub_bgp_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualHubBgpConnection(
    String name, {
    VirtualHubBgpConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:VirtualHubBgpConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionState = registerOutput<String>('connectionState');
    etag = registerOutput<String>('etag');
    hubVirtualNetworkConnection = registerOutput<SubResourceResponse?>('hubVirtualNetworkConnection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String?>('name');
    peerAsn = registerOutput<double?>('peerAsn');
    peerIp = registerOutput<String?>('peerIp');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [VirtualHubBgpConnection] resource.
  VirtualHubBgpConnection.reference(String urn)
    : super(
        'azure-native:network:VirtualHubBgpConnection',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    connectionState = registerOutput<String>('connectionState');
    etag = registerOutput<String>('etag');
    hubVirtualNetworkConnection = registerOutput<SubResourceResponse?>('hubVirtualNetworkConnection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SubResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String?>('name');
    peerAsn = registerOutput<double?>('peerAsn');
    peerIp = registerOutput<String?>('peerIp');
    provisioningState = registerOutput<String>('provisioningState');
    type = registerOutput<String>('type');
  }
}
