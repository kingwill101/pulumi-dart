import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_security_rule_args.dart';
import 'network_security_rule_state.dart';

/// Manages a Network Security Rule.
///
/// &gt; **NOTE on Network Security Groups and Network Security Rules:** This provider currently
/// provides both a standalone Network Security Rule resource, and allows for Network Security Rules to be defined in-line within the Network Security Group resource.
/// At this time you cannot use a Network Security Group with in-line Network Security Rules in conjunction with any Network Security Rule resources. Doing so will cause a conflict of rule settings and will overwrite rules.
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
///     name: "acceptanceTestSecurityGroup1",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleNetworkSecurityRule = new azure.network.NetworkSecurityRule("example", {
///     name: "test123",
///     priority: 100,
///     direction: "Outbound",
///     access: "Allow",
///     protocol: "Tcp",
///     sourcePortRange: "*",
///     destinationPortRange: "*",
///     sourceAddressPrefix: "*",
///     destinationAddressPrefix: "*",
///     resourceGroupName: example.name,
///     networkSecurityGroupName: exampleNetworkSecurityGroup.name,
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
///     name="acceptanceTestSecurityGroup1",
///     location=example.location,
///     resource_group_name=example.name)
/// example_network_security_rule = azure.network.NetworkSecurityRule("example",
///     name="test123",
///     priority=100,
///     direction="Outbound",
///     access="Allow",
///     protocol="Tcp",
///     source_port_range="*",
///     destination_port_range="*",
///     source_address_prefix="*",
///     destination_address_prefix="*",
///     resource_group_name=example.name,
///     network_security_group_name=example_network_security_group.name)
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
///         Name = "acceptanceTestSecurityGroup1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleNetworkSecurityRule = new Azure.Network.NetworkSecurityRule("example", new()
///     {
///         Name = "test123",
///         Priority = 100,
///         Direction = "Outbound",
///         Access = "Allow",
///         Protocol = "Tcp",
///         SourcePortRange = "*",
///         DestinationPortRange = "*",
///         SourceAddressPrefix = "*",
///         DestinationAddressPrefix = "*",
///         ResourceGroupName = example.Name,
///         NetworkSecurityGroupName = exampleNetworkSecurityGroup.Name,
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
/// 			Name:              pulumi.String("acceptanceTestSecurityGroup1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewNetworkSecurityRule(ctx, "example", &network.NetworkSecurityRuleArgs{
/// 			Name:                     pulumi.String("test123"),
/// 			Priority:                 pulumi.Int(100),
/// 			Direction:                pulumi.String("Outbound"),
/// 			Access:                   pulumi.String("Allow"),
/// 			Protocol:                 pulumi.String("Tcp"),
/// 			SourcePortRange:          pulumi.String("*"),
/// 			DestinationPortRange:     pulumi.String("*"),
/// 			SourceAddressPrefix:      pulumi.String("*"),
/// 			DestinationAddressPrefix: pulumi.String("*"),
/// 			ResourceGroupName:        example.Name,
/// 			NetworkSecurityGroupName: exampleNetworkSecurityGroup.Name,
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
/// import com.pulumi.azure.network.NetworkSecurityGroup;
/// import com.pulumi.azure.network.NetworkSecurityGroupArgs;
/// import com.pulumi.azure.network.NetworkSecurityRule;
/// import com.pulumi.azure.network.NetworkSecurityRuleArgs;
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
///         var exampleNetworkSecurityGroup = new NetworkSecurityGroup("exampleNetworkSecurityGroup", NetworkSecurityGroupArgs.builder()
///             .name("acceptanceTestSecurityGroup1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleNetworkSecurityRule = new NetworkSecurityRule("exampleNetworkSecurityRule", NetworkSecurityRuleArgs.builder()
///             .name("test123")
///             .priority(100)
///             .direction("Outbound")
///             .access("Allow")
///             .protocol("Tcp")
///             .sourcePortRange("*")
///             .destinationPortRange("*")
///             .sourceAddressPrefix("*")
///             .destinationAddressPrefix("*")
///             .resourceGroupName(example.name())
///             .networkSecurityGroupName(exampleNetworkSecurityGroup.name())
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
///       name: acceptanceTestSecurityGroup1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleNetworkSecurityRule:
///     type: azure:network:NetworkSecurityRule
///     name: example
///     properties:
///       name: test123
///       priority: 100
///       direction: Outbound
///       access: Allow
///       protocol: Tcp
///       sourcePortRange: '*'
///       destinationPortRange: '*'
///       sourceAddressPrefix: '*'
///       destinationAddressPrefix: '*'
///       resourceGroupName: ${example.name}
///       networkSecurityGroupName: ${exampleNetworkSecurityGroup.name}
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
/// Network Security Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/networkSecurityRule:NetworkSecurityRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkSecurityGroups/mySecurityGroup/securityRules/rule1
/// ```
class NetworkSecurityRule extends pulumi.CustomResource {
  /// Specifies whether network traffic is allowed or denied. Possible values are `Allow` and `Deny`.
  late final pulumi.Output<String> access;

  /// A description for this rule. Restricted to 140 characters.
  late final pulumi.Output<String?> description;

  /// CIDR or destination IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used. Besides, it also supports all available Service Tags like ‘Sql.WestEurope‘, ‘Storage.EastUS‘, etc. You can list the available service tags with the CLI: ```shell az network list-service-tags --location westcentralus```. For further information please see [Azure CLI - az network list-service-tags](https://docs.microsoft.com/cli/azure/network?view=azure-cli-latest#az-network-list-service-tags).
  late final pulumi.Output<String?> destinationAddressPrefix;

