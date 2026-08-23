import 'package:pulumi/pulumi.dart' as pulumi;
import 'resolver_forwarding_rule_args.dart';
import 'resolver_forwarding_rule_state.dart';

/// Manages a Private DNS Resolver Forwarding Rule.
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
///     location: "west europe",
/// });
/// const exampleVirtualNetwork = new azure.network.VirtualNetwork("example", {
///     name: "example-vnet",
///     resourceGroupName: example.name,
///     location: example.location,
///     addressSpaces: ["10.0.0.0/16"],
/// });
/// const exampleSubnet = new azure.network.Subnet("example", {
///     name: "outbounddns",
///     resourceGroupName: example.name,
///     virtualNetworkName: exampleVirtualNetwork.name,
///     addressPrefixes: ["10.0.0.64/28"],
///     delegations: [{
///         name: "Microsoft.Network.dnsResolvers",
///         serviceDelegation: {
///             actions: ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///             name: "Microsoft.Network/dnsResolvers",
///         },
///     }],
/// });
/// const exampleResolver = new azure.privatedns.Resolver("example", {
///     name: "example-resolver",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualNetworkId: exampleVirtualNetwork.id,
/// });
/// const exampleResolverOutboundEndpoint = new azure.privatedns.ResolverOutboundEndpoint("example", {
///     name: "example-endpoint",
///     privateDnsResolverId: exampleResolver.id,
///     location: exampleResolver.location,
///     subnetId: exampleSubnet.id,
///     tags: {
///         key: "value",
///     },
/// });
/// const exampleResolverDnsForwardingRuleset = new azure.privatedns.ResolverDnsForwardingRuleset("example", {
///     name: "example-drdfr",
///     resourceGroupName: example.name,
///     location: example.location,
///     privateDnsResolverOutboundEndpointIds: [exampleResolverOutboundEndpoint.id],
/// });
/// const exampleResolverForwardingRule = new azure.privatedns.ResolverForwardingRule("example", {
///     name: "example-rule",
///     dnsForwardingRulesetId: exampleResolverDnsForwardingRuleset.id,
///     domainName: "onprem.local.",
///     enabled: true,
///     targetDnsServers: [{
///         ipAddress: "10.10.0.1",
///         port: 53,
///     }],
///     metadata: {
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
///     location="west europe")
/// example_virtual_network = azure.network.VirtualNetwork("example",
///     name="example-vnet",
///     resource_group_name=example.name,
///     location=example.location,
///     address_spaces=["10.0.0.0/16"])
/// example_subnet = azure.network.Subnet("example",
///     name="outbounddns",
///     resource_group_name=example.name,
///     virtual_network_name=example_virtual_network.name,
///     address_prefixes=["10.0.0.64/28"],
///     delegations=[{
///         "name": "Microsoft.Network.dnsResolvers",
///         "service_delegation": {
///             "actions": ["Microsoft.Network/virtualNetworks/subnets/join/action"],
///             "name": "Microsoft.Network/dnsResolvers",
///         },
///     }])
/// example_resolver = azure.privatedns.Resolver("example",
///     name="example-resolver",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_network_id=example_virtual_network.id)
/// example_resolver_outbound_endpoint = azure.privatedns.ResolverOutboundEndpoint("example",
///     name="example-endpoint",
///     private_dns_resolver_id=example_resolver.id,
///     location=example_resolver.location,
///     subnet_id=example_subnet.id,
///     tags={
///         "key": "value",
///     })
/// example_resolver_dns_forwarding_ruleset = azure.privatedns.ResolverDnsForwardingRuleset("example",
///     name="example-drdfr",
///     resource_group_name=example.name,
///     location=example.location,
///     private_dns_resolver_outbound_endpoint_ids=[example_resolver_outbound_endpoint.id])
/// example_resolver_forwarding_rule = azure.privatedns.ResolverForwardingRule("example",
///     name="example-rule",
///     dns_forwarding_ruleset_id=example_resolver_dns_forwarding_ruleset.id,
///     domain_name="onprem.local.",
///     enabled=True,
///     target_dns_servers=[{
///         "ip_address": "10.10.0.1",
///         "port": 53,
///     }],
///     metadata={
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
///         Location = "west europe",
///     });
///
///     var exampleVirtualNetwork = new Azure.Network.VirtualNetwork("example", new()
///     {
///         Name = "example-vnet",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AddressSpaces = new[]
///         {
///             "10.0.0.0/16",
///         },
///     });
///
///     var exampleSubnet = new Azure.Network.Subnet("example", new()
///     {
///         Name = "outbounddns",
///         ResourceGroupName = example.Name,
///         VirtualNetworkName = exampleVirtualNetwork.Name,
///         AddressPrefixes = new[]
///         {
///             "10.0.0.64/28",
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
///     var exampleResolver = new Azure.PrivateDns.Resolver("example", new()
///     {
///         Name = "example-resolver",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualNetworkId = exampleVirtualNetwork.Id,
///     });
///
///     var exampleResolverOutboundEndpoint = new Azure.PrivateDns.ResolverOutboundEndpoint("example", new()
///     {
///         Name = "example-endpoint",
///         PrivateDnsResolverId = exampleResolver.Id,
///         Location = exampleResolver.Location,
///         SubnetId = exampleSubnet.Id,
///         Tags =
///         {
///             { "key", "value" },
///         },
///     });
///
///     var exampleResolverDnsForwardingRuleset = new Azure.PrivateDns.ResolverDnsForwardingRuleset("example", new()
///     {
///         Name = "example-drdfr",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         PrivateDnsResolverOutboundEndpointIds = new[]
///         {
///             exampleResolverOutboundEndpoint.Id,
///         },
///     });
///
///     var exampleResolverForwardingRule = new Azure.PrivateDns.ResolverForwardingRule("example", new()
///     {
///         Name = "example-rule",
///         DnsForwardingRulesetId = exampleResolverDnsForwardingRuleset.Id,
///         DomainName = "onprem.local.",
///         Enabled = true,
///         TargetDnsServers = new[]
///         {
///             new Azure.PrivateDns.Inputs.ResolverForwardingRuleTargetDnsServerArgs
///             {
///                 IpAddress = "10.10.0.1",
///                 Port = 53,
///             },
///         },
///         Metadata =
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
/// 			Location: pulumi.String("west europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualNetwork, err := network.NewVirtualNetwork(ctx, "example", &network.VirtualNetworkArgs{
/// 			Name:              pulumi.String("example-vnet"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AddressSpaces: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/16"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleSubnet, err := network.NewSubnet(ctx, "example", &network.SubnetArgs{
/// 			Name:               pulumi.String("outbounddns"),
/// 			ResourceGroupName:  example.Name,
/// 			VirtualNetworkName: exampleVirtualNetwork.Name,
/// 			AddressPrefixes: pulumi.StringArray{
/// 				pulumi.String("10.0.0.64/28"),
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
/// 		exampleResolver, err := privatedns.NewResolver(ctx, "example", &privatedns.ResolverArgs{
/// 			Name:              pulumi.String("example-resolver"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualNetworkId:  exampleVirtualNetwork.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResolverOutboundEndpoint, err := privatedns.NewResolverOutboundEndpoint(ctx, "example", &privatedns.ResolverOutboundEndpointArgs{
/// 			Name:                 pulumi.String("example-endpoint"),
/// 			PrivateDnsResolverId: exampleResolver.ID(),
/// 			Location:             exampleResolver.Location,
/// 			SubnetId:             exampleSubnet.ID(),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleResolverDnsForwardingRuleset, err := privatedns.NewResolverDnsForwardingRuleset(ctx, "example", &privatedns.ResolverDnsForwardingRulesetArgs{
/// 			Name:              pulumi.String("example-drdfr"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			PrivateDnsResolverOutboundEndpointIds: pulumi.StringArray{
/// 				exampleResolverOutboundEndpoint.ID(),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = privatedns.NewResolverForwardingRule(ctx, "example", &privatedns.ResolverForwardingRuleArgs{
/// 			Name:                   pulumi.String("example-rule"),
/// 			DnsForwardingRulesetId: exampleResolverDnsForwardingRuleset.ID(),
/// 			DomainName:             pulumi.String("onprem.local."),
/// 			Enabled:                pulumi.Bool(true),
/// 			TargetDnsServers: privatedns.ResolverForwardingRuleTargetDnsServerArray{
/// 				&privatedns.ResolverForwardingRuleTargetDnsServerArgs{
/// 					IpAddress: pulumi.String("10.10.0.1"),
/// 					Port:      pulumi.Int(53),
/// 				},
/// 			},
/// 			Metadata: pulumi.StringMap{
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
///   location = "west europe"
/// }
/// resource "azure_network_virtualnetwork" "example" {
///   name                = "example-vnet"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   address_spaces      = ["10.0.0.0/16"]
/// }
/// resource "azure_network_subnet" "example" {
///   name                 = "outbounddns"
///   resource_group_name  = azure_core_resourcegroup.example.name
///   virtual_network_name = azure_network_virtualnetwork.example.name
///   address_prefixes     = ["10.0.0.64/28"]
///   delegations {
///     name = "Microsoft.Network.dnsResolvers"
///     service_delegation = {
///       actions = ["Microsoft.Network/virtualNetworks/subnets/join/action"]
///       name    = "Microsoft.Network/dnsResolvers"
///     }
///   }
/// }
/// resource "azure_privatedns_resolver" "example" {
///   name                = "example-resolver"
///   resource_group_name = azure_core_resourcegroup.example.name
///   location            = azure_core_resourcegroup.example.location
///   virtual_network_id  = azure_network_virtualnetwork.example.id
/// }
/// resource "azure_privatedns_resolveroutboundendpoint" "example" {
///   name                    = "example-endpoint"
///   private_dns_resolver_id = azure_privatedns_resolver.example.id
///   location                = azure_privatedns_resolver.example.location
///   subnet_id               = azure_network_subnet.example.id
///   tags = {
///     "key" = "value"
///   }
/// }
/// resource "azure_privatedns_resolverdnsforwardingruleset" "example" {
///   name                                       = "example-drdfr"
///   resource_group_name                        = azure_core_resourcegroup.example.name
///   location                                   = azure_core_resourcegroup.example.location
///   private_dns_resolver_outbound_endpoint_ids = [azure_privatedns_resolveroutboundendpoint.example.id]
/// }
/// resource "azure_privatedns_resolverforwardingrule" "example" {
///   name                      = "example-rule"
///   dns_forwarding_ruleset_id = azure_privatedns_resolverdnsforwardingruleset.example.id
///   domain_name               = "onprem.local."
///   enabled                   = true
///   target_dns_servers {
///     ip_address = "10.10.0.1"
///     port       = 53
///   }
///   metadata = {
///     "key" = "value"
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
/// import com.pulumi.azure.network.VirtualNetwork;
/// import com.pulumi.azure.network.VirtualNetworkArgs;
/// import com.pulumi.azure.network.Subnet;
/// import com.pulumi.azure.network.SubnetArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationArgs;
/// import com.pulumi.azure.network.inputs.SubnetDelegationServiceDelegationArgs;
/// import com.pulumi.azure.privatedns.Resolver;
/// import com.pulumi.azure.privatedns.ResolverArgs;
/// import com.pulumi.azure.privatedns.ResolverOutboundEndpoint;
/// import com.pulumi.azure.privatedns.ResolverOutboundEndpointArgs;
/// import com.pulumi.azure.privatedns.ResolverDnsForwardingRuleset;
/// import com.pulumi.azure.privatedns.ResolverDnsForwardingRulesetArgs;
/// import com.pulumi.azure.privatedns.ResolverForwardingRule;
/// import com.pulumi.azure.privatedns.ResolverForwardingRuleArgs;
/// import com.pulumi.azure.privatedns.inputs.ResolverForwardingRuleTargetDnsServerArgs;
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
///             .location("west europe")
///             .build());
///
///         var exampleVirtualNetwork = new VirtualNetwork("exampleVirtualNetwork", VirtualNetworkArgs.builder()
///             .name("example-vnet")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .addressSpaces("10.0.0.0/16")
///             .build());
///
///         var exampleSubnet = new Subnet("exampleSubnet", SubnetArgs.builder()
///             .name("outbounddns")
///             .resourceGroupName(example.name())
///             .virtualNetworkName(exampleVirtualNetwork.name())
///             .addressPrefixes("10.0.0.64/28")
///             .delegations(SubnetDelegationArgs.builder()
///                 .name("Microsoft.Network.dnsResolvers")
///                 .serviceDelegation(SubnetDelegationServiceDelegationArgs.builder()
///                     .actions("Microsoft.Network/virtualNetworks/subnets/join/action")
///                     .name("Microsoft.Network/dnsResolvers")
///                     .build())
///                 .build())
///             .build());
///
///         var exampleResolver = new Resolver("exampleResolver", ResolverArgs.builder()
///             .name("example-resolver")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualNetworkId(exampleVirtualNetwork.id())
///             .build());
///
///         var exampleResolverOutboundEndpoint = new ResolverOutboundEndpoint("exampleResolverOutboundEndpoint", ResolverOutboundEndpointArgs.builder()
///             .name("example-endpoint")
///             .privateDnsResolverId(exampleResolver.id())
///             .location(exampleResolver.location())
///             .subnetId(exampleSubnet.id())
///             .tags(Map.of("key", "value"))
///             .build());
///
///         var exampleResolverDnsForwardingRuleset = new ResolverDnsForwardingRuleset("exampleResolverDnsForwardingRuleset", ResolverDnsForwardingRulesetArgs.builder()
///             .name("example-drdfr")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .privateDnsResolverOutboundEndpointIds(exampleResolverOutboundEndpoint.id())
///             .build());
///
///         var exampleResolverForwardingRule = new ResolverForwardingRule("exampleResolverForwardingRule", ResolverForwardingRuleArgs.builder()
///             .name("example-rule")
///             .dnsForwardingRulesetId(exampleResolverDnsForwardingRuleset.id())
///             .domainName("onprem.local.")
///             .enabled(true)
///             .targetDnsServers(ResolverForwardingRuleTargetDnsServerArgs.builder()
///                 .ipAddress("10.10.0.1")
///                 .port(53)
///                 .build())
///             .metadata(Map.of("key", "value"))
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
///       location: west europe
///   exampleVirtualNetwork:
///     type: azure:network:VirtualNetwork
///     name: example
///     properties:
///       name: example-vnet
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       addressSpaces:
///         - 10.0.0.0/16
///   exampleSubnet:
///     type: azure:network:Subnet
///     name: example
///     properties:
///       name: outbounddns
///       resourceGroupName: ${example.name}
///       virtualNetworkName: ${exampleVirtualNetwork.name}
///       addressPrefixes:
///         - 10.0.0.64/28
///       delegations:
///         - name: Microsoft.Network.dnsResolvers
///           serviceDelegation:
///             actions:
///               - Microsoft.Network/virtualNetworks/subnets/join/action
///             name: Microsoft.Network/dnsResolvers
///   exampleResolver:
///     type: azure:privatedns:Resolver
///     name: example
///     properties:
///       name: example-resolver
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualNetworkId: ${exampleVirtualNetwork.id}
///   exampleResolverOutboundEndpoint:
///     type: azure:privatedns:ResolverOutboundEndpoint
///     name: example
///     properties:
///       name: example-endpoint
///       privateDnsResolverId: ${exampleResolver.id}
///       location: ${exampleResolver.location}
///       subnetId: ${exampleSubnet.id}
///       tags:
///         key: value
///   exampleResolverDnsForwardingRuleset:
///     type: azure:privatedns:ResolverDnsForwardingRuleset
///     name: example
///     properties:
///       name: example-drdfr
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       privateDnsResolverOutboundEndpointIds:
///         - ${exampleResolverOutboundEndpoint.id}
///   exampleResolverForwardingRule:
///     type: azure:privatedns:ResolverForwardingRule
///     name: example
///     properties:
///       name: example-rule
///       dnsForwardingRulesetId: ${exampleResolverDnsForwardingRuleset.id}
///       domainName: onprem.local.
///       enabled: true
///       targetDnsServers:
///         - ipAddress: 10.10.0.1
///           port: 53
///       metadata:
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
/// Private DNS Resolver Forwarding Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:privatedns/resolverForwardingRule:ResolverForwardingRule example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/dnsForwardingRulesets/dnsForwardingRuleset1/forwardingRules/forwardingRule1
/// ```
class ResolverForwardingRule extends pulumi.CustomResource {
  /// Specifies the ID of the Private DNS Resolver Forwarding Ruleset. Changing this forces a new Private DNS Resolver Forwarding Rule to be created.
  late final pulumi.Output<String> dnsForwardingRulesetId;
  /// Specifies the domain name for the Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created.
  late final pulumi.Output<String> domainName;
  /// Specifies the state of the Private DNS Resolver Forwarding Rule. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// Metadata attached to the Private DNS Resolver Forwarding Rule.
  late final pulumi.Output<Map<String, String>?> metadata;
  /// Specifies the name which should be used for this Private DNS Resolver Forwarding Rule. Changing this forces a new Private DNS Resolver Forwarding Rule to be created.
  late final pulumi.Output<String> name;
  /// Can be specified multiple times to define multiple target DNS servers. Each `targetDnsServers` block as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>> targetDnsServers;

  /// Creates a new [ResolverForwardingRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResolverForwardingRule]. {@macro pulumi_privatedns_resolver_forwarding_rule_resolver_forwarding_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResolverForwardingRule(
    String name, {
    ResolverForwardingRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/resolverForwardingRule:ResolverForwardingRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dnsForwardingRulesetId = registerOutput<String>('dnsForwardingRulesetId');
    domainName = registerOutput<String>('domainName');
    enabled = registerOutput<bool?>('enabled');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    targetDnsServers = registerOutput<List<Map<String, dynamic>>>('targetDnsServers');
  }

  /// Gets an existing [ResolverForwardingRule] resource's state with the given [name] and [id].
  static ResolverForwardingRule get(
    String name,
    pulumi.Input<String> id, {
    ResolverForwardingRuleState? state,
  }) {
    return ResolverForwardingRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResolverForwardingRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:privatedns/resolverForwardingRule:ResolverForwardingRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    dnsForwardingRulesetId = registerOutput<String>('dnsForwardingRulesetId');
    domainName = registerOutput<String>('domainName');
    enabled = registerOutput<bool?>('enabled');
    metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    targetDnsServers = registerOutput<List<Map<String, dynamic>>>('targetDnsServers');
  }
}
