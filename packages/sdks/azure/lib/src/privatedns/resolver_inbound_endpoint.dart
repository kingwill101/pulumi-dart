import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_inbound_endpoint_args.dart';
import 'resolver_inbound_endpoint_ip_configurations.dart';
import 'resolver_inbound_endpoint_state.dart';

/// Manages a Private DNS Resolver Inbound Endpoint.
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
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleResolver = new azure.privatedns.Resolver("example", {
///     name: "example",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualNetworkId: exampleVirtualNetwork.id,
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "inbounddns",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.0.0/28"],
///     delegations: [{
///         name: "Microsoft.Network.dnsResolvers",
///         serviceDelegation: {
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///             name: "Microsoft.Network/dnsResolvers",
///         },
///     }],
/// });
/// const exampleResolverInboundEndpoint = new azure.privatedns.ResolverInboundEndpoint("example", {
///     name: "example-drie",
///     privateDnsResolverId: exampleResolver.id,
///     location: exampleResolver.location,
///     ipConfigurations: {
///         privateIpAllocationMethod: "Dynamic",
///         subnetId: exampleSubnet.id,
///     },
///     tags: {
///         key: "value",
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
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     address_spaces=["10.0.0.0/16"])
/// example_resolver = azure.privatedns.Resolver("example",
///     name="example",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_network_id=example_virtual_network.id)
/// example_subnet = azure.network.Subnet("example",
///     name="inbounddns",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.0.0/28"],
///     delegations=[{
///         "name": "Microsoft.Network.dnsResolvers",
///         "service_delegation": {
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///             "name": "Microsoft.Network/dnsResolvers",
///         },
///     }])
/// example_resolver_inbound_endpoint = azure.privatedns.ResolverInboundEndpoint("example",
///     name="example-drie",
///     private_dns_resolver_id=example_resolver.id,
///     location=example_resolver.location,
///     ip_configurations={
///         "private_ip_allocation_method": "Dynamic",
///         "subnet_id": example_subnet.id,
///     },
///     tags={
///         "key": "value",
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
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleResolver = new Azure.PrivateDns.Resolver("example", new()
///     {
///         Name = "example",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualNetworkId = exampleVirtualNetwork.Id,
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "inbounddns",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.0.0/28",
///         },
///         Delegations = new[]
///         {
///             new Azure.Network.Inputs.SubnetDelegationArgs
///             {
///                 Name = "Microsoft.Network.dnsResolvers",
///                 ServiceDelegation = new Azure.Network.Inputs.SubnetDelegationServiceDelegationArgs
///                 {
///                     Actions = new[]
///                     {
///                         "Microsoft.Network/virtualNetworks/subnets/join/action",
///                     },
///                     Name = "Microsoft.Network/dnsResolvers",
///                 },
///             },
///         },
///     });
///
///     var exampleResolverInboundEndpoint = new Azure.PrivateDns.ResolverInboundEndpoint("example", new()
///     {
///         Name = "example-drie",
///         PrivateDnsResolverId = exampleResolver.Id,
///         Location = exampleResolver.Location,
///         IpConfigurations = new Azure.PrivateDns.Inputs.ResolverInboundEndpointIpConfigurationsArgs
///         {
///             PrivateIpAllocationMethod = "Dynamic",
///             SubnetId = exampleSubnet.Id,
///         },
///         Tags =
///         {
///             { "key", "value" },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/privatedns"
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
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResolver, err := privatedns.NewResolver(ctx, "example", &privatedns.ResolverArgs{
/// 			Name:              pulumi.String("example"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualNetworkId:  exampleVirtualNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("inbounddns"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/28"),
/// 			},
/// 			Delegations: network.SubnetDelegationArray{
/// 				&network.SubnetDelegationArgs{
/// 					Name: pulumi.String("Microsoft.Network.dnsResolvers"),
/// 					ServiceDelegation: &network.SubnetDelegationServiceDelegationArgs{
/// 						Actions: pulumi.StringArray{
/// 							pulumi.String("Microsoft.Network/virtualNetworks/subnets/join/action"),
/// 						},
/// 						Name: pulumi.String("Microsoft.Network/dnsResolvers"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatedns.NewResolverInboundEndpoint(ctx, "example", &privatedns.ResolverInboundEndpointArgs{
/// 			Name:                 pulumi.String("example-drie"),
/// 			PrivateDnsResolverId: exampleResolver.ID(),
/// 			Location:             exampleResolver.Location,
/// 			IpConfigurations: &privatedns.ResolverInboundEndpointIpConfigurationsArgs{
/// 				PrivateIpAllocationMethod: pulumi.String("Dynamic"),
/// 				SubnetId:                  exampleSubnet.ID(),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.privatedns.Resolver;
/// import com.pulumi.azure.privatedns.ResolverArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.privatedns.ResolverInboundEndpoint;
/// import com.pulumi.azure.privatedns.ResolverInboundEndpointArgs;
/// import com.pulumi.azure.privatedns.inputs.ResolverInboundEndpointIpConfigurationsArgs;
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
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleResolver = new Resolver("exampleResolver", ResolverArgs.builder()
///             .name("example")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualNetworkId(exampleVirtualNetwork.id())
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("inbounddns")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.0.0/28")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("Microsoft.Network.dnsResolvers")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .name("Microsoft.Network/dnsResolvers")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleResolverInboundEndpoint = new ResolverInboundEndpoint("exampleResolverInboundEndpoint", ResolverInboundEndpointArgs.builder()
///             .name("example-drie")
///             .privateDnsResolverId(exampleResolver.id())
///             .location(exampleResolver.location())
///             .ipConfigurations(ResolverInboundEndpointIpConfigurationsArgs.builder()
///                 .privateIpAllocationMethod("Dynamic")
///                 .subnetId(exampleSubnet.id())
///                 .build())
///             .tags(Map.of("key", "value"))
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
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleResolver:
///     type: azure:privatedns:Resolver
///     name: example
///     properties:
///       name: example
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualNetworkId: ${exampleVirtualNetwork.id}
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: inbounddns
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.0.0/28
///       delegations:
///         - name: Microsoft.Network.dnsResolvers
///           serviceDelegation:
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///             name: Microsoft.Network/dnsResolvers
///   exampleResolverInboundEndpoint:
///     type: azure:privatedns:ResolverInboundEndpoint
///     name: example
///     properties:
///       name: example-drie
///       privateDnsResolverId: ${exampleResolver.id}
///       location: ${exampleResolver.location}
///       ipConfigurations:
///         privateIpAllocationMethod: Dynamic
///         subnetId: ${exampleSubnet.id}
///       tags:
///         key: value
/// ```
///
///
/// ## API Providers
///
/// &lt;!-- This section is generated, changes will be overwritten --&gt;
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2022-07-01
///
/// ## Import
///
/// Private DNS Resolver Inbound Endpoint can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatedns/resolverInboundEndpoint:ResolverInboundEndpoint example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/dnsResolvers/dnsResolver1/inboundEndpoints/inboundEndpoint1
/// ```
class ResolverInboundEndpoint extends pulumi.CustomResource {
  /// One `ip_configurations` block as defined below. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  late final pulumi.Output<ResolverInboundEndpointIpConfigurations> ipConfigurations;
  /// Specifies the Azure Region where the Private DNS Resolver Inbound Endpoint should exist. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name which should be used for this Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  late final pulumi.Output<String> name;
  /// Specifies the ID of the Private DNS Resolver Inbound Endpoint. Changing this forces a new Private DNS Resolver Inbound Endpoint to be created.
  late final pulumi.Output<String> privateDnsResolverId;
  /// A mapping of tags which should be assigned to the Private DNS Resolver Inbound Endpoint.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [ResolverInboundEndpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverInboundEndpoint]. {@macro pulumi_privatedns_resolver_inbound_endpoint_resolver_inbound_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverInboundEndpoint(
    String name, {
    ResolverInboundEndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/resolverInboundEndpoint:ResolverInboundEndpoint',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ipConfigurations = registerOutput<ResolverInboundEndpointIpConfigurations>('ipConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverInboundEndpointIpConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateDnsResolverId = registerOutput<String>('privateDnsResolverId');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [ResolverInboundEndpoint] resource's state with the given [name] and [id].
  static ResolverInboundEndpoint get(
    String name,
    pulumi.Input<String> id, {
    ResolverInboundEndpointState? state,
  }) {
    return ResolverInboundEndpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResolverInboundEndpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/resolverInboundEndpoint:ResolverInboundEndpoint',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    ipConfigurations = registerOutput<ResolverInboundEndpointIpConfigurations>('ipConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResolverInboundEndpointIpConfigurations.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    privateDnsResolverId = registerOutput<String>('privateDnsResolverId');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
