import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_args.dart';
import 'virtual_network_ddos_protection_plan.dart';
import 'virtual_network_encryption.dart';
import 'virtual_network_ip_address_pool.dart';
import 'virtual_network_state.dart';
import 'virtual_network_subnet.dart';

/// Manages a virtual network including any configured subnets. Each subnet can
/// optionally be configured with a security group to be associated with the subnet.
///
/// &gt; **NOTE on Virtual Networks and Subnet's:** This provider currently
/// provides both a standalone Subnet resource, and allows for Subnets to be defined in-line within the Virtual Network resource.
/// At this time you cannot use a Virtual Network with in-line Subnets in conjunction with any Subnet resources. Doing so will cause a conflict of Subnet configurations and will overwrite Subnet's.
/// &gt; **NOTE on Virtual Networks and DNS Servers:** This provider currently provides both a standalone virtual network DNS Servers resource, and allows for DNS servers to be defined in-line within the Virtual Network resource.
/// At this time you cannot use a Virtual Network with in-line DNS servers in conjunction with any Virtual Network DNS Servers resources. Doing so will cause a conflict of Virtual Network DNS Servers configurations and will overwrite virtual networks DNS servers.
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
/// const exampleNetworkSecurityGroup = new azure.network.NetworkSecurityGroup("example", {
///     name: "example-security-group",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-network",
///     location: example.location,
///     resourceGroupName: example.name,
///     addressSpaces: ["10.0.0.0/16"],
///     dnsServers: [
///         "10.0.0.4",
///         "10.0.0.5",
///     ],
///     subnets: [
///         {
///             name: "subnet1",
///             addressPrefixes: ["10.0.1.0/24"],
///         },
///         {
///             name: "subnet2",
///             addressPrefixes: ["10.0.2.0/24"],
///             securityGroup: exampleNetworkSecurityGroup.id,
///         },
///     ],
///     tags: {
///         environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_network_security_group = azure.network.NetworkSecurityGroup("example",
///     name="example-security-group",
///     location=example.location,
///     resource_group_name=example.name)
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-network",
///     location=example.location,
///     resource_group_name=example.name,
///     address_spaces=["10.0.0.0/16"],
///     dns_servers=[
///         "10.0.0.4",
///         "10.0.0.5",
///     ],
///     subnets=[
///         {
///             "name": "subnet1",
///             "address_prefixes": ["10.0.1.0/24"],
///         },
///         {
///             "name": "subnet2",
///             "address_prefixes": ["10.0.2.0/24"],
///             "security_group": example_network_security_group.id,
///         },
///     ],
///     tags={
///         "environment": "Production",
///     })
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
///     var exampleNetworkSecurityGroup = new Azure.Network.NetworkSecurityGroup("example", new()
///     {
///         Name = "example-security-group",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
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
///         DnsServers = new[]
///         {
///             "10.0.0.4",
///             "10.0.0.5",
///         },
///         Subnets = new[]
///         {
///             new Azure.Network.Inputs.VirtualNetworkSubnetArgs
///             {
///                 Name = "subnet1",
///                 AddressPrefixes = new[]
///                 {
///                     "10.0.1.0/24",
///                 },
///             },
///             new Azure.Network.Inputs.VirtualNetworkSubnetArgs
///             {
///                 Name = "subnet2",
///                 AddressPrefixes = new[]
///                 {
///                     "10.0.2.0/24",
///                 },
///                 SecurityGroup = exampleNetworkSecurityGroup.Id,
///             },
///         },
///         Tags =
///         {
///             { "environment", "Production" },
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
/// 		exampleNetworkSecurityGroup, err := network.NewNetworkSecurityGroup(ctx, "example", &network.NetworkSecurityGroupArgs{
/// 			Name:              pulumi.String("example-security-group"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
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
/// 			DnsServers: pulumi.StringArray{
/// 				pulumi.String("10.0.0.4"),
/// 				pulumi.String("10.0.0.5"),
/// 			},
/// 			Subnets: network.VirtualNetworkSubnetArray{
/// 				&network.VirtualNetworkSubnetArgs{
/// 					Name: pulumi.String("subnet1"),
/// 					AddressPrefixes: pulumi.StringArray{
/// 						pulumi.String("10.0.1.0/24"),
/// 					},
/// 				},
/// 				&network.VirtualNetworkSubnetArgs{
/// 					Name: pulumi.String("subnet2"),
/// 					AddressPrefixes: pulumi.StringArray{
/// 						pulumi.String("10.0.2.0/24"),
/// 					},
/// 					SecurityGroup: exampleNetworkSecurityGroup.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
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
/// resource "azure_network_networksecuritygroup" "example" {
///   name                = "example-security-group"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-network"
///   location            = azure_core_resourcegroup.example.location
///   resource_group_name = azure_core_resourcegroup.example.name
///   address_spaces      = ["10.0.0.0/16"]
///   dns_servers         = ["10.0.0.4", "10.0.0.5"]
///   subnets {
///     name             = "subnet1"
///     address_prefixes = ["10.0.1.0/24"]
///   }
///   subnets {
///     name             = "subnet2"
///     address_prefixes = ["10.0.2.0/24"]
///     security_group   = azure_network_networksecuritygroup.example.id
///   }
///   tags = {
///     "environment" = "Production"
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
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.inputs.VirtualNetworkSubnetArgs;
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
///         var exampleNetworkSecurityGroup = new NetworkSecurityGroup("exampleNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name("example-security-group")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-network")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .addressSpaces("10.0.0.0/16")
///             .dnsServers(
///                 "10.0.0.4",
///                 "10.0.0.5")
///             .subnets(
///                 VirtualNetworkSubnetArgs.builder()
///                     .name("subnet1")
///                     .addressPrefixes("10.0.1.0/24")
///                     .build(),
///                 VirtualNetworkSubnetArgs.builder()
///                     .name("subnet2")
///                     .addressPrefixes("10.0.2.0/24")
///                     .securityGroup(exampleNetworkSecurityGroup.id())
///                     .build())
///             .tags(Map.of("environment", "Production"))
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
///   exampleNetworkSecurityGroup:
///     type: azure:network:NetworkSecurityGroup
///     name: example
///     properties:
///       name: example-security-group
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-network
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       addressSpaces:
///         - 10.0.0.0/16
///       dnsServers:
///         - 10.0.0.4
///         - 10.0.0.5
///       subnets:
///         - name: subnet1
///           addressPrefixes:
///             - 10.0.1.0/24
///         - name: subnet2
///           addressPrefixes:
///             - 10.0.2.0/24
///           securityGroup: ${exampleNetworkSecurityGroup.id}
///       tags:
///         environment: Production
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
/// Virtual Networks can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/virtualNetwork:VirtualNetwork exampleNetwork /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/virtualNetworks/myvnet1
/// ```
class VirtualNetwork extends pulumi.CustomResource {
  /// The address space that is used the virtual network. You can supply more than one address space.
  ///
  /// &gt; **Note:** Exactly one of `addressSpace` or `ipAddressPool` must be specified.
  late final pulumi.Output<List<String>?> addressSpaces;
  /// The BGP community attribute in format `&lt;as-number&gt;:&lt;community-value&gt;`.
  ///
  /// &gt; **NOTE** The `as-number` segment is the Microsoft ASN, which is always `12076` for now.
  late final pulumi.Output<String?> bgpCommunity;
  /// A `ddosProtectionPlan` block as documented below.
  late final pulumi.Output<VirtualNetworkDdosProtectionPlan?> ddosProtectionPlan;
  /// List of IP addresses of DNS servers
  ///
  /// &gt; **NOTE** Since `dnsServers` can be configured both inline and via the separate `azure.network.VirtualNetworkDnsServers` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  late final pulumi.Output<List<String>> dnsServers;
  /// Specifies the Edge Zone within the Azure Region where this Virtual Network should exist. Changing this forces a new Virtual Network to be created.
  late final pulumi.Output<String?> edgeZone;
  /// A `encryption` block as defined below.
  late final pulumi.Output<VirtualNetworkEncryption?> encryption;
  /// The flow timeout in minutes for the Virtual Network, which is used to enable connection tracking for intra-VM flows. Possible values are between `4` and `30` minutes.
  late final pulumi.Output<int?> flowTimeoutInMinutes;
  /// The GUID of the Virtual Network.
  late final pulumi.Output<String> guid;
  /// One or more `ipAddressPool` blocks as defined below. Only one association of each IP type(IPv4 or IPv6) is allowed.
  ///
  /// &gt; **Note:** Exactly one of `addressSpace` or `ipAddressPool` must be specified.
  late final pulumi.Output<List<VirtualNetworkIpAddressPool>?> ipAddressPools;
  /// The location/region where the virtual network is created. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// The name of the virtual network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The Private Endpoint VNet Policies for the Virtual Network. Possible values are `Disabled` and `Basic`. Defaults to `Disabled`.
  late final pulumi.Output<String?> privateEndpointVnetPolicies;
  /// The name of the resource group in which to create the virtual network. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Can be specified multiple times to define multiple subnets. Each `subnet` block supports fields documented below.
  ///
  /// &gt; **NOTE** Since `subnet` can be configured both inline and via the separate `azure.network.Subnet` resource, we have to explicitly set it to empty slice (`[]`) to remove it.
  late final pulumi.Output<List<VirtualNetworkSubnet>> subnets;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [VirtualNetwork].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetwork]. {@macro pulumi_network_virtual_network_virtual_network_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetwork(
    String name, {
    VirtualNetworkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualNetwork:VirtualNetwork',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.40.0').merge(options),
        ) {
    addressSpaces = registerOutput<List<String>?>('addressSpaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    bgpCommunity = registerOutput<String?>('bgpCommunity');
    ddosProtectionPlan = registerOutput<VirtualNetworkDdosProtectionPlan?>('ddosProtectionPlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkDdosProtectionPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsServers = registerOutput<List<String>>('dnsServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    edgeZone = registerOutput<String?>('edgeZone');
    encryption = registerOutput<VirtualNetworkEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    flowTimeoutInMinutes = registerOutput<int?>('flowTimeoutInMinutes');
    guid = registerOutput<String>('guid');
    ipAddressPools = registerOutput<List<VirtualNetworkIpAddressPool>?>('ipAddressPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkIpAddressPool>(guardedValue, (value) => VirtualNetworkIpAddressPool.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointVnetPolicies = registerOutput<String?>('privateEndpointVnetPolicies');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnets = registerOutput<List<VirtualNetworkSubnet>>('subnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkSubnet>(guardedValue, (value) => VirtualNetworkSubnet.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [VirtualNetwork] resource's state with the given [name] and [id].
  static VirtualNetwork get(
    String name,
    pulumi.Input<String> id, {
    VirtualNetworkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return VirtualNetwork._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  VirtualNetwork._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/virtualNetwork:VirtualNetwork',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    addressSpaces = registerOutput<List<String>?>('addressSpaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    bgpCommunity = registerOutput<String?>('bgpCommunity');
    ddosProtectionPlan = registerOutput<VirtualNetworkDdosProtectionPlan?>('ddosProtectionPlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkDdosProtectionPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsServers = registerOutput<List<String>>('dnsServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    edgeZone = registerOutput<String?>('edgeZone');
    encryption = registerOutput<VirtualNetworkEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    flowTimeoutInMinutes = registerOutput<int?>('flowTimeoutInMinutes');
    guid = registerOutput<String>('guid');
    ipAddressPools = registerOutput<List<VirtualNetworkIpAddressPool>?>('ipAddressPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkIpAddressPool>(guardedValue, (value) => VirtualNetworkIpAddressPool.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointVnetPolicies = registerOutput<String?>('privateEndpointVnetPolicies');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnets = registerOutput<List<VirtualNetworkSubnet>>('subnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkSubnet>(guardedValue, (value) => VirtualNetworkSubnet.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [VirtualNetwork] resource.
  VirtualNetwork.reference(String urn)
    : super(
        'azure:network/virtualNetwork:VirtualNetwork',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    addressSpaces = registerOutput<List<String>?>('addressSpaces', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    bgpCommunity = registerOutput<String?>('bgpCommunity');
    ddosProtectionPlan = registerOutput<VirtualNetworkDdosProtectionPlan?>('ddosProtectionPlan', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkDdosProtectionPlan.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    dnsServers = registerOutput<List<String>>('dnsServers', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    edgeZone = registerOutput<String?>('edgeZone');
    encryption = registerOutput<VirtualNetworkEncryption?>('encryption', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VirtualNetworkEncryption.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    flowTimeoutInMinutes = registerOutput<int?>('flowTimeoutInMinutes');
    guid = registerOutput<String>('guid');
    ipAddressPools = registerOutput<List<VirtualNetworkIpAddressPool>?>('ipAddressPools', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkIpAddressPool>(guardedValue, (value) => VirtualNetworkIpAddressPool.fromMap((value as Map).cast<String, dynamic>())); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateEndpointVnetPolicies = registerOutput<String?>('privateEndpointVnetPolicies');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    subnets = registerOutput<List<VirtualNetworkSubnet>>('subnets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<VirtualNetworkSubnet>(guardedValue, (value) => VirtualNetworkSubnet.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