  /// List of destination address prefixes. Tags may not be used.
  late final pulumi.Output<List<String>?> destinationAddressPrefixes;

  /// A List of destination Application Security Group IDs
  ///
  /// &gt; **Note:** One of `destination_address_prefix`, `destination_address_prefixes` or `destination_application_security_group_ids` must be specified.
  late final pulumi.Output<String?> destinationApplicationSecurityGroupIds;

  /// Destination Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `destination_port_ranges` is not specified.
  late final pulumi.Output<String?> destinationPortRange;

  /// List of destination ports or port ranges. This is required if `destination_port_range` is not specified.
  late final pulumi.Output<List<String>?> destinationPortRanges;

  /// The direction specifies if rule will be evaluated on incoming or outgoing traffic. Possible values are `Inbound` and `Outbound`.
  late final pulumi.Output<String> direction;

  /// The name of the security rule. This needs to be unique across all Rules in the Network Security Group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// The name of the Network Security Group that we want to attach the rule to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> networkSecurityGroupName;

  /// Specifies the priority of the rule. The value can be between 100 and 4096. The priority number must be unique for each rule in the collection. The lower the priority number, the higher the priority of the rule.
  late final pulumi.Output<int> priority;

  /// Network protocol this rule applies to. Possible values include `Tcp`, `Udp`, `Icmp`, `Esp`, `Ah` or `*` (which matches all).
  late final pulumi.Output<String> protocol;

  /// The name of the resource group in which to create the Network Security Rule. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// CIDR or source IP range or * to match any IP. Tags such as `VirtualNetwork`, `AzureLoadBalancer` and `Internet` can also be used.
  late final pulumi.Output<String?> sourceAddressPrefix;

  /// List of source address prefixes. Tags may not be used.
  late final pulumi.Output<List<String>?> sourceAddressPrefixes;

  /// A List of source Application Security Group IDs
  ///
  /// &gt; **Note:** One of `source_address_prefix`, `source_address_prefixes` or `source_application_security_group_ids` must be specified.
  late final pulumi.Output<String?> sourceApplicationSecurityGroupIds;

  /// Source Port or Range. Integer or range between `0` and `65535` or `*` to match any. This is required if `source_port_ranges` is not specified.
  late final pulumi.Output<String?> sourcePortRange;

  /// List of source ports or port ranges. This is required if `source_port_range` is not specified.
  late final pulumi.Output<List<String>?> sourcePortRanges;

  /// Creates a new [NetworkSecurityRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkSecurityRule]. {@macro pulumi_network_network_security_rule_network_security_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkSecurityRule(
    String name, {
    NetworkSecurityRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/networkSecurityRule:NetworkSecurityRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    access = registerOutput<String>('access');
    description = registerOutput<String?>('description');
    destinationAddressPrefix = registerOutput<String?>(
      'destinationAddressPrefix',
    );
    destinationAddressPrefixes = registerOutput<List<String>?>(
      'destinationAddressPrefixes',
    );
    destinationApplicationSecurityGroupIds = registerOutput<String?>(
      'destinationApplicationSecurityGroupIds',
    );
    destinationPortRange = registerOutput<String?>('destinationPortRange');
    destinationPortRanges = registerOutput<List<String>?>(
      'destinationPortRanges',
    );
    direction = registerOutput<String>('direction');
    this.name = registerOutput<String>('name');
    networkSecurityGroupName = registerOutput<String>(
      'networkSecurityGroupName',
    );
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceAddressPrefix = registerOutput<String?>('sourceAddressPrefix');
    sourceAddressPrefixes = registerOutput<List<String>?>(
      'sourceAddressPrefixes',
    );
    sourceApplicationSecurityGroupIds = registerOutput<String?>(
      'sourceApplicationSecurityGroupIds',
    );
    sourcePortRange = registerOutput<String?>('sourcePortRange');
    sourcePortRanges = registerOutput<List<String>?>('sourcePortRanges');
  }

  /// Gets an existing [NetworkSecurityRule] resource's state with the given [name] and [id].
  static NetworkSecurityRule get(
    String name,
    pulumi.Input<String> id, {
    NetworkSecurityRuleState? state,
  }) {
    return NetworkSecurityRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkSecurityRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:network/networkSecurityRule:NetworkSecurityRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    access = registerOutput<String>('access');
    description = registerOutput<String?>('description');
    destinationAddressPrefix = registerOutput<String?>(
      'destinationAddressPrefix',
    );
    destinationAddressPrefixes = registerOutput<List<String>?>(
      'destinationAddressPrefixes',
    );
    destinationApplicationSecurityGroupIds = registerOutput<String?>(
      'destinationApplicationSecurityGroupIds',
    );
    destinationPortRange = registerOutput<String?>('destinationPortRange');
    destinationPortRanges = registerOutput<List<String>?>(
      'destinationPortRanges',
    );
    direction = registerOutput<String>('direction');
    this.name = registerOutput<String>('name');
    networkSecurityGroupName = registerOutput<String>(
      'networkSecurityGroupName',
    );
    priority = registerOutput<int>('priority');
    protocol = registerOutput<String>('protocol');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    sourceAddressPrefix = registerOutput<String?>('sourceAddressPrefix');
    sourceAddressPrefixes = registerOutput<List<String>?>(
      'sourceAddressPrefixes',
    );
    sourceApplicationSecurityGroupIds = registerOutput<String?>(
      'sourceApplicationSecurityGroupIds',
    );
    sourcePortRange = registerOutput<String?>('sourcePortRange');
    sourcePortRanges = registerOutput<List<String>?>('sourcePortRanges');
  }
}
