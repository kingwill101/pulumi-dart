import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpn_gateway_args.dart';
import 'vpn_gateway_bgp_settings.dart';
import 'vpn_gateway_ip_configuration.dart';
import 'vpn_gateway_state.dart';

/// Manages a VPN Gateway within a Virtual Hub, which enables Site-to-Site communication.
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
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-network",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
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
///     addressPrefix: "10.0.1.0/24",
/// });
/// const exampleVpnGateway = new azure.network.VpnGateway("example", {
///     name: "example-vpng",
///     location: example.location,
///     resourceGroupName: example.name,
///     virtualHubId: exampleVirtualHub.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-network",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"])
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-vwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-hub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.1.0/24")
/// example_vpn_gateway = azure.network.VpnGateway("example",
///     name="example-vpng",
///     location=example.location,
///     resource_group_name=example.name,
///     virtual_hub_id=example_virtual_hub.id)
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-network",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
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
///         AddressPrefix = "10.0.1.0/24",
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
/// 		_, err = network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-network"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
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
/// 			AddressPrefix:     pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVpnGateway(ctx, "example", &network.VpnGatewayArgs{
/// 			Name:              pulumi.String("example-vpng"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			VirtualHubId:      exampleVirtualHub.ID(),
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.VpnGateway;
/// import com.pulumi.azure.network.VpnGatewayArgs;
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
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
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
///             .addressPrefix("10.0.1.0/24")
///             .build());
///
///         var exampleVpnGateway = new VpnGateway("exampleVpnGateway", VpnGatewayArgs.builder()
///             .name("example-vpng")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .virtualHubId(exampleVirtualHub.id())
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
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-network
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
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
///       addressPrefix: 10.0.1.0/24
///   exampleVpnGateway:
///     type: azure:network:VpnGateway
///     name: example
///     properties:
///       name: example-vpng
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       virtualHubId: ${exampleVirtualHub.id}
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// VPN Gateways can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/vpnGateway:VpnGateway gateway1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/vpnGateways/gateway1
/// ```
class VpnGateway extends pulumi.CustomResource {
  /// Is BGP route translation for NAT on this VPN Gateway enabled? Defaults to `false`.
  late final pulumi.Output<bool?> bgpRouteTranslationForNatEnabled;
  /// A `bgp_settings` block as defined below.
  late final pulumi.Output<VpnGatewayBgpSettings> bgpSettings;
  /// An `ip_configuration` block as defined below.
  late final pulumi.Output<List<VpnGatewayIpConfiguration>> ipConfigurations;
  /// The Azure location where this VPN Gateway should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The Name which should be used for this VPN Gateway. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Name of the Resource Group in which this VPN Gateway should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Azure routing preference lets you to choose how your traffic routes between Azure and the internet. You can choose to route traffic either via the Microsoft network (default value, `Microsoft Network`), or via the ISP network (public internet, set to `Internet`). More context of the configuration can be found in the [Microsoft Docs](https://docs.microsoft.com/azure/virtual-wan/virtual-wan-site-to-site-portal#gateway) to create a VPN Gateway. Defaults to `Microsoft Network`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> routingPreference;
  /// The Scale Unit for this VPN Gateway. Defaults to `1`.
  late final pulumi.Output<int?> scaleUnit;
  /// A mapping of tags to assign to the VPN Gateway.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The ID of the Virtual Hub within which this VPN Gateway should be created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualHubId;

  /// Creates a new [VpnGateway].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpnGateway]. {@macro pulumi_network_vpn_gateway_vpn_gateway_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpnGateway(
    String name, {
    VpnGatewayArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/vpnGateway:VpnGateway',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bgpRouteTranslationForNatEnabled = registerOutput<bool?>('bgpRouteTranslationForNatEnabled');
    this.bgpSettings = registerOutput<VpnGatewayBgpSettings>('bgpSettings');
    this.ipConfigurations = registerOutput<List<VpnGatewayIpConfiguration>>('ipConfigurations');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.routingPreference = registerOutput<String?>('routingPreference');
    this.scaleUnit = registerOutput<int?>('scaleUnit');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualHubId = registerOutput<String>('virtualHubId');
  }

  /// Gets an existing [VpnGateway] resource's state with the given [name] and [id].
  static VpnGateway get(
    String name,
    pulumi.Input<String> id, {
    VpnGatewayState? state,
  }) {
    return VpnGateway._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpnGateway._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/vpnGateway:VpnGateway',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bgpRouteTranslationForNatEnabled = registerOutput<bool?>('bgpRouteTranslationForNatEnabled');
    this.bgpSettings = registerOutput<VpnGatewayBgpSettings>('bgpSettings');
    this.ipConfigurations = registerOutput<List<VpnGatewayIpConfiguration>>('ipConfigurations');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.routingPreference = registerOutput<String?>('routingPreference');
    this.scaleUnit = registerOutput<int?>('scaleUnit');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.virtualHubId = registerOutput<String>('virtualHubId');
  }
}
