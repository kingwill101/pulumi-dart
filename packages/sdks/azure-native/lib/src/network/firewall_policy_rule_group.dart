import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_group_args.dart';

/// Rule Group resource.
///
/// Uses Azure REST API version 2020-04-01. In version 2.x of the Azure Native provider, it used API version 2020-04-01.
///
/// Other available API versions: 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create FirewallPolicyRuleGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallPolicyRuleGroup = new AzureNative.Network.FirewallPolicyRuleGroup("firewallPolicyRuleGroup", new()
///     {
///         FirewallPolicyName = "firewallPolicy",
///         Priority = 110,
///         ResourceGroupName = "rg1",
///         RuleGroupName = "ruleGroup1",
///         Rules = new[]
///         {
///             new AzureNative.Network.Inputs.FirewallPolicyFilterRuleArgs
///             {
///                 Action = new AzureNative.Network.Inputs.FirewallPolicyFilterRuleActionArgs
///                 {
///                     Type = AzureNative.Network.FirewallPolicyFilterRuleActionType.Deny,
///                 },
///                 Name = "Example-Filter-Rule",
///                 RuleConditions = new[]
///                 {
///                     new AzureNative.Network.Inputs.NetworkRuleConditionArgs
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
///                             AzureNative.Network.FirewallPolicyRuleConditionNetworkProtocol.TCP,
///                         },
///                         Name = "network-condition1",
///                         RuleConditionType = "NetworkRuleCondition",
///                         SourceAddresses = new[]
///                         {
///                             "10.1.25.0/24",
///                         },
///                     },
///                 },
///                 RuleType = "FirewallPolicyFilterRule",
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
/// 		_, err := network.NewFirewallPolicyRuleGroup(ctx, "firewallPolicyRuleGroup", &network.FirewallPolicyRuleGroupArgs{
/// 			FirewallPolicyName: pulumi.String("firewallPolicy"),
/// 			Priority:           pulumi.Int(110),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleGroupName:      pulumi.String("ruleGroup1"),
/// 			Rules: pulumi.Array{
/// 				network.FirewallPolicyFilterRule{
/// 					Action: network.FirewallPolicyFilterRuleAction{
/// 						Type: network.FirewallPolicyFilterRuleActionTypeDeny,
/// 					},
/// 					Name: "Example-Filter-Rule",
/// 					RuleConditions: []interface{}{
/// 						network.NetworkRuleCondition{
/// 							DestinationAddresses: []string{
/// 								"*",
/// 							},
/// 							DestinationPorts: []string{
/// 								"*",
/// 							},
/// 							IpProtocols: []network.FirewallPolicyRuleConditionNetworkProtocol{
/// 								network.FirewallPolicyRuleConditionNetworkProtocolTCP,
/// 							},
/// 							Name:              "network-condition1",
/// 							RuleConditionType: "NetworkRuleCondition",
/// 							SourceAddresses: []string{
/// 								"10.1.25.0/24",
/// 							},
/// 						},
/// 					},
/// 					RuleType: "FirewallPolicyFilterRule",
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.FirewallPolicyRuleGroup;
/// import com.pulumi.azurenative.network.FirewallPolicyRuleGroupArgs;
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
///         var firewallPolicyRuleGroup = new FirewallPolicyRuleGroup("firewallPolicyRuleGroup", FirewallPolicyRuleGroupArgs.builder()
///             .firewallPolicyName("firewallPolicy")
///             .priority(110)
///             .resourceGroupName("rg1")
///             .ruleGroupName("ruleGroup1")
///             .rules(FirewallPolicyFilterRuleArgs.builder()
///                 .action(FirewallPolicyFilterRuleActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .name("Example-Filter-Rule")
///                 .ruleConditions(%!v(PANIC=Format method: interface conversion: model.Expression is *model.FunctionCallExpression, not *model.ObjectConsExpression))
///                 .ruleType("FirewallPolicyFilterRule")
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
/// const firewallPolicyRuleGroup = new azure_native.network.FirewallPolicyRuleGroup("firewallPolicyRuleGroup", {
///     firewallPolicyName: "firewallPolicy",
///     priority: 110,
///     resourceGroupName: "rg1",
///     ruleGroupName: "ruleGroup1",
///     rules: [{
///         action: {
///             type: azure_native.network.FirewallPolicyFilterRuleActionType.Deny,
///         },
///         name: "Example-Filter-Rule",
///         ruleConditions: [{
///             destinationAddresses: ["*"],
///             destinationPorts: ["*"],
///             ipProtocols: [azure_native.network.FirewallPolicyRuleConditionNetworkProtocol.TCP],
///             name: "network-condition1",
///             ruleConditionType: "NetworkRuleCondition",
///             sourceAddresses: ["10.1.25.0/24"],
///         }],
///         ruleType: "FirewallPolicyFilterRule",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_policy_rule_group = azure_native.network.FirewallPolicyRuleGroup("firewallPolicyRuleGroup",
///     firewall_policy_name="firewallPolicy",
///     priority=110,
///     resource_group_name="rg1",
///     rule_group_name="ruleGroup1",
///     rules=[{
///         "action": {
///             "type": azure_native.network.FirewallPolicyFilterRuleActionType.DENY,
///         },
///         "name": "Example-Filter-Rule",
///         "rule_conditions": [{
///             "destination_addresses": ["*"],
///             "destination_ports": ["*"],
///             "ip_protocols": [azure_native.network.FirewallPolicyRuleConditionNetworkProtocol.TCP],
///             "name": "network-condition1",
///             "rule_condition_type": "NetworkRuleCondition",
///             "source_addresses": ["10.1.25.0/24"],
///         }],
///         "rule_type": "FirewallPolicyFilterRule",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   firewallPolicyRuleGroup:
///     type: azure-native:network:FirewallPolicyRuleGroup
///     properties:
///       firewallPolicyName: firewallPolicy
///       priority: 110
///       resourceGroupName: rg1
///       ruleGroupName: ruleGroup1
///       rules:
///         - action:
///             type: Deny
///           name: Example-Filter-Rule
///           ruleConditions:
///             - destinationAddresses:
///                 - '*'
///               destinationPorts:
///                 - '*'
///               ipProtocols:
///                 - TCP
///               name: network-condition1
///               ruleConditionType: NetworkRuleCondition
///               sourceAddresses:
///                 - 10.1.25.0/24
///           ruleType: FirewallPolicyFilterRule
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create FirewallPolicyRuleGroup With IpGroups
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallPolicyRuleGroup = new AzureNative.Network.FirewallPolicyRuleGroup("firewallPolicyRuleGroup", new()
///     {
///         FirewallPolicyName = "firewallPolicy",
///         Priority = 110,
///         ResourceGroupName = "rg1",
///         RuleGroupName = "ruleGroup1",
///         Rules = new[]
///         {
///             new AzureNative.Network.Inputs.FirewallPolicyFilterRuleArgs
///             {
///                 Action = new AzureNative.Network.Inputs.FirewallPolicyFilterRuleActionArgs
///                 {
///                     Type = AzureNative.Network.FirewallPolicyFilterRuleActionType.Deny,
///                 },
///                 Name = "Example-Filter-Rule",
///                 RuleConditions = new[]
///                 {
///                     new AzureNative.Network.Inputs.NetworkRuleConditionArgs
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
///                             AzureNative.Network.FirewallPolicyRuleConditionNetworkProtocol.TCP,
///                         },
///                         Name = "network-condition1",
///                         RuleConditionType = "NetworkRuleCondition",
///                         SourceIpGroups = new[]
///                         {
///                             "/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1",
///                         },
///                     },
///                 },
///                 RuleType = "FirewallPolicyFilterRule",
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
/// 		_, err := network.NewFirewallPolicyRuleGroup(ctx, "firewallPolicyRuleGroup", &network.FirewallPolicyRuleGroupArgs{
/// 			FirewallPolicyName: pulumi.String("firewallPolicy"),
/// 			Priority:           pulumi.Int(110),
/// 			ResourceGroupName:  pulumi.String("rg1"),
/// 			RuleGroupName:      pulumi.String("ruleGroup1"),
/// 			Rules: pulumi.Array{
/// 				network.FirewallPolicyFilterRule{
/// 					Action: network.FirewallPolicyFilterRuleAction{
/// 						Type: network.FirewallPolicyFilterRuleActionTypeDeny,
/// 					},
/// 					Name: "Example-Filter-Rule",
/// 					RuleConditions: []interface{}{
/// 						network.NetworkRuleCondition{
/// 							DestinationIpGroups: []string{
/// 								"/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups2",
/// 							},
/// 							DestinationPorts: []string{
/// 								"*",
/// 							},
/// 							IpProtocols: []network.FirewallPolicyRuleConditionNetworkProtocol{
/// 								network.FirewallPolicyRuleConditionNetworkProtocolTCP,
/// 							},
/// 							Name:              "network-condition1",
/// 							RuleConditionType: "NetworkRuleCondition",
/// 							SourceIpGroups: []string{
/// 								"/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1",
/// 							},
/// 						},
/// 					},
/// 					RuleType: "FirewallPolicyFilterRule",
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.FirewallPolicyRuleGroup;
/// import com.pulumi.azurenative.network.FirewallPolicyRuleGroupArgs;
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
///         var firewallPolicyRuleGroup = new FirewallPolicyRuleGroup("firewallPolicyRuleGroup", FirewallPolicyRuleGroupArgs.builder()
///             .firewallPolicyName("firewallPolicy")
///             .priority(110)
///             .resourceGroupName("rg1")
///             .ruleGroupName("ruleGroup1")
///             .rules(FirewallPolicyFilterRuleArgs.builder()
///                 .action(FirewallPolicyFilterRuleActionArgs.builder()
///                     .type("Deny")
///                     .build())
///                 .name("Example-Filter-Rule")
///                 .ruleConditions(%!v(PANIC=Format method: interface conversion: model.Expression is *model.FunctionCallExpression, not *model.ObjectConsExpression))
///                 .ruleType("FirewallPolicyFilterRule")
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
/// const firewallPolicyRuleGroup = new azure_native.network.FirewallPolicyRuleGroup("firewallPolicyRuleGroup", {
///     firewallPolicyName: "firewallPolicy",
///     priority: 110,
///     resourceGroupName: "rg1",
///     ruleGroupName: "ruleGroup1",
///     rules: [{
///         action: {
///             type: azure_native.network.FirewallPolicyFilterRuleActionType.Deny,
///         },
///         name: "Example-Filter-Rule",
///         ruleConditions: [{
///             destinationIpGroups: ["/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups2"],
///             destinationPorts: ["*"],
///             ipProtocols: [azure_native.network.FirewallPolicyRuleConditionNetworkProtocol.TCP],
///             name: "network-condition1",
///             ruleConditionType: "NetworkRuleCondition",
///             sourceIpGroups: ["/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1"],
///         }],
///         ruleType: "FirewallPolicyFilterRule",
///     }],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// firewall_policy_rule_group = azure_native.network.FirewallPolicyRuleGroup("firewallPolicyRuleGroup",
///     firewall_policy_name="firewallPolicy",
///     priority=110,
///     resource_group_name="rg1",
///     rule_group_name="ruleGroup1",
///     rules=[{
///         "action": {
///             "type": azure_native.network.FirewallPolicyFilterRuleActionType.DENY,
///         },
///         "name": "Example-Filter-Rule",
///         "rule_conditions": [{
///             "destination_ip_groups": ["/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups2"],
///             "destination_ports": ["*"],
///             "ip_protocols": [azure_native.network.FirewallPolicyRuleConditionNetworkProtocol.TCP],
///             "name": "network-condition1",
///             "rule_condition_type": "NetworkRuleCondition",
///             "source_ip_groups": ["/subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1"],
///         }],
///         "rule_type": "FirewallPolicyFilterRule",
///     }])
///
/// ```
///
/// ```yaml
/// resources:
///   firewallPolicyRuleGroup:
///     type: azure-native:network:FirewallPolicyRuleGroup
///     properties:
///       firewallPolicyName: firewallPolicy
///       priority: 110
///       resourceGroupName: rg1
///       ruleGroupName: ruleGroup1
///       rules:
///         - action:
///             type: Deny
///           name: Example-Filter-Rule
///           ruleConditions:
///             - destinationIpGroups:
///                 - /subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups2
///               destinationPorts:
///                 - '*'
///               ipProtocols:
///                 - TCP
///               name: network-condition1
///               ruleConditionType: NetworkRuleCondition
///               sourceIpGroups:
///                 - /subscriptions/subid/providers/Microsoft.Network/resourceGroup/rg1/ipGroups/ipGroups1
///           ruleType: FirewallPolicyFilterRule
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
/// $ pulumi import azure-native:network:FirewallPolicyRuleGroup ruleGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/firewallPolicies/{firewallPolicyName}/ruleGroups/{ruleGroupName}
/// ```
class FirewallPolicyRuleGroup extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;

  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;

  /// Priority of the Firewall Policy Rule Group resource.
  late final pulumi.Output<int?> priority;

  /// The provisioning state of the firewall policy rule group resource.
  late final pulumi.Output<String> provisioningState;

  /// Group of Firewall Policy rules.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;

  /// Rule Group type.
  late final pulumi.Output<String> type;

  /// Creates a new [FirewallPolicyRuleGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicyRuleGroup]. {@macro pulumi_network_firewall_policy_rule_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicyRuleGroup(
    String name, {
    FirewallPolicyRuleGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:network:FirewallPolicyRuleGroup',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String?>('name');
    priority = registerOutput<int?>('priority');
    provisioningState = registerOutput<String>('provisioningState');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    type = registerOutput<String>('type');
  }
}
