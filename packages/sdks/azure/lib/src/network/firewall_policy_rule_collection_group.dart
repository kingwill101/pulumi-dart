import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_application_rule_collection.dart';
import 'firewall_policy_rule_collection_group_args.dart';
import 'firewall_policy_rule_collection_group_nat_rule_collection.dart';
import 'firewall_policy_rule_collection_group_network_rule_collection.dart';
import 'firewall_policy_rule_collection_group_state.dart';

/// Manages a Firewall Policy Rule Collection Group.
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
/// const exampleFirewallPolicy = new azure.network.FirewallPolicy("example", {
///     name: "example-fwpolicy",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleFirewallPolicyRuleCollectionGroup = new azure.network.FirewallPolicyRuleCollectionGroup("example", {
///     name: "example-fwpolicy-rcg",
///     firewallPolicyId: exampleFirewallPolicy.id,
///     priority: 500,
///     applicationRuleCollections: [{
///         name: "app_rule_collection1",
///         priority: 500,
///         action: "Deny",
///         rules: [{
///             name: "app_rule_collection1_rule1",
///             protocols: [
///                 {
///                     type: "Http",
///                     port: 80,
///                 },
///                 {
///                     type: "Https",
///                     port: 443,
///                 },
///             ],
///             sourceAddresses: ["10.0.0.1"],
///             destinationFqdns: ["*.microsoft.com"],
///         }],
///     }],
///     networkRuleCollections: [{
///         name: "network_rule_collection1",
///         priority: 400,
///         action: "Deny",
///         rules: [{
///             name: "network_rule_collection1_rule1",
///             protocols: [
///                 "TCP",
///                 "UDP",
///             ],
///             sourceAddresses: ["10.0.0.1"],
///             destinationAddresses: [
///                 "192.168.1.1",
///                 "192.168.1.2",
///             ],
///             destinationPorts: [
///                 "80",
///                 "1000-2000",
///             ],
///         }],
///     }],
///     natRuleCollections: [{
///         name: "nat_rule_collection1",
///         priority: 300,
///         action: "Dnat",
///         rules: [{
///             name: "nat_rule_collection1_rule1",
///             protocols: [
///                 "TCP",
///                 "UDP",
///             ],
///             sourceAddresses: [
///                 "10.0.0.1",
///                 "10.0.0.2",
///             ],
///             destinationAddress: "192.168.1.1",
///             destinationPorts: "80",
///             translatedAddress: "192.168.0.1",
///             translatedPort: 8080,
///         }],
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
/// example_firewall_policy = azure.network.FirewallPolicy("example",
///     name="example-fwpolicy",
///     resource_group_name=example.name,
///     location=example.location)
/// example_firewall_policy_rule_collection_group = azure.network.FirewallPolicyRuleCollectionGroup("example",
///     name="example-fwpolicy-rcg",
///     firewall_policy_id=example_firewall_policy.id,
///     priority=500,
///     application_rule_collections=[{
///         "name": "app_rule_collection1",
///         "priority": 500,
///         "action": "Deny",
///         "rules": [{
///             "name": "app_rule_collection1_rule1",
///             "protocols": [
///                 {
///                     "type": "Http",
///                     "port": 80,
///                 },
///                 {
///                     "type": "Https",
///                     "port": 443,
///                 },
///             ],
///             "source_addresses": ["10.0.0.1"],
///             "destination_fqdns": ["*.microsoft.com"],
///         }],
///     }],
///     network_rule_collections=[{
///         "name": "network_rule_collection1",
///         "priority": 400,
///         "action": "Deny",
///         "rules": [{
///             "name": "network_rule_collection1_rule1",
///             "protocols": [
///                 "TCP",
///                 "UDP",
///             ],
///             "source_addresses": ["10.0.0.1"],
///             "destination_addresses": [
///                 "192.168.1.1",
///                 "192.168.1.2",
///             ],
///             "destination_ports": [
///                 "80",
///                 "1000-2000",
///             ],
///         }],
///     }],
///     nat_rule_collections=[{
///         "name": "nat_rule_collection1",
///         "priority": 300,
///         "action": "Dnat",
///         "rules": [{
///             "name": "nat_rule_collection1_rule1",
///             "protocols": [
///                 "TCP",
///                 "UDP",
///             ],
///             "source_addresses": [
///                 "10.0.0.1",
///                 "10.0.0.2",
///             ],
///             "destination_address": "192.168.1.1",
///             "destination_ports": "80",
///             "translated_address": "192.168.0.1",
///             "translated_port": 8080,
///         }],
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
///     var exampleFirewallPolicy = new Azure.Network.FirewallPolicy("example", new()
///     {
///         Name = "example-fwpolicy",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleFirewallPolicyRuleCollectionGroup = new Azure.Network.FirewallPolicyRuleCollectionGroup("example", new()
///     {
///         Name = "example-fwpolicy-rcg",
///         FirewallPolicyId = exampleFirewallPolicy.Id,
///         Priority = 500,
///         ApplicationRuleCollections = new[]
///         {
///             new Azure.Network.Inputs.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionArgs
///             {
///                 Name = "app_rule_collection1",
///                 Priority = 500,
///                 Action = "Deny",
///                 Rules = new[]
///                 {
///                     new Azure.Network.Inputs.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleArgs
///                     {
///                         Name = "app_rule_collection1_rule1",
///                         Protocols = new[]
///                         {
///                             new Azure.Network.Inputs.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocolArgs
///                             {
///                                 Type = "Http",
///                                 Port = 80,
///                             },
///                             new Azure.Network.Inputs.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocolArgs
///                             {
///                                 Type = "Https",
///                                 Port = 443,
///                             },
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "10.0.0.1",
///                         },
///                         DestinationFqdns = new[]
///                         {
///                             "*.microsoft.com",
///                         },
///                     },
///                 },
///             },
///         },
///         NetworkRuleCollections = new[]
///         {
///             new Azure.Network.Inputs.FirewallPolicyRuleCollectionGroupNetworkRuleCollectionArgs
///             {
///                 Name = "network_rule_collection1",
///                 Priority = 400,
///                 Action = "Deny",
///                 Rules = new[]
///                 {
///                     new Azure.Network.Inputs.FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRuleArgs
///                     {
///                         Name = "network_rule_collection1_rule1",
///                         Protocols = new[]
///                         {
///                             "TCP",
///                             "UDP",
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "10.0.0.1",
///                         },
///                         DestinationAddresses = new[]
///                         {
///                             "192.168.1.1",
///                             "192.168.1.2",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "80",
///                             "1000-2000",
///                         },
///                     },
///                 },
///             },
///         },
///         NatRuleCollections = new[]
///         {
///             new Azure.Network.Inputs.FirewallPolicyRuleCollectionGroupNatRuleCollectionArgs
///             {
///                 Name = "nat_rule_collection1",
///                 Priority = 300,
///                 Action = "Dnat",
///                 Rules = new[]
///                 {
///                     new Azure.Network.Inputs.FirewallPolicyRuleCollectionGroupNatRuleCollectionRuleArgs
///                     {
///                         Name = "nat_rule_collection1_rule1",
///                         Protocols = new[]
///                         {
///                             "TCP",
///                             "UDP",
///                         },
///                         SourceAddresses = new[]
///                         {
///                             "10.0.0.1",
///                             "10.0.0.2",
///                         },
///                         DestinationAddress = "192.168.1.1",
///                         DestinationPorts = "80",
///                         TranslatedAddress = "192.168.0.1",
///                         TranslatedPort = 8080,
///                     },
///                 },
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
/// 		exampleFirewallPolicy, err := network.NewFirewallPolicy(ctx, "example", &network.FirewallPolicyArgs{
/// 			Name:              pulumi.String("example-fwpolicy"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewFirewallPolicyRuleCollectionGroup(ctx, "example", &network.FirewallPolicyRuleCollectionGroupArgs{
/// 			Name:             pulumi.String("example-fwpolicy-rcg"),
/// 			FirewallPolicyId: exampleFirewallPolicy.ID(),
/// 			Priority:         pulumi.Int(500),
/// 			ApplicationRuleCollections: network.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionArray{
/// 				&network.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionArgs{
/// 					Name:     pulumi.String("app_rule_collection1"),
/// 					Priority: pulumi.Int(500),
/// 					Action:   pulumi.String("Deny"),
/// 					Rules: network.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleArray{
/// 						&network.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleArgs{
/// 							Name: pulumi.String("app_rule_collection1_rule1"),
/// 							Protocols: network.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocolArray{
/// 								&network.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocolArgs{
/// 									Type: pulumi.String("Http"),
/// 									Port: pulumi.Int(80),
/// 								},
/// 								&network.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocolArgs{
/// 									Type: pulumi.String("Https"),
/// 									Port: pulumi.Int(443),
/// 								},
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("10.0.0.1"),
/// 							},
/// 							DestinationFqdns: pulumi.StringArray{
/// 								pulumi.String("*.microsoft.com"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NetworkRuleCollections: network.FirewallPolicyRuleCollectionGroupNetworkRuleCollectionArray{
/// 				&network.FirewallPolicyRuleCollectionGroupNetworkRuleCollectionArgs{
/// 					Name:     pulumi.String("network_rule_collection1"),
/// 					Priority: pulumi.Int(400),
/// 					Action:   pulumi.String("Deny"),
/// 					Rules: network.FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRuleArray{
/// 						&network.FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRuleArgs{
/// 							Name: pulumi.String("network_rule_collection1_rule1"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String("TCP"),
/// 								pulumi.String("UDP"),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("10.0.0.1"),
/// 							},
/// 							DestinationAddresses: pulumi.StringArray{
/// 								pulumi.String("192.168.1.1"),
/// 								pulumi.String("192.168.1.2"),
/// 							},
/// 							DestinationPorts: pulumi.StringArray{
/// 								pulumi.String("80"),
/// 								pulumi.String("1000-2000"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			NatRuleCollections: network.FirewallPolicyRuleCollectionGroupNatRuleCollectionArray{
/// 				&network.FirewallPolicyRuleCollectionGroupNatRuleCollectionArgs{
/// 					Name:     pulumi.String("nat_rule_collection1"),
/// 					Priority: pulumi.Int(300),
/// 					Action:   pulumi.String("Dnat"),
/// 					Rules: network.FirewallPolicyRuleCollectionGroupNatRuleCollectionRuleArray{
/// 						&network.FirewallPolicyRuleCollectionGroupNatRuleCollectionRuleArgs{
/// 							Name: pulumi.String("nat_rule_collection1_rule1"),
/// 							Protocols: pulumi.StringArray{
/// 								pulumi.String("TCP"),
/// 								pulumi.String("UDP"),
/// 							},
/// 							SourceAddresses: pulumi.StringArray{
/// 								pulumi.String("10.0.0.1"),
/// 								pulumi.String("10.0.0.2"),
/// 							},
/// 							DestinationAddress: pulumi.String("192.168.1.1"),
/// 							DestinationPorts:   pulumi.String("80"),
/// 							TranslatedAddress:  pulumi.String("192.168.0.1"),
/// 							TranslatedPort:     pulumi.Int(8080),
/// 						},
/// 					},
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
/// import com.pulumi.azure.network.FirewallPolicy;
/// import com.pulumi.azure.network.FirewallPolicyArgs;
/// import com.pulumi.azure.network.FirewallPolicyRuleCollectionGroup;
/// import com.pulumi.azure.network.FirewallPolicyRuleCollectionGroupArgs;
/// import com.pulumi.azure.network.inputs.FirewallPolicyRuleCollectionGroupApplicationRuleCollectionArgs;
/// import com.pulumi.azure.network.inputs.FirewallPolicyRuleCollectionGroupNetworkRuleCollectionArgs;
/// import com.pulumi.azure.network.inputs.FirewallPolicyRuleCollectionGroupNatRuleCollectionArgs;
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
///         var exampleFirewallPolicy = new FirewallPolicy("exampleFirewallPolicy", FirewallPolicyArgs.builder()
///             .name("example-fwpolicy")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleFirewallPolicyRuleCollectionGroup = new FirewallPolicyRuleCollectionGroup("exampleFirewallPolicyRuleCollectionGroup", FirewallPolicyRuleCollectionGroupArgs.builder()
///             .name("example-fwpolicy-rcg")
///             .firewallPolicyId(exampleFirewallPolicy.id())
///             .priority(500)
///             .applicationRuleCollections(FirewallPolicyRuleCollectionGroupApplicationRuleCollectionArgs.builder()
///                 .name("app_rule_collection1")
///                 .priority(500)
///                 .action("Deny")
///                 .rules(FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleArgs.builder()
///                     .name("app_rule_collection1_rule1")
///                     .protocols(
///                         FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocolArgs.builder()
///                             .type("Http")
///                             .port(80)
///                             .build(),
///                         FirewallPolicyRuleCollectionGroupApplicationRuleCollectionRuleProtocolArgs.builder()
///                             .type("Https")
///                             .port(443)
///                             .build())
///                     .sourceAddresses("10.0.0.1")
///                     .destinationFqdns("*.microsoft.com")
///                     .build())
///                 .build())
///             .networkRuleCollections(FirewallPolicyRuleCollectionGroupNetworkRuleCollectionArgs.builder()
///                 .name("network_rule_collection1")
///                 .priority(400)
///                 .action("Deny")
///                 .rules(FirewallPolicyRuleCollectionGroupNetworkRuleCollectionRuleArgs.builder()
///                     .name("network_rule_collection1_rule1")
///                     .protocols(
///                         "TCP",
///                         "UDP")
///                     .sourceAddresses("10.0.0.1")
///                     .destinationAddresses(
///                         "192.168.1.1",
///                         "192.168.1.2")
///                     .destinationPorts(
///                         "80",
///                         "1000-2000")
///                     .build())
///                 .build())
///             .natRuleCollections(FirewallPolicyRuleCollectionGroupNatRuleCollectionArgs.builder()
///                 .name("nat_rule_collection1")
///                 .priority(300)
///                 .action("Dnat")
///                 .rules(FirewallPolicyRuleCollectionGroupNatRuleCollectionRuleArgs.builder()
///                     .name("nat_rule_collection1_rule1")
///                     .protocols(
///                         "TCP",
///                         "UDP")
///                     .sourceAddresses(
///                         "10.0.0.1",
///                         "10.0.0.2")
///                     .destinationAddress("192.168.1.1")
///                     .destinationPorts("80")
///                     .translatedAddress("192.168.0.1")
///                     .translatedPort(8080)
///                     .build())
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
///   exampleFirewallPolicy:
///     type: azure:network:FirewallPolicy
///     name: example
///     properties:
///       name: example-fwpolicy
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleFirewallPolicyRuleCollectionGroup:
///     type: azure:network:FirewallPolicyRuleCollectionGroup
///     name: example
///     properties:
///       name: example-fwpolicy-rcg
///       firewallPolicyId: ${exampleFirewallPolicy.id}
///       priority: 500
///       applicationRuleCollections:
///         - name: app_rule_collection1
///           priority: 500
///           action: Deny
///           rules:
///             - name: app_rule_collection1_rule1
///               protocols:
///                 - type: Http
///                   port: 80
///                 - type: Https
///                   port: 443
///               sourceAddresses:
///                 - 10.0.0.1
///               destinationFqdns:
///                 - '*.microsoft.com'
///       networkRuleCollections:
///         - name: network_rule_collection1
///           priority: 400
///           action: Deny
///           rules:
///             - name: network_rule_collection1_rule1
///               protocols:
///                 - TCP
///                 - UDP
///               sourceAddresses:
///                 - 10.0.0.1
///               destinationAddresses:
///                 - 192.168.1.1
///                 - 192.168.1.2
///               destinationPorts:
///                 - '80'
///                 - 1000-2000
///       natRuleCollections:
///         - name: nat_rule_collection1
///           priority: 300
///           action: Dnat
///           rules:
///             - name: nat_rule_collection1_rule1
///               protocols:
///                 - TCP
///                 - UDP
///               sourceAddresses:
///                 - 10.0.0.1
///                 - 10.0.0.2
///               destinationAddress: 192.168.1.1
///               destinationPorts: '80'
///               translatedAddress: 192.168.0.1
///               translatedPort: '8080'
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
/// Firewall Policy Rule Collection Groups can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/firewallPolicyRuleCollectionGroup:FirewallPolicyRuleCollectionGroup example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Network/firewallPolicies/policy1/ruleCollectionGroups/gruop1
/// ```
class FirewallPolicyRuleCollectionGroup extends pulumi.CustomResource {
  /// One or more `application_rule_collection` blocks as defined below.
  late final pulumi.Output<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>?> applicationRuleCollections;
  /// The ID of the Firewall Policy where the Firewall Policy Rule Collection Group should exist. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  late final pulumi.Output<String> firewallPolicyId;
  /// The name which should be used for this Firewall Policy Rule Collection Group. Changing this forces a new Firewall Policy Rule Collection Group to be created.
  late final pulumi.Output<String> name;
  /// One or more `nat_rule_collection` blocks as defined below.
  late final pulumi.Output<List<FirewallPolicyRuleCollectionGroupNatRuleCollection>?> natRuleCollections;
  /// One or more `network_rule_collection` blocks as defined below.
  late final pulumi.Output<List<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>?> networkRuleCollections;
  /// The priority of the Firewall Policy Rule Collection Group. The range is 100-65000.
  late final pulumi.Output<int> priority;

