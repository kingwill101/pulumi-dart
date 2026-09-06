import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_rule_collection_group_draft_args.dart';

/// Rule Collection Group resource.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-11-01.
///
/// Other available API versions: 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01, 2025-07-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### create or update rule collection group draft
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var firewallPolicyRuleCollectionGroupDraft = new AzureNative.Network.FirewallPolicyRuleCollectionGroupDraft("firewallPolicyRuleCollectionGroupDraft", new()
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
/// 		_, err := network.NewFirewallPolicyRuleCollectionGroupDraft(ctx, "firewallPolicyRuleCollectionGroupDraft", &network.FirewallPolicyRuleCollectionGroupDraftArgs{
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
/// resource "azure-native_network_firewallpolicyrulecollectiongroupdraft" "firewallPolicyRuleCollectionGroupDraft" {
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
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroupDraft;
/// import com.pulumi.azurenative.network.FirewallPolicyRuleCollectionGroupDraftArgs;
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
///         var firewallPolicyRuleCollectionGroupDraft = new FirewallPolicyRuleCollectionGroupDraft("firewallPolicyRuleCollectionGroupDraft", FirewallPolicyRuleCollectionGroupDraftArgs.builder()
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
/// const firewallPolicyRuleCollectionGroupDraft = new azure_native.network.FirewallPolicyRuleCollectionGroupDraft("firewallPolicyRuleCollectionGroupDraft", {
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
/// firewall_policy_rule_collection_group_draft = azure_native.network.FirewallPolicyRuleCollectionGroupDraft("firewallPolicyRuleCollectionGroupDraft",
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
///   firewallPolicyRuleCollectionGroupDraft:
///     type: azure-native:network:FirewallPolicyRuleCollectionGroupDraft
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
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:FirewallPolicyRuleCollectionGroupDraft ruleCollectionGroup1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/firewallPolicies/{firewallPolicyName}/ruleCollectionGroups/{ruleCollectionGroupName}/ruleCollectionGroupDrafts/default
/// ```
class FirewallPolicyRuleCollectionGroupDraft extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  late final pulumi.Output<String?> name;
  /// Priority of the Firewall Policy Rule Collection Group resource.
  late final pulumi.Output<int?> priority;
  /// Group of Firewall Policy rule collections.
  late final pulumi.Output<List<dynamic>?> ruleCollections;
  /// A read-only string that represents the size of the FirewallPolicyRuleCollectionGroupProperties in MB. (ex 1.2MB)
  late final pulumi.Output<String> size;
  /// Rule Group type.
  late final pulumi.Output<String> type;

  /// Creates a new [FirewallPolicyRuleCollectionGroupDraft].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicyRuleCollectionGroupDraft]. {@macro pulumi_network_firewall_policy_rule_collection_group_draft_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicyRuleCollectionGroupDraft(
    String name, {
    FirewallPolicyRuleCollectionGroupDraftArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:FirewallPolicyRuleCollectionGroupDraft',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String?>('name');
    priority = registerOutput<int?>('priority');
    ruleCollections = registerOutput<List<dynamic>?>('ruleCollections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    size = registerOutput<String>('size');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [FirewallPolicyRuleCollectionGroupDraft] resource.
  FirewallPolicyRuleCollectionGroupDraft.reference(String urn)
    : super(
        'azure-native:network:FirewallPolicyRuleCollectionGroupDraft',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String?>('name');
    priority = registerOutput<int?>('priority');
    ruleCollections = registerOutput<List<dynamic>?>('ruleCollections', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<dynamic>(); });
    size = registerOutput<String>('size');
    type = registerOutput<String>('type');
  }
}
