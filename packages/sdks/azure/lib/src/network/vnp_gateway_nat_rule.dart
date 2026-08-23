import 'package:pulumi/pulumi.dart' as pulumi;
import 'vnp_gateway_nat_rule_args.dart';
import 'vnp_gateway_nat_rule_state.dart';

/// Manages a VPN Gateway NAT Rule.
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
///     name: "example-vhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     addressPrefix: "10.0.1.0/24",
///     virtualWanId: exampleVirtualWan.id,
/// });
/// const exampleVpnGateway = new azure.network.VpnGateway("example", {
///     name: "example-vpngateway",
///     location: example.location,
///     resourceGroupName: example.name,
///     virtualHubId: exampleVirtualHub.id,
/// });
/// const exampleVnpGatewayNatRule = new azure.network.VnpGatewayNatRule("example", {
///     name: "example-vpngatewaynatrule",
///     vpnGatewayId: exampleVpnGateway.id,
///     externalMappings: [{
///         addressSpace: "192.168.21.0/26",
///     }],
///     internalMappings: [{
///         addressSpace: "10.4.0.0/26",
///     }],
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
///     name="example-vhub",
///     resource_group_name=example.name,
///     location=example.location,
///     address_prefix="10.0.1.0/24",
///     virtual_wan_id=example_virtual_wan.id)
/// example_vpn_gateway = azure.network.VpnGateway("example",
///     name="example-vpngateway",
///     location=example.location,
///     resource_group_name=example.name,
///     virtual_hub_id=example_virtual_hub.id)
/// example_vnp_gateway_nat_rule = azure.network.VnpGatewayNatRule("example",
///     name="example-vpngatewaynatrule",
///     vpn_gateway_id=example_vpn_gateway.id,
///     external_mappings=[{
///         "address_space": "192.168.21.0/26",
///     }],
///     internal_mappings=[{
///         "address_space": "10.4.0.0/26",
///     }])
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
///         Name = "example-vhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AddressPrefix = "10.0.1.0/24",
///         VirtualWanId = exampleVirtualWan.Id,
///     });
///
///     var exampleVpnGateway = new Azure.Network.VpnGateway("example", new()
///     {
///         Name = "example-vpngateway",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         VirtualHubId = exampleVirtualHub.Id,
///     });
///
///     var exampleVnpGatewayNatRule = new Azure.Network.VnpGatewayNatRule("example", new()
///     {
///         Name = "example-vpngatewaynatrule",
///         VpnGatewayId = exampleVpnGateway.Id,
///         ExternalMappings = new[]
///         {
///             new Azure.Network.Inputs.VnpGatewayNatRuleExternalMappingArgs
///             {
///                 AddressSpace = "192.168.21.0/26",
///             },
///         },
///         InternalMappings = new[]
///         {
///             new Azure.Network.Inputs.VnpGatewayNatRuleInternalMappingArgs
///             {
///                 AddressSpace = "10.4.0.0/26",
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
/// 			Name:              pulumi.String("example-vhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AddressPrefix:     pulumi.String("10.0.1.0/24"),
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVpnGateway, err := network.NewVpnGateway(ctx, "example", &network.VpnGatewayArgs{
/// 			Name:              pulumi.String("example-vpngateway"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			VirtualHubId:      exampleVirtualHub.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewVnpGatewayNatRule(ctx, "example", &network.VnpGatewayNatRuleArgs{
/// 			Name:         pulumi.String("example-vpngatewaynatrule"),
/// 			VpnGatewayId: exampleVpnGateway.ID(),
/// 			ExternalMappings: network.VnpGatewayNatRuleExternalMappingArray{
/// 				&network.VnpGatewayNatRuleExternalMappingArgs{
/// 					AddressSpace: pulumi.String("192.168.21.0/26"),
/// 				},
/// 			},
/// 			InternalMappings: network.VnpGatewayNatRuleInternalMappingArray{
/// 				&network.VnpGatewayNatRuleInternalMappingArgs{
/// 					AddressSpace: pulumi.String("10.4.0.0/26"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     azure = {
///       source = "pulumi/azure"
///     }
///   }
/// }
///
/// resource "azure_core_resourcegroup" "example" {
///   name     = "example-resources"
///   location = "West Europe"
/// }
/// resource "azure_network_virtualwan" "example" {
///   name                = "example-vwan"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
/// }
/// resource "azure_network_virtualhub" "example" {
///   name                = "example-vhub"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   address_prefix      = "10.0.1.0/24"
///   virtual_wan_id      = azure_network_virtualwan.example.id
/// }
/// resource "azure_network_vpngateway" "example" {
///   name                = "example-vpngateway"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   virtual_hub_id      = azure_network_virtualhub.example.id
/// }
/// resource "azure_network_vnpgatewaynatrule" "example" {
///   name           = "example-vpngatewaynatrule"
///   vpn_gateway_id = azure_network_vpngateway.example.id
///   external_mappings {
///     address_space = "192.168.21.0/26"
///   }
///   internal_mappings {
///     address_space = "10.4.0.0/26"
///   }
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
/// import com.pulumi.azure.network.VnpGatewayNatRule;
/// import com.pulumi.azure.network.VnpGatewayNatRuleArgs;
/// import com.pulumi.azure.network.inputs.VnpGatewayNatRuleExternalMappingArgs;
/// import com.pulumi.azure.network.inputs.VnpGatewayNatRuleInternalMappingArgs;
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
///             .name("example-vhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .addressPrefix("10.0.1.0/24")
///             .virtualWanId(exampleVirtualWan.id())
///             .build());
///
///         var exampleVpnGateway = new VpnGateway("exampleVpnGateway", VpnGatewayArgs.builder()
///             .name("example-vpngateway")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .virtualHubId(exampleVirtualHub.id())
///             .build());
///
///         var exampleVnpGatewayNatRule = new VnpGatewayNatRule("exampleVnpGatewayNatRule", VnpGatewayNatRuleArgs.builder()
///             .name("example-vpngatewaynatrule")
///             .vpnGatewayId(exampleVpnGateway.id())
///             .externalMappings(VnpGatewayNatRuleExternalMappingArgs.builder()
///                 .addressSpace("192.168.21.0/26")
///                 .build())
///             .internalMappings(VnpGatewayNatRuleInternalMappingArgs.builder()
///                 .addressSpace("10.4.0.0/26")
///                 .build())
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
///       name: example-vhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       addressPrefix: 10.0.1.0/24
///       virtualWanId: ${exampleVirtualWan.id}
///   exampleVpnGateway:
///     type: azure:network:VpnGateway
///     name: example
///     properties:
///       name: example-vpngateway
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       virtualHubId: ${exampleVirtualHub.id}
///   exampleVnpGatewayNatRule:
///     type: azure:network:VnpGatewayNatRule
///     name: example
///     properties:
///       name: example-vpngatewaynatrule
///       vpnGatewayId: ${exampleVpnGateway.id}
///       externalMappings:
///         - addressSpace: 192.168.21.0/26
///       internalMappings:
///         - addressSpace: 10.4.0.0/26
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
/// VPN Gateway NAT Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/vnpGatewayNatRule:VnpGatewayNatRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resGroup1/providers/Microsoft.Network/vpnGateways/vpnGateway1/natRules/natRule1
/// ```
class VnpGatewayNatRule extends pulumi.CustomResource {
  /// One of more `externalMapping` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> externalMappings;
  /// One of more `internalMapping` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> internalMappings;
  /// The ID of the IP Configuration this VPN Gateway NAT Rule applies to. Possible values are `Instance0` and `Instance1`.
  late final pulumi.Output<String?> ipConfigurationId;
  /// The source NAT direction of the VPN NAT. Possible values are `EgressSnat` and `IngressSnat`. Defaults to `EgressSnat`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> mode;
  /// The name which should be used for this VPN Gateway NAT Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The type of the VPN Gateway NAT Rule. Possible values are `Dynamic` and `Static`. Defaults to `Static`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> type;
  /// The ID of the VPN Gateway that this VPN Gateway NAT Rule belongs to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> vpnGatewayId;

  /// Creates a new [VnpGatewayNatRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VnpGatewayNatRule]. {@macro pulumi_network_vnp_gateway_nat_rule_vnp_gateway_nat_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VnpGatewayNatRule(
    String name, {
    VnpGatewayNatRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/vnpGatewayNatRule:VnpGatewayNatRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    externalMappings = registerOutput<List<Map<String, dynamic>>?>('externalMappings');
    internalMappings = registerOutput<List<Map<String, dynamic>>?>('internalMappings');
    ipConfigurationId = registerOutput<String?>('ipConfigurationId');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    type = registerOutput<String?>('type');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }

  /// Gets an existing [VnpGatewayNatRule] resource's state with the given [name] and [id].
  static VnpGatewayNatRule get(
    String name,
    pulumi.Input<String> id, {
    VnpGatewayNatRuleState? state,
  }) {
    return VnpGatewayNatRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VnpGatewayNatRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/vnpGatewayNatRule:VnpGatewayNatRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    externalMappings = registerOutput<List<Map<String, dynamic>>?>('externalMappings');
    internalMappings = registerOutput<List<Map<String, dynamic>>?>('internalMappings');
    ipConfigurationId = registerOutput<String?>('ipConfigurationId');
    mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    type = registerOutput<String?>('type');
    vpnGatewayId = registerOutput<String>('vpnGatewayId');
  }
}
