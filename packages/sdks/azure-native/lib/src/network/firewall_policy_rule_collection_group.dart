import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_args.dart';

/// Rule Collection Group resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create Firewall Policy Nat Rule Collection Group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallPolicyRuleCollectionGroup = new AzureNative.Network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", new()
///     {
///         FirewallPolicyName = "firewallPolicy",
///         Priority = 100,
///         ResourceGroupName = "rg1",
///         RuleCollectionGroupName = "ruleCollectionGroup1",
///         RuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.FirewallPolicyNatRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.FirewallPolicyNatRuleCollectionActionArgs
///                 {
///                     Type = AzureNative.Network.FirewallPolicyNatRuleCollectionActionType.DNAT,
///                 },
///                 Name = "Example-Nat-Rule-Collection",
///                 Priority = 100,
///                 RuleCollectionType = "FirewallPolicyNatRuleCollection",
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.NatRuleArgs
///                     {
///                         DestinationAddresses = new[]
///                         {
///                             "152.23.32.23",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "8080",
///                         },
///                         IpProtocols = new[]
///                         {
///                             AzureNative.Network.FirewallPolicyRuleNetworkProtocol.TCP,
///                             AzureNative.Network.FirewallPolicyRuleNetworkProtocol.UDP,
///                         },
///                         Name = "nat-rule1",
///                         RuleType = "NatRule",
///                         SourceAddresses = new[]
///                         {
///                             "2.2.2.2",
///                         },
///                         SourceIpGroups = new() { },
///                         TranslatedFqdn = "internalhttp.server.net",
///                         TranslatedPort = "8080",
///                     },
///                 },
///             },
///         },
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
/// 		_, err := network.NewFirewallPolicyRuleCollectionGroup(ctx, "firewallPolicyRuleCollectionGroup", &network.FirewallPolicyRuleCollectionGroupArgs{
/// 			FirewallPolicyName:      pulumi.String("firewallPolicy"),
/// 			Priority:                pulumi.Int(100),
/// 			ResourceGroupName:       pulumi.String("rg1"),
/// 			RuleCollectionGroupName: pulumi.String("ruleCollectionGroup1"),
/// 			RuleCollections: pulumi.Array{
/// 				network.FirewallPolicyNatRuleCollection{
/// 					Action: network.FirewallPolicyNatRuleCollectionAction{
/// 						Type: network.FirewallPolicyNatRuleCollectionActionTypeDNAT,
/// 					},
/// 					Name:               "Example-Nat-Rule-Collection",
/// 					Priority:           100,
/// 					RuleCollectionType: "FirewallPolicyNatRuleCollection",
/// 					Rules: []interface{}{
/// 						network.NatRuleType{
/// 							DestinationAddresses: []string{
/// 								"152.23.32.23",
/// 							},
/// 							DestinationPorts: []string{
/// 								"8080",
/// 							},
/// 							IpProtocols: []network.FirewallPolicyRuleNetworkProtocol{
/// 								network.FirewallPolicyRuleNetworkProtocolTCP,
/// 								network.FirewallPolicyRuleNetworkProtocolUDP,
/// 							},
/// 							Name:     "nat-rule1",
/// 							RuleType: "NatRule",
/// 							SourceAddresses: []string{
/// 								"2.2.2.2",
/// 							},
/// 							SourceIpGroups: []interface{}{},
/// 							TranslatedFqdn: "internalhttp.server.net",
/// 							TranslatedPort: "8080",
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
/// resource "azure-native_network_firewallpolicyrulecollectiongroup" "firewallPolicyRuleCollectionGroup" {
///   firewall_policy_name       = "firewallPolicy"
///   priority                   = 100
///   resource_group_name        = "rg1"
///   rule_collection_group_name = "ruleCollectionGroup1"
///   rule_collections = [{
///     "action" = {
///       "type" = "DNAT"
///     }
///     "name"               = "Example-Nat-Rule-Collection"
///     "priority"           = 100
///     "ruleCollectionType" = "FirewallPolicyNatRuleCollection"
///     "rules" = [{
///       "destinationAddresses" = ["152.23.32.23"]
///       "destinationPorts"     = ["8080"]
///       "ipProtocols"          = ["TCP", "UDP"]
///       "name"                 = "nat-rule1"
///       "ruleType"             = "NatRule"
///       "sourceAddresses"      = ["2.2.2.2"]
///       "sourceIpGroups"       = []
///       "translatedFqdn"       = "internalhttp.server.net"
///       "translatedPort"       = "8080"
///     }]
///   }]
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
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroup;
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroupArgs;
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
///         var firewallPolicyRuleCollectionGroup = new FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", FirewallPolicyRuleCollectionGroupArgs.builder()
///             .firewallPolicyName("firewallPolicy")
///             .priority(100)
///             .resourceGroupName("rg1")
///             .ruleCollectionGroupName("ruleCollectionGroup1")
///             .ruleCollections(FirewallPolicyNatRuleCollectionArgs.builder()
///                 .action(FirewallPolicyNatRuleCollectionActionArgs.builder()
///                     .type("DNAT")
///                     .build())
///                 .name("Example-Nat-Rule-Collection")
///                 .priority(100)
///                 .ruleCollectionType("FirewallPolicyNatRuleCollection")
///                 .rules(%!v(PANIC=Format method: interface conversion: model.Expression is *model.FunctionCallExpression, not *model.ObjectConsExpression))
///                 .build())
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
/// const firewallPolicyRuleCollectionGroup = new azure_native.network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", {
///     firewallPolicyName: "firewallPolicy",
///     priority: 100,
///     resourceGroupName: "rg1",
///     ruleCollectionGroupName: "ruleCollectionGroup1",
///     ruleCollections: [{
///         action: {
///             type: azure_native.network.FirewallPolicyNatRuleCollectionActionType.DNAT,
///         },
///         name: "Example-Nat-Rule-Collection",
///         priority: 100,
///         ruleCollectionType: "FirewallPolicyNatRuleCollection",
///         rules: [{
///             destinationAddresses: ["152.23.32.23"],
///             destinationPorts: ["8080"],
///             ipProtocols: [
///                 azure_native.network.FirewallPolicyRuleNetworkProtocol.TCP,
///                 azure_native.network.FirewallPolicyRuleNetworkProtocol.UDP,
///             ],
///             name: "nat-rule1",
///             ruleType: "NatRule",
///             sourceAddresses: ["2.2.2.2"],
///             sourceIpGroups: [],
///             translatedFqdn: "internalhttp.server.net",
///             translatedPort: "8080",
///         }],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_policy_rule_collection_group = azure_native.network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup",
///     firewall_policy_name="firewallPolicy",
///     priority=100,
///     resource_group_name="rg1",
///     rule_collection_group_name="ruleCollectionGroup1",
///     rule_collections=[{
///         "action": {
///             "type": azure_native.network.FirewallPolicyNatRuleCollectionActionType.DNAT,
///         },
///         "name": "Example-Nat-Rule-Collection",
///         "priority": 100,
///         "rule_collection_type": "FirewallPolicyNatRuleCollection",
///         "rules": [{
///             "destination_addresses": ["152.23.32.23"],
///             "destination_ports": ["8080"],
///             "ip_protocols": [
///                 azure_native.network.FirewallPolicyRuleNetworkProtocol.TCP,
///                 azure_native.network.FirewallPolicyRuleNetworkProtocol.UDP,
///             ],
///             "name": "nat-rule1",
///             "rule_type": "NatRule",
///             "source_addresses": ["2.2.2.2"],
///             "source_ip_groups": [],
///             "translated_fqdn": "internalhttp.server.net",
///             "translated_port": "8080",
///         }],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   firewallPolicyRuleCollectionGroup:
///     type: azure-native:network:FirewallPolicyRuleCollectionGroup
///     properties:
///       firewallPolicyName: firewallPolicy
///       priority: 100
///       resourceGroupName: rg1
///       ruleCollectionGroupName: ruleCollectionGroup1
///       ruleCollections:
///         - action:
///             type: DNAT
///           name: Example-Nat-Rule-Collection
///           priority: 100
///           ruleCollectionType: FirewallPolicyNatRuleCollection
///           rules:
///             - destinationAddresses:
///                 - 152.23.32.23
///               destinationPorts:
///                 - '8080'
///               ipProtocols:
///                 - TCP
///                 - UDP
///               name: nat-rule1
///               ruleType: NatRule
///               sourceAddresses:
///                 - 2.2.2.2
///               sourceIpGroups: []
///               translatedFqdn: internalhttp.server.net
///               translatedPort: '8080'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Firewall Policy Rule Collection Group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallPolicyRuleCollectionGroup = new AzureNative.Network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", new()
///     {
///         FirewallPolicyName = "firewallPolicy",
///         Priority = 100,
///         ResourceGroupName = "rg1",
///         RuleCollectionGroupName = "ruleCollectionGroup1",
///         RuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.FirewallPolicyFilterRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.FirewallPolicyFilterRuleCollectionActionArgs
///                 {
///                     Type = AzureNative.Network.FirewallPolicyFilterRuleCollectionActionType.Deny,
///                 },
///                 Name = "Example-Filter-Rule-Collection",
///                 Priority = 100,
///                 RuleCollectionType = "FirewallPolicyFilterRuleCollection",
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.NetworkRuleArgs
///                     {
///                         DestinationAddresses = new[]
///                         {
///                             "*",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "*",
///                         },
///                         IpProtocols = new[]
///                         {
///                             AzureNative.Network.FirewallPolicyRuleNetworkProtocol.TCP,
///                         },
///                         Name = "network-rule1",
///                         RuleType = "NetworkRule",
///                         SourceAddresses = new[]
///                         {
///                             "10.1.25.0/24",
///                         },
///                     },
///                 },
///             },
///         },
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
/// 		_, err := network.NewFirewallPolicyRuleCollectionGroup(ctx, "firewallPolicyRuleCollectionGroup", &network.FirewallPolicyRuleCollectionGroupArgs{
/// 			FirewallPolicyName:      pulumi.String("firewallPolicy"),
/// 			Priority:                pulumi.Int(100),
/// 			ResourceGroupName:       pulumi.String("rg1"),
/// 			RuleCollectionGroupName: pulumi.String("ruleCollectionGroup1"),
/// 			RuleCollections: pulumi.Array{
/// 				network.FirewallPolicyFilterRuleCollection{
/// 					Action: network.FirewallPolicyFilterRuleCollectionAction{
/// 						Type: network.FirewallPolicyFilterRuleCollectionActionTypeDeny,
/// 					},
/// 					Name:               "Example-Filter-Rule-Collection",
/// 					Priority:           100,
/// 					RuleCollectionType: "FirewallPolicyFilterRuleCollection",
/// 					Rules: []interface{}{
/// 						network.NetworkRule{
/// 							DestinationAddresses: []string{
/// 								"*",
/// 							},
/// 							DestinationPorts: []string{
/// 								"*",
/// 							},
/// 							IpProtocols: []network.FirewallPolicyRuleNetworkProtocol{
/// 								network.FirewallPolicyRuleNetworkProtocolTCP,
/// 							},
/// 							Name:     "network-rule1",
/// 							RuleType: "NetworkRule",
/// 							SourceAddresses: []string{
/// 								"10.1.25.0/24",
/// 							},
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
/// resource "azure-native_network_firewallpolicyrulecollectiongroup" "firewallPolicyRuleCollectionGroup" {
///   firewall_policy_name       = "firewallPolicy"
///   priority                   = 100
///   resource_group_name        = "rg1"
///   rule_collection_group_name = "ruleCollectionGroup1"
///   rule_collections = [{
///     "action" = {
///       "type" = "Deny"
///     }
///     "name"               = "Example-Filter-Rule-Collection"
///     "priority"           = 100
///     "ruleCollectionType" = "FirewallPolicyFilterRuleCollection"
///     "rules" = [{
///       "destinationAddresses" = ["*"]
///       "destinationPorts"     = ["*"]
///       "ipProtocols"          = ["TCP"]
///       "name"                 = "network-rule1"
///       "ruleType"             = "NetworkRule"
///       "sourceAddresses"      = ["10.1.25.0/24"]
///     }]
///   }]
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
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroup;
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroupArgs;
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
///         var firewallPolicyRuleCollectionGroup = new FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", FirewallPolicyRuleCollectionGroupArgs.builder()
///             .firewallPolicyName("firewallPolicy")
///             .priority(100)
///             .resourceGroupName("rg1")
///             .ruleCollectionGroupName("ruleCollectionGroup1")
///             .ruleCollections(FirewallPolicyFilterRuleCollectionArgs.builder()
///                 .action(FirewallPolicyFilterRuleCollectionActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .name("Example-Filter-Rule-Collection")
///                 .priority(100)
///                 .ruleCollectionType("FirewallPolicyFilterRuleCollection")
///                 .rules(%!v(PANIC=Format method: interface conversion: model.Expression is *model.FunctionCallExpression, not *model.ObjectConsExpression))
///                 .build())
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
/// const firewallPolicyRuleCollectionGroup = new azure_native.network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", {
///     firewallPolicyName: "firewallPolicy",
///     priority: 100,
///     resourceGroupName: "rg1",
///     ruleCollectionGroupName: "ruleCollectionGroup1",
///     ruleCollections: [{
///         action: {
///             type: azure_native.network.FirewallPolicyFilterRuleCollectionActionType.Deny,
///         },
///         name: "Example-Filter-Rule-Collection",
///         priority: 100,
///         ruleCollectionType: "FirewallPolicyFilterRuleCollection",
///         rules: [{
///             destinationAddresses: ["*"],
///             destinationPorts: ["*"],
///             ipProtocols: [azure_native.network.FirewallPolicyRuleNetworkProtocol.TCP],
///             name: "network-rule1",
///             ruleType: "NetworkRule",
///             sourceAddresses: ["10.1.25.0/24"],
///         }],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_policy_rule_collection_group = azure_native.network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup",
///     firewall_policy_name="firewallPolicy",
///     priority=100,
///     resource_group_name="rg1",
///     rule_collection_group_name="ruleCollectionGroup1",
///     rule_collections=[{
///         "action": {
///             "type": azure_native.network.FirewallPolicyFilterRuleCollectionActionType.DENY,
///         },
///         "name": "Example-Filter-Rule-Collection",
///         "priority": 100,
///         "rule_collection_type": "FirewallPolicyFilterRuleCollection",
///         "rules": [{
///             "destination_addresses": ["*"],
///             "destination_ports": ["*"],
///             "ip_protocols": [azure_native.network.FirewallPolicyRuleNetworkProtocol.TCP],
///             "name": "network-rule1",
///             "rule_type": "NetworkRule",
///             "source_addresses": ["10.1.25.0/24"],
///         }],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   firewallPolicyRuleCollectionGroup:
///     type: azure-native:network:FirewallPolicyRuleCollectionGroup
///     properties:
///       firewallPolicyName: firewallPolicy
///       priority: 100
///       resourceGroupName: rg1
///       ruleCollectionGroupName: ruleCollectionGroup1
///       ruleCollections:
///         - action:
///             type: Deny
///           name: Example-Filter-Rule-Collection
///           priority: 100
///           ruleCollectionType: FirewallPolicyFilterRuleCollection
///           rules:
///             - destinationAddresses:
///                 - '*'
///               destinationPorts:
///                 - '*'
///               ipProtocols:
///                 - TCP
///               name: network-rule1
///               ruleType: NetworkRule
///               sourceAddresses:
///                 - 10.1.25.0/24
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Firewall Policy Rule Collection Group With IP Groups
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallPolicyRuleCollectionGroup = new AzureNative.Network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", new()
///     {
///         FirewallPolicyName = "firewallPolicy",
///         Priority = 110,
///         ResourceGroupName = "rg1",
///         RuleCollectionGroupName = "ruleCollectionGroup1",
///         RuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.FirewallPolicyFilterRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.FirewallPolicyFilterRuleCollectionActionArgs
///                 {
///                     Type = AzureNative.Network.FirewallPolicyFilterRuleCollectionActionType.Deny,
///                 },
///                 Name = "Example-Filter-Rule-Collection",
///                 RuleCollectionType = "FirewallPolicyFilterRuleCollection",
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.NetworkRuleArgs
///                     {
///                         DestinationIpGroups = new[]
///                         {
///                             "/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups2",
///                         },
///                         DestinationPorts = new[]
///                         {
///                             "*",
///                         },
///                         IpProtocols = new[]
///                         {
///                             AzureNative.Network.FirewallPolicyRuleNetworkProtocol.TCP,
///                         },
///                         Name = "network-1",
///                         RuleType = "NetworkRule",
///                         SourceIpGroups = new[]
///                         {
///                             "/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1",
///                         },
///                     },
///                 },
///             },
///         },
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
/// 		_, err := network.NewFirewallPolicyRuleCollectionGroup(ctx, "firewallPolicyRuleCollectionGroup", &network.FirewallPolicyRuleCollectionGroupArgs{
/// 			FirewallPolicyName:      pulumi.String("firewallPolicy"),
/// 			Priority:                pulumi.Int(110),
/// 			ResourceGroupName:       pulumi.String("rg1"),
/// 			RuleCollectionGroupName: pulumi.String("ruleCollectionGroup1"),
/// 			RuleCollections: pulumi.Array{
/// 				network.FirewallPolicyFilterRuleCollection{
/// 					Action: network.FirewallPolicyFilterRuleCollectionAction{
/// 						Type: network.FirewallPolicyFilterRuleCollectionActionTypeDeny,
/// 					},
/// 					Name:               "Example-Filter-Rule-Collection",
/// 					RuleCollectionType: "FirewallPolicyFilterRuleCollection",
/// 					Rules: []interface{}{
/// 						network.NetworkRule{
/// 							DestinationIpGroups: []string{
/// 								"/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups2",
/// 							},
/// 							DestinationPorts: []string{
/// 								"*",
/// 							},
/// 							IpProtocols: []network.FirewallPolicyRuleNetworkProtocol{
/// 								network.FirewallPolicyRuleNetworkProtocolTCP,
/// 							},
/// 							Name:     "network-1",
/// 							RuleType: "NetworkRule",
/// 							SourceIpGroups: []string{
/// 								"/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1",
/// 							},
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
/// resource "azure-native_network_firewallpolicyrulecollectiongroup" "firewallPolicyRuleCollectionGroup" {
///   firewall_policy_name       = "firewallPolicy"
///   priority                   = 110
///   resource_group_name        = "rg1"
///   rule_collection_group_name = "ruleCollectionGroup1"
///   rule_collections = [{
///     "action" = {
///       "type" = "Deny"
///     }
///     "name"               = "Example-Filter-Rule-Collection"
///     "ruleCollectionType" = "FirewallPolicyFilterRuleCollection"
///     "rules" = [{
///       "destinationIpGroups" = ["/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups2"]
///       "destinationPorts"    = ["*"]
///       "ipProtocols"         = ["TCP"]
///       "name"                = "network-1"
///       "ruleType"            = "NetworkRule"
///       "sourceIpGroups"      = ["/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1"]
///     }]
///   }]
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
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroup;
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroupArgs;
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
///         var firewallPolicyRuleCollectionGroup = new FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", FirewallPolicyRuleCollectionGroupArgs.builder()
///             .firewallPolicyName("firewallPolicy")
///             .priority(110)
///             .resourceGroupName("rg1")
///             .ruleCollectionGroupName("ruleCollectionGroup1")
///             .ruleCollections(FirewallPolicyFilterRuleCollectionArgs.builder()
///                 .action(FirewallPolicyFilterRuleCollectionActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .name("Example-Filter-Rule-Collection")
///                 .ruleCollectionType("FirewallPolicyFilterRuleCollection")
///                 .rules(%!v(PANIC=Format method: interface conversion: model.Expression is *model.FunctionCallExpression, not *model.ObjectConsExpression))
///                 .build())
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
/// const firewallPolicyRuleCollectionGroup = new azure_native.network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", {
///     firewallPolicyName: "firewallPolicy",
///     priority: 110,
///     resourceGroupName: "rg1",
///     ruleCollectionGroupName: "ruleCollectionGroup1",
///     ruleCollections: [{
///         action: {
///             type: azure_native.network.FirewallPolicyFilterRuleCollectionActionType.Deny,
///         },
///         name: "Example-Filter-Rule-Collection",
///         ruleCollectionType: "FirewallPolicyFilterRuleCollection",
///         rules: [{
///             destinationIpGroups: ["/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups2"],
///             destinationPorts: ["*"],
///             ipProtocols: [azure_native.network.FirewallPolicyRuleNetworkProtocol.TCP],
///             name: "network-1",
///             ruleType: "NetworkRule",
///             sourceIpGroups: ["/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1"],
///         }],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_policy_rule_collection_group = azure_native.network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup",
///     firewall_policy_name="firewallPolicy",
///     priority=110,
///     resource_group_name="rg1",
///     rule_collection_group_name="ruleCollectionGroup1",
///     rule_collections=[{
///         "action": {
///             "type": azure_native.network.FirewallPolicyFilterRuleCollectionActionType.DENY,
///         },
///         "name": "Example-Filter-Rule-Collection",
///         "rule_collection_type": "FirewallPolicyFilterRuleCollection",
///         "rules": [{
///             "destination_ip_groups": ["/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups2"],
///             "destination_ports": ["*"],
///             "ip_protocols": [azure_native.network.FirewallPolicyRuleNetworkProtocol.TCP],
///             "name": "network-1",
///             "rule_type": "NetworkRule",
///             "source_ip_groups": ["/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1"],
///         }],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   firewallPolicyRuleCollectionGroup:
///     type: azure-native:network:FirewallPolicyRuleCollectionGroup
///     properties:
///       firewallPolicyName: firewallPolicy
///       priority: 110
///       resourceGroupName: rg1
///       ruleCollectionGroupName: ruleCollectionGroup1
///       ruleCollections:
///         - action:
///             type: Deny
///           name: Example-Filter-Rule-Collection
///           ruleCollectionType: FirewallPolicyFilterRuleCollection
///           rules:
///             - destinationIpGroups:
///                 - /subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups2
///               destinationPorts:
///                 - '*'
///               ipProtocols:
///                 - TCP
///               name: network-1
///               ruleType: NetworkRule
///               sourceIpGroups:
///                 - /subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Firewall Policy Rule Collection Group With Web Categories
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallPolicyRuleCollectionGroup = new AzureNative.Network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", new()
///     {
///         FirewallPolicyName = "firewallPolicy",
///         Priority = 110,
///         ResourceGroupName = "rg1",
///         RuleCollectionGroupName = "ruleCollectionGroup1",
///         RuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.FirewallPolicyFilterRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.FirewallPolicyFilterRuleCollectionActionArgs
///                 {
///                     Type = AzureNative.Network.FirewallPolicyFilterRuleCollectionActionType.Deny,
///                 },
///                 Name = "Example-Filter-Rule-Collection",
///                 RuleCollectionType = "FirewallPolicyFilterRuleCollection",
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.ApplicationRuleArgs
///                     {
///                         Description = "Deny inbound rule",
///                         Name = "rule1",
///                         Protocols = new[]
///                         {
///                             new AzureNative.Network.Inputs.FirewallPolicyRuleApplicationProtocolArgs
///                             {
///                                 Port = 443,
///                                 ProtocolType = AzureNative.Network.FirewallPolicyRuleApplicationProtocolType.Https,
///                             },
///                         },
///                         RuleType = "ApplicationRule",
///                         SourceAddresses = new[]
///                         {
///                             "216.58.216.164",
///                             "10.0.0.0/24",
///                         },
///                         WebCategories = new[]
///                         {
///                             "Hacking",
///                         },
///                     },
///                 },
///             },
///         },
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
/// 		_, err := network.NewFirewallPolicyRuleCollectionGroup(ctx, "firewallPolicyRuleCollectionGroup", &network.FirewallPolicyRuleCollectionGroupArgs{
/// 			FirewallPolicyName:      pulumi.String("firewallPolicy"),
/// 			Priority:                pulumi.Int(110),
/// 			ResourceGroupName:       pulumi.String("rg1"),
/// 			RuleCollectionGroupName: pulumi.String("ruleCollectionGroup1"),
/// 			RuleCollections: pulumi.Array{
/// 				network.FirewallPolicyFilterRuleCollection{
/// 					Action: network.FirewallPolicyFilterRuleCollectionAction{
/// 						Type: network.FirewallPolicyFilterRuleCollectionActionTypeDeny,
/// 					},
/// 					Name:               "Example-Filter-Rule-Collection",
/// 					RuleCollectionType: "FirewallPolicyFilterRuleCollection",
/// 					Rules: []interface{}{
/// 						network.ApplicationRule{
/// 							Description: "Deny inbound rule",
/// 							Name:        "rule1",
/// 							Protocols: []network.FirewallPolicyRuleApplicationProtocol{
/// 								{
/// 									Port:         443,
/// 									ProtocolType: network.FirewallPolicyRuleApplicationProtocolTypeHttps,
/// 								},
/// 							},
/// 							RuleType: "ApplicationRule",
/// 							SourceAddresses: []string{
/// 								"216.58.216.164",
/// 								"10.0.0.0/24",
/// 							},
/// 							WebCategories: []string{
/// 								"Hacking",
/// 							},
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
/// resource "azure-native_network_firewallpolicyrulecollectiongroup" "firewallPolicyRuleCollectionGroup" {
///   firewall_policy_name       = "firewallPolicy"
///   priority                   = 110
///   resource_group_name        = "rg1"
///   rule_collection_group_name = "ruleCollectionGroup1"
///   rule_collections = [{
///     "action" = {
///       "type" = "Deny"
///     }
///     "name"               = "Example-Filter-Rule-Collection"
///     "ruleCollectionType" = "FirewallPolicyFilterRuleCollection"
///     "rules" = [{
///       "description" = "Deny inbound rule"
///       "name"        = "rule1"
///       "protocols" = [{
///         "port"         = 443
///         "protocolType" = "Https"
///       }]
///       "ruleType"        = "ApplicationRule"
///       "sourceAddresses" = ["216.58.216.164", "10.0.0.0/24"]
///       "webCategories"   = ["Hacking"]
///     }]
///   }]
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
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroup;
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroupArgs;
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
///         var firewallPolicyRuleCollectionGroup = new FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", FirewallPolicyRuleCollectionGroupArgs.builder()
///             .firewallPolicyName("firewallPolicy")
///             .priority(110)
///             .resourceGroupName("rg1")
///             .ruleCollectionGroupName("ruleCollectionGroup1")
///             .ruleCollections(FirewallPolicyFilterRuleCollectionArgs.builder()
///                 .action(FirewallPolicyFilterRuleCollectionActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .name("Example-Filter-Rule-Collection")
///                 .ruleCollectionType("FirewallPolicyFilterRuleCollection")
///                 .rules(%!v(PANIC=Format method: interface conversion: model.Expression is *model.FunctionCallExpression, not *model.ObjectConsExpression))
///                 .build())
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
/// const firewallPolicyRuleCollectionGroup = new azure_native.network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", {
///     firewallPolicyName: "firewallPolicy",
///     priority: 110,
///     resourceGroupName: "rg1",
///     ruleCollectionGroupName: "ruleCollectionGroup1",
///     ruleCollections: [{
///         action: {
///             type: azure_native.network.FirewallPolicyFilterRuleCollectionActionType.Deny,
///         },
///         name: "Example-Filter-Rule-Collection",
///         ruleCollectionType: "FirewallPolicyFilterRuleCollection",
///         rules: [{
///             description: "Deny inbound rule",
///             name: "rule1",
///             protocols: [{
///                 port: 443,
///                 protocolType: azure_native.network.FirewallPolicyRuleApplicationProtocolType.Https,
///             }],
///             ruleType: "ApplicationRule",
///             sourceAddresses: [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             webCategories: ["Hacking"],
///         }],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_policy_rule_collection_group = azure_native.network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup",
///     firewall_policy_name="firewallPolicy",
///     priority=110,
///     resource_group_name="rg1",
///     rule_collection_group_name="ruleCollectionGroup1",
///     rule_collections=[{
///         "action": {
///             "type": azure_native.network.FirewallPolicyFilterRuleCollectionActionType.DENY,
///         },
///         "name": "Example-Filter-Rule-Collection",
///         "rule_collection_type": "FirewallPolicyFilterRuleCollection",
///         "rules": [{
///             "description": "Deny inbound rule",
///             "name": "rule1",
///             "protocols": [{
///                 "port": 443,
///                 "protocol_type": azure_native.network.FirewallPolicyRuleApplicationProtocolType.HTTPS,
///             }],
///             "rule_type": "ApplicationRule",
///             "source_addresses": [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///             "web_categories": ["Hacking"],
///         }],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   firewallPolicyRuleCollectionGroup:
///     type: azure-native:network:FirewallPolicyRuleCollectionGroup
///     properties:
///       firewallPolicyName: firewallPolicy
///       priority: 110
///       resourceGroupName: rg1
///       ruleCollectionGroupName: ruleCollectionGroup1
///       ruleCollections:
///         - action:
///             type: Deny
///           name: Example-Filter-Rule-Collection
///           ruleCollectionType: FirewallPolicyFilterRuleCollection
///           rules:
///             - description: Deny inbound rule
///               name: rule1
///               protocols:
///                 - port: 443
///                   protocolType: Https
///               ruleType: ApplicationRule
///               sourceAddresses:
///                 - 216.58.216.164
///                 - 10.0.0.0/24
///               webCategories:
///                 - Hacking
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create Firewall Policy Rule Collection Group With http header to insert
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallPolicyRuleCollectionGroup = new AzureNative.Network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", new()
///     {
///         FirewallPolicyName = "firewallPolicy",
///         Priority = 110,
///         ResourceGroupName = "rg1",
///         RuleCollectionGroupName = "ruleCollectionGroup1",
///         RuleCollections = new[]
///         {
///             new AzureNative.Network.Inputs.FirewallPolicyFilterRuleCollectionArgs
///             {
///                 Action = new AzureNative.Network.Inputs.FirewallPolicyFilterRuleCollectionActionArgs
///                 {
///                     Type = AzureNative.Network.FirewallPolicyFilterRuleCollectionActionType.Allow,
///                 },
///                 Name = "Example-Filter-Rule-Collection",
///                 RuleCollectionType = "FirewallPolicyFilterRuleCollection",
///                 Rules = new[]
///                 {
///                     new AzureNative.Network.Inputs.ApplicationRuleArgs
///                     {
///                         Description = "Insert trusted tenants header",
///                         FqdnTags = new[]
///                         {
///                             "WindowsVirtualDesktop",
///                         },
///                         HttpHeadersToInsert = new[]
///                         {
///                             new AzureNative.Network.Inputs.FirewallPolicyHttpHeaderToInsertArgs
///                             {
///                                 HeaderName = "Restrict-Access-To-Tenants",
///                                 HeaderValue = "contoso.com,fabrikam.onmicrosoft.com",
///                             },
///                         },
///                         Name = "rule1",
///                         Protocols = new[]
///                         {
///                             new AzureNative.Network.Inputs.FirewallPolicyRuleApplicationProtocolArgs
///                             {
///                                 Port = 80,
///                                 ProtocolType = AzureNative.Network.FirewallPolicyRuleApplicationProtocolType.Http,
///                             },
///                         },
///                         RuleType = "ApplicationRule",
///                         SourceAddresses = new[]
///                         {
///                             "216.58.216.164",
///                             "10.0.0.0/24",
///                         },
///                     },
///                 },
///             },
///         },
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
/// 		_, err := network.NewFirewallPolicyRuleCollectionGroup(ctx, "firewallPolicyRuleCollectionGroup", &network.FirewallPolicyRuleCollectionGroupArgs{
/// 			FirewallPolicyName:      pulumi.String("firewallPolicy"),
/// 			Priority:                pulumi.Int(110),
/// 			ResourceGroupName:       pulumi.String("rg1"),
/// 			RuleCollectionGroupName: pulumi.String("ruleCollectionGroup1"),
/// 			RuleCollections: pulumi.Array{
/// 				network.FirewallPolicyFilterRuleCollection{
/// 					Action: network.FirewallPolicyFilterRuleCollectionAction{
/// 						Type: network.FirewallPolicyFilterRuleCollectionActionTypeAllow,
/// 					},
/// 					Name:               "Example-Filter-Rule-Collection",
/// 					RuleCollectionType: "FirewallPolicyFilterRuleCollection",
/// 					Rules: []interface{}{
/// 						network.ApplicationRule{
/// 							Description: "Insert trusted tenants header",
/// 							FqdnTags: []string{
/// 								"WindowsVirtualDesktop",
/// 							},
/// 							HttpHeadersToInsert: []network.FirewallPolicyHttpHeaderToInsert{
/// 								{
/// 									HeaderName:  "Restrict-Access-To-Tenants",
/// 									HeaderValue: "contoso.com,fabrikam.onmicrosoft.com",
/// 								},
/// 							},
/// 							Name: "rule1",
/// 							Protocols: []network.FirewallPolicyRuleApplicationProtocol{
/// 								{
/// 									Port:         80,
/// 									ProtocolType: network.FirewallPolicyRuleApplicationProtocolTypeHttp,
/// 								},
/// 							},
/// 							RuleType: "ApplicationRule",
/// 							SourceAddresses: []string{
/// 								"216.58.216.164",
/// 								"10.0.0.0/24",
/// 							},
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
/// resource "azure-native_network_firewallpolicyrulecollectiongroup" "firewallPolicyRuleCollectionGroup" {
///   firewall_policy_name       = "firewallPolicy"
///   priority                   = 110
///   resource_group_name        = "rg1"
///   rule_collection_group_name = "ruleCollectionGroup1"
///   rule_collections = [{
///     "action" = {
///       "type" = "Allow"
///     }
///     "name"               = "Example-Filter-Rule-Collection"
///     "ruleCollectionType" = "FirewallPolicyFilterRuleCollection"
///     "rules" = [{
///       "description" = "Insert trusted tenants header"
///       "fqdnTags"    = ["WindowsVirtualDesktop"]
///       "httpHeadersToInsert" = [{
///         "headerName"  = "Restrict-Access-To-Tenants"
///         "headerValue" = "contoso.com,fabrikam.onmicrosoft.com"
///       }]
///       "name" = "rule1"
///       "protocols" = [{
///         "port"         = 80
///         "protocolType" = "Http"
///       }]
///       "ruleType"        = "ApplicationRule"
///       "sourceAddresses" = ["216.58.216.164", "10.0.0.0/24"]
///     }]
///   }]
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
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroup;
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroupArgs;
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
///         var firewallPolicyRuleCollectionGroup = new FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", FirewallPolicyRuleCollectionGroupArgs.builder()
///             .firewallPolicyName("firewallPolicy")
///             .priority(110)
///             .resourceGroupName("rg1")
///             .ruleCollectionGroupName("ruleCollectionGroup1")
///             .ruleCollections(FirewallPolicyFilterRuleCollectionArgs.builder()
///                 .action(FirewallPolicyFilterRuleCollectionActionArgs.builder()
///                     .type("Allow")
///                     .build())
///                 .name("Example-Filter-Rule-Collection")
///                 .ruleCollectionType("FirewallPolicyFilterRuleCollection")
///                 .rules(%!v(PANIC=Format method: interface conversion: model.Expression is *model.FunctionCallExpression, not *model.ObjectConsExpression))
///                 .build())
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
/// const firewallPolicyRuleCollectionGroup = new azure_native.network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup", {
///     firewallPolicyName: "firewallPolicy",
///     priority: 110,
///     resourceGroupName: "rg1",
///     ruleCollectionGroupName: "ruleCollectionGroup1",
///     ruleCollections: [{
///         action: {
///             type: azure_native.network.FirewallPolicyFilterRuleCollectionActionType.Allow,
///         },
///         name: "Example-Filter-Rule-Collection",
///         ruleCollectionType: "FirewallPolicyFilterRuleCollection",
///         rules: [{
///             description: "Insert trusted tenants header",
///             fqdnTags: ["WindowsVirtualDesktop"],
///             httpHeadersToInsert: [{
///                 headerName: "Restrict-Access-To-Tenants",
///                 headerValue: "contoso.com,fabrikam.onmicrosoft.com",
///             }],
///             name: "rule1",
///             protocols: [{
///                 port: 80,
///                 protocolType: azure_native.network.FirewallPolicyRuleApplicationProtocolType.Http,
///             }],
///             ruleType: "ApplicationRule",
///             sourceAddresses: [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///         }],
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_policy_rule_collection_group = azure_native.network.FirewallPolicyRuleCollectionGroup("firewallPolicyRuleCollectionGroup",
///     firewall_policy_name="firewallPolicy",
///     priority=110,
///     resource_group_name="rg1",
///     rule_collection_group_name="ruleCollectionGroup1",
///     rule_collections=[{
///         "action": {
///             "type": azure_native.network.FirewallPolicyFilterRuleCollectionActionType.ALLOW,
///         },
///         "name": "Example-Filter-Rule-Collection",
///         "rule_collection_type": "FirewallPolicyFilterRuleCollection",
///         "rules": [{
///             "description": "Insert trusted tenants header",
///             "fqdn_tags": ["WindowsVirtualDesktop"],
///             "http_headers_to_insert": [{
///                 "header_name": "Restrict-Access-To-Tenants",
///                 "header_value": "contoso.com,fabrikam.onmicrosoft.com",
///             }],
///             "name": "rule1",
///             "protocols": [{
///                 "port": 80,
///                 "protocol_type": azure_native.network.FirewallPolicyRuleApplicationProtocolType.HTTP,
///             }],
///             "rule_type": "ApplicationRule",
///             "source_addresses": [
///                 "216.58.216.164",
///                 "10.0.0.0/24",
///             ],
///         }],
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   firewallPolicyRuleCollectionGroup:
///     type: azure-native:network:FirewallPolicyRuleCollectionGroup
///     properties:
///       firewallPolicyName: firewallPolicy
///       priority: 110
///       resourceGroupName: rg1
///       ruleCollectionGroupName: ruleCollectionGroup1
///       ruleCollections:
///         - action:
///             type: Allow
///           name: Example-Filter-Rule-Collection
///           ruleCollectionType: FirewallPolicyFilterRuleCollection
///           rules:
///             - description: Insert trusted tenants header
///               fqdnTags:
///                 - WindowsVirtualDesktop
///               httpHeadersToInsert:
///                 - headerName: Restrict-Access-To-Tenants
///                   headerValue: contoso.com,fabrikam.onmicrosoft.com
///               name: rule1
///               protocols:
///                 - port: 80
///                   protocolType: Http
///               ruleType: ApplicationRule
///               sourceAddresses:
///                 - 216.58.216.164
///                 - 10.0.0.0/24
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
/// $ pulumi import azure-native:network:FirewallPolicyRuleCollectionGroup ruleCollectionGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/firewallPolicies/{firewallPolicyName}/ruleCollectionGroups/{ruleCollectionGroupName}
/// ```
class FirewallPolicyRuleCollectionGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// Priority of the Firewall Policy Rule Collection Group resource.
  late final pulumi.Output<int?> priority;
  /// The provisioning state of the firewall policy rule collection group resource.
  late final pulumi.Output<String> provisioningState;
  /// Group of Firewall Policy rule collections.
  late final pulumi.Output<List<Map<String, dynamic>>?> ruleCollections;
  /// A read-only string that represents the size of the FirewallPolicyRuleCollectionGroupProperties in MB. (ex 1.2MB)
  late final pulumi.Output<String> size;
  /// Rule Group type.
  late final pulumi.Output<String> type;

  /// Creates a new [FirewallPolicyRuleCollectionGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicyRuleCollectionGroup]. {@macro pulumi_network_firewall_policy_rule_collection_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicyRuleCollectionGroup(
    String name, {
    FirewallPolicyRuleCollectionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:FirewallPolicyRuleCollectionGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    priority = registerOutput<int?>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    ruleCollections = registerOutput<List<Map<String, dynamic>>?>('ruleCollections');
    size = registerOutput<String>('size');
    type = registerOutput<String>('type');
  }
}