  /// Creates a new [FirewallPolicyRuleCollectionGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicyRuleCollectionGroup]. {@macro pulumi_network_firewall_policy_rule_collection_group_firewall_policy_rule_collection_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicyRuleCollectionGroup(
    String name, {
    FirewallPolicyRuleCollectionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/firewallPolicyRuleCollectionGroup:FirewallPolicyRuleCollectionGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationRuleCollections = registerOutput<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>?>('applicationRuleCollections');
    this.firewallPolicyId = registerOutput<String>('firewallPolicyId');
    this.name = registerOutput<String>('name');
    this.natRuleCollections = registerOutput<List<FirewallPolicyRuleCollectionGroupNatRuleCollection>?>('natRuleCollections');
    this.networkRuleCollections = registerOutput<List<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>?>('networkRuleCollections');
    this.priority = registerOutput<int>('priority');
  }

  /// Gets an existing [FirewallPolicyRuleCollectionGroup] resource's state with the given [name] and [id].
  static FirewallPolicyRuleCollectionGroup get(
    String name,
    pulumi.Input<String> id, {
    FirewallPolicyRuleCollectionGroupState? state,
  }) {
    return FirewallPolicyRuleCollectionGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallPolicyRuleCollectionGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/firewallPolicyRuleCollectionGroup:FirewallPolicyRuleCollectionGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationRuleCollections = registerOutput<List<FirewallPolicyRuleCollectionGroupApplicationRuleCollection>?>('applicationRuleCollections');
    this.firewallPolicyId = registerOutput<String>('firewallPolicyId');
    this.name = registerOutput<String>('name');
    this.natRuleCollections = registerOutput<List<FirewallPolicyRuleCollectionGroupNatRuleCollection>?>('natRuleCollections');
    this.networkRuleCollections = registerOutput<List<FirewallPolicyRuleCollectionGroupNetworkRuleCollection>?>('networkRuleCollections');
    this.priority = registerOutput<int>('priority');
  }
}
