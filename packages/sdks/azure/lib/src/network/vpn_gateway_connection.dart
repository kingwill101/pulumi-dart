import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_connection_args.dart';
import 'vpn_gateway_connection_routing.dart';
import 'vpn_gateway_connection_state.dart';

/// Manages a VPN Gateway Connection.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-vwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-hub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.0.0/24",
/// });
/// const exampleVpnGateway = new azure.network.VpnGateway("example", {
///     name: "example-vpng",
///     location: example.location,
///     resourceGroupName: example.name,
///     virtualHubId: exampleVirtualHub.id,
/// });
/// const exampleVpnSite = new azure.network.VpnSite("example", {
///     name: "example-vpn-site",
///     location: example.location,
///     resourceGroupName: example.name,
///     virtualWanId: exampleVirtualWan.id,
///     links: [
///         {
///             name: "link1",
///             ipAddress: "10.1.0.0",
///         },
///         {
///             name: "link2",
///             ipAddress: "10.2.0.0",
///         },
///     ],
/// });
/// const exampleVpnGatewayConnection = new azure.network.VpnGatewayConnection("example", {
///     name: "example",
///     vpnGatewayId: exampleVpnGateway.id,
///     remoteVpnSiteId: exampleVpnSite.id,
///     vpnLinks: [
///         {
///             name: "link1",
///             vpnSiteLinkId: exampleVpnSite.links.apply(links => links?.[0]?.id),
///         },
///         {
///             name: "link2",
///             vpnSiteLinkId: exampleVpnSite.links.apply(links => links?.[1]?.id),
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-vwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-hub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.0.0/24")
/// example_vpn_gateway = azure.network.VpnGateway("example",
///     name="example-vpng",
///     location=example.location,
///     resource_group_name=example.name,
///     virtual_hub_id=example_virtual_hub.id)
/// example_vpn_site = azure.network.VpnSite("example",
///     name="example-vpn-site",
///     location=example.location,
///     resource_group_name=example.name,
///     virtual_wan_id=example_virtual_wan.id,
///     links=[
///         {
///             "name": "link1",
///             "ip_address": "10.1.0.0",
///         },
///         {
///             "name": "link2",
///             "ip_address": "10.2.0.0",
///         },
///     ])
/// example_vpn_gateway_connection = azure.network.VpnGatewayConnection("example",
///     name="example",
///     vpn_gateway_id=example_vpn_gateway.id,
///     remote_vpn_site_id=example_vpn_site.id,
///     vpn_links=[
///         {
///             "name": "link1",
///             "vpn_site_link_id": example_vpn_site.links[0].id,
///         },
///         {
///             "name": "link2",
///             "vpn_site_link_id": example_vpn_site.links[1].id,
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-vwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-hub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.0.0/24",
///     });
///
///     var exampleVpnGateway = new Azure.Network.VpnGateway("example", new()
///     {
///         Name = "example-vpng",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         VirtualHubId = exampleVirtualHub.Id,
///     });
///
///     var exampleVpnSite = new Azure.Network.VpnSite("example", new()
///     {
///         Name = "example-vpn-site",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         VirtualWanId = exampleVirtualWan.Id,
///         Links = new[]
///         {
///             new Azure.Network.Inputs.VpnSiteLinkArgs
///             {
///                 Name = "link1",
///                 IpAddress = "10.1.0.0",
///             },
///             new Azure.Network.Inputs.VpnSiteLinkArgs
///             {
///                 Name = "link2",
///                 IpAddress = "10.2.0.0",
///             },
///         },
///     });
///
///     var exampleVpnGatewayConnection = new Azure.Network.VpnGatewayConnection("example", new()
///     {
///         Name = "example",
///         VpnGatewayId = exampleVpnGateway.Id,
///         RemoteVpnSiteId = exampleVpnSite.Id,
///         VpnLinks = new[]
///         {
///             new Azure.Network.Inputs.VpnGatewayConnectionVpnLinkArgs
///             {
///                 Name = "link1",
///                 VpnSiteLinkId = exampleVpnSite.Links.Apply(links => links[0]?.Id),
///             },
///             new Azure.Network.Inputs.VpnGatewayConnectionVpnLinkArgs
///             {
///                 Name = "link2",
///                 VpnSiteLinkId = exampleVpnSite.Links.Apply(links => links[1]?.Id),
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-vwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-hub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressPrefix:     pulumi.String("10.0.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpnGateway, err := network.NewVpnGateway(ctx, "example", &network.VpnGatewayArgs{
/// 			Name:              pulumi.String("example-vpng"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			VirtualHubId:      exampleVirtualHub.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpnSite, err := network.NewVpnSite(ctx, "example", &network.VpnSiteArgs{
/// 			Name:              pulumi.String("example-vpn-site"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			Links: network.VpnSiteLinkArray{
/// 				&network.VpnSiteLinkArgs{
/// 					Name:      pulumi.String("link1"),
/// 					IpAddress: pulumi.String("10.1.0.0"),
/// 				},
/// 				&network.VpnSiteLinkArgs{
/// 					Name:      pulumi.String("link2"),
/// 					IpAddress: pulumi.String("10.2.0.0"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVpnGatewayConnection(ctx, "example", &network.VpnGatewayConnectionArgs{
/// 			Name:            pulumi.String("example"),
/// 			VpnGatewayId:    exampleVpnGateway.ID(),
/// 			RemoteVpnSiteId: exampleVpnSite.ID(),
/// 			VpnLinks: network.VpnGatewayConnectionVpnLinkArray{
/// 				&network.VpnGatewayConnectionVpnLinkArgs{
/// 					Name: pulumi.String("link1"),
/// 					VpnSiteLinkId: exampleVpnSite.Links.ApplyT(func(links []network.VpnSiteLink) (*string, error) {
/// 						return &links[0].Id, nil
/// 					}).(pulumi.StringPtrOutput),
/// 				},
/// 				&network.VpnGatewayConnectionVpnLinkArgs{
/// 					Name: pulumi.String("link2"),
/// 					VpnSiteLinkId: exampleVpnSite.Links.ApplyT(func(links []network.VpnSiteLink) (*string, error) {
/// 						return &links[1].Id, nil
/// 					}).(pulumi.StringPtrOutput),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.VpnGateway;
/// import com.pulumi.azure.network.VpnGatewayArgs;
/// import com.pulumi.azure.network.VpnSite;
/// import com.pulumi.azure.network.VpnSiteArgs;
/// import com.pulumi.azure.network.inputs.VpnSiteLinkArgs;
/// import com.pulumi.azure.network.VpnGatewayConnection;
/// import com.pulumi.azure.network.VpnGatewayConnectionArgs;
/// import com.pulumi.azure.network.inputs.VpnGatewayConnectionVpnLinkArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-vwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-hub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.0.0/24")
///             .build());
///
///         var exampleVpnGateway = new VpnGateway("exampleVpnGateway", VpnGatewayArgs.builder()
///             .name("example-vpng")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .virtualHubId(exampleVirtualHub.id())
///             .build());
///
///         var exampleVpnSite = new VpnSite("exampleVpnSite", VpnSiteArgs.builder()
///             .name("example-vpn-site")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .virtualWanId(exampleVirtualWan.id())
///             .links(
///                 VpnSiteLinkArgs.builder()
///                     .name("link1")
///                     .ipAddress("10.1.0.0")
///                     .build(),
///                 VpnSiteLinkArgs.builder()
///                     .name("link2")
///                     .ipAddress("10.2.0.0")
///                     .build())
///             .build());
///
///         var exampleVpnGatewayConnection = new VpnGatewayConnection("exampleVpnGatewayConnection", VpnGatewayConnectionArgs.builder()
///             .name("example")
///             .vpnGatewayId(exampleVpnGateway.id())
///             .remoteVpnSiteId(exampleVpnSite.id())
///             .vpnLinks(
///                 VpnGatewayConnectionVpnLinkArgs.builder()
///                     .name("link1")
///                     .vpnSiteLinkId(exampleVpnSite.links().applyValue(_links -> _links[0].id()))
///                     .build(),
///                 VpnGatewayConnectionVpnLinkArgs.builder()
///                     .name("link2")
///                     .vpnSiteLinkId(exampleVpnSite.links().applyValue(_links -> _links[1].id()))
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-vwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-hub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.0.0/24
///   exampleVpnGateway:
///     type: azure:network:VpnGateway
///     name: example
///     properties:
///       name: example-vpng
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       virtualHubId: ${exampleVirtualHub.id}
///   exampleVpnSite:
///     type: azure:network:VpnSite
///     name: example
///     properties:
///       name: example-vpn-site
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       virtualWanId: ${exampleVirtualWan.id}
///       links:
///         - name: link1
///           ipAddress: 10.1.0.0
///         - name: link2
///           ipAddress: 10.2.0.0
///   exampleVpnGatewayConnection:
///     type: azure:network:VpnGatewayConnection
///     name: example
///     properties:
///       name: example
///       vpnGatewayId: ${exampleVpnGateway.id}
///       remoteVpnSiteId: ${exampleVpnSite.id}
///       vpnLinks:
///         - name: link1
///           vpnSiteLinkId: ${exampleVpnSite.links[0].id}
///         - name: link2
///           vpnSiteLinkId: ${exampleVpnSite.links[1].id}
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// VPN Gateway Connections can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/vpnGatewayConnection:VpnGatewayConnection example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/vpnGateways/gateway1/vpnConnections/conn1
/// ```
class VpnGatewayConnection extends pulumi.CustomResource {
  /// Whether Internet Security is enabled for this VPN Connection. Defaults to `false`.
  late final pulumi.Output<bool?> internetSecurityEnabled;
  /// The name which should be used for this VPN Gateway Connection. Changing this forces a new VPN Gateway Connection to be created.
  late final pulumi.Output<String> name;
  /// The ID of the remote VPN Site, which will connect to the VPN Gateway. Changing this forces a new VPN Gateway Connection to be created.
  late final pulumi.Output<String> remoteVpnSiteId;
  /// A `routing` block as defined below. If this is not specified, there will be a default route table created implicitly.
  late final pulumi.Output<VpnGatewayConnectionRouting> routing;
  /// One or more `traffic_selector_policy` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> trafficSelectorPolicies;
  /// The ID of the VPN Gateway that this VPN Gateway Connection belongs to. Changing this forces a new VPN Gateway Connection to be created.
  late final pulumi.Output<String> vpnGatewayId;
  /// One or more `vpn_link` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> vpnLinks;

  /// Creates a new [VpnGatewayConnection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnGatewayConnection]. {@macro pulumi_network_vpn_gateway_connection_vpn_gateway_connection_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnGatewayConnection(
    String name, {
    VpnGatewayConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/vpnGatewayConnection:VpnGatewayConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    internetSecurityEnabled = registerOutput<bool?>('internetSecurityEnabled');
    this.name = registerOutput<String>('name');
    remoteVpnSiteId = registerOutput<String>('remoteVpnSiteId');
    routing = registerOutput<VpnGatewayConnectionRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnGatewayConnectionRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trafficSelectorPolicies = registerOutput<List<Map<String, dynamic>>?>('trafficSelectorPolicies');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
    vpnLinks = registerOutput<List<Map<String, dynamic>>>('vpnLinks');
  }

  /// Gets an existing [VpnGatewayConnection] resource's state with the given [name] and [id].
  static VpnGatewayConnection get(
    String name,
    pulumi.Input<String> id, {
    VpnGatewayConnectionState? state,
  }) {
    return VpnGatewayConnection._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpnGatewayConnection._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/vpnGatewayConnection:VpnGatewayConnection',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    internetSecurityEnabled = registerOutput<bool?>('internetSecurityEnabled');
    this.name = registerOutput<String>('name');
    remoteVpnSiteId = registerOutput<String>('remoteVpnSiteId');
    routing = registerOutput<VpnGatewayConnectionRouting>('routing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpnGatewayConnectionRouting.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    trafficSelectorPolicies = registerOutput<List<Map<String, dynamic>>?>('trafficSelectorPolicies');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
    vpnLinks = registerOutput<List<Map<String, dynamic>>>('vpnLinks');
  }
}
