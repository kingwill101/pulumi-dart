import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_args.dart';
import 'policy_managed_rules.dart';
import 'policy_policy_settings.dart';
import 'policy_state.dart';

/// Manages a Azure Web Application Firewall Policy instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-rg",
///     location: "West Europe",
/// });
/// const examplePolicy = new azure.waf.Policy("example", {
///     name: "example-wafpolicy",
///     resourceGroupName: example.name,
///     location: example.location,
///     customRules: [
///         {
///             name: "Rule1",
///             priority: 1,
///             ruleType: "MatchRule",
///             matchConditions: [{
///                 matchVariables: [{
///                     variableName: "RemoteAddr",
///                 }],
///                 operator: "IPMatch",
///                 negationCondition: false,
///                 matchValues: [
///                     "192.168.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///             }],
///             action: "Block",
///         },
///         {
///             name: "Rule2",
///             priority: 2,
///             ruleType: "MatchRule",
///             matchConditions: [
///                 {
///                     matchVariables: [{
///                         variableName: "RemoteAddr",
///                     }],
///                     operator: "IPMatch",
///                     negationCondition: false,
///                     matchValues: ["192.168.1.0/24"],
///                 },
///                 {
///                     matchVariables: [{
///                         variableName: "RequestHeaders",
///                         selector: "UserAgent",
///                     }],
///                     operator: "Contains",
///                     negationCondition: false,
///                     matchValues: ["Windows"],
///                 },
///             ],
///             action: "Block",
///         },
///     ],
///     policySettings: {
///         enabled: true,
///         mode: "Prevention",
///         requestBodyCheck: true,
///         fileUploadLimitInMb: 100,
///         maxRequestBodySizeInKb: 128,
///     },
///     managedRules: {
///         exclusions: [
///             {
///                 matchVariable: "RequestHeaderNames",
///                 selector: "x-company-secret-header",
///                 selectorMatchOperator: "Equals",
///             },
///             {
///                 matchVariable: "RequestCookieNames",
///                 selector: "too-tasty",
///                 selectorMatchOperator: "EndsWith",
///             },
///         ],
///         managedRuleSets: [{
///             type: "OWASP",
///             version: "3.2",
///             ruleGroupOverrides: [{
///                 ruleGroupName: "REQUEST-920-PROTOCOL-ENFORCEMENT",
///                 rules: [
///                     {
///                         id: "920300",
///                         enabled: true,
///                         action: "Log",
///                     },
///                     {
///                         id: "920440",
///                         enabled: true,
///                         action: "Block",
///                     },
///                 ],
///             }],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_policy = azure.waf.Policy("example",
///     name="example-wafpolicy",
///     resource_group_name=example.name,
///     location=example.location,
///     custom_rules=[
///         {
///             "name": "Rule1",
///             "priority": 1,
///             "rule_type": "MatchRule",
///             "match_conditions": [{
///                 "match_variables": [{
///                     "variable_name": "RemoteAddr",
///                 }],
///                 "operator": "IPMatch",
///                 "negation_condition": False,
///                 "match_values": [
///                     "192.168.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///             }],
///             "action": "Block",
///         },
///         {
///             "name": "Rule2",
///             "priority": 2,
///             "rule_type": "MatchRule",
///             "match_conditions": [
///                 {
///                     "match_variables": [{
///                         "variable_name": "RemoteAddr",
///                     }],
///                     "operator": "IPMatch",
///                     "negation_condition": False,
///                     "match_values": ["192.168.1.0/24"],
///                 },
///                 {
///                     "match_variables": [{
///                         "variable_name": "RequestHeaders",
///                         "selector": "UserAgent",
///                     }],
///                     "operator": "Contains",
///                     "negation_condition": False,
///                     "match_values": ["Windows"],
///                 },
///             ],
///             "action": "Block",
///         },
///     ],
///     policy_settings={
///         "enabled": True,
///         "mode": "Prevention",
///         "request_body_check": True,
///         "file_upload_limit_in_mb": 100,
///         "max_request_body_size_in_kb": 128,
///     },
///     managed_rules={
///         "exclusions": [
///             {
///                 "match_variable": "RequestHeaderNames",
///                 "selector": "x-company-secret-header",
///                 "selector_match_operator": "Equals",
///             },
///             {
///                 "match_variable": "RequestCookieNames",
///                 "selector": "too-tasty",
///                 "selector_match_operator": "EndsWith",
///             },
///         ],
///         "managed_rule_sets": [{
///             "type": "OWASP",
///             "version": "3.2",
///             "rule_group_overrides": [{
///                 "rule_group_name": "REQUEST-920-PROTOCOL-ENFORCEMENT",
///                 "rules": [
///                     {
///                         "id": "920300",
///                         "enabled": True,
///                         "action": "Log",
///                     },
///                     {
///                         "id": "920440",
///                         "enabled": True,
///                         "action": "Block",
///                     },
///                 ],
///             }],
///         }],
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
///         Name = "example-rg",
///         Location = "West Europe",
///     });
///
///     var examplePolicy = new Azure.Waf.Policy("example", new()
///     {
///         Name = "example-wafpolicy",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         CustomRules = new[]
///         {
///             new Azure.Waf.Inputs.PolicyCustomRuleArgs
///             {
///                 Name = "Rule1",
///                 Priority = 1,
///                 RuleType = "MatchRule",
///                 MatchConditions = new[]
///                 {
///                     new Azure.Waf.Inputs.PolicyCustomRuleMatchConditionArgs
///                     {
///                         MatchVariables = new[]
///                         {
///                             new Azure.Waf.Inputs.PolicyCustomRuleMatchConditionMatchVariableArgs
///                             {
///                                 VariableName = "RemoteAddr",
///                             },
///                         },
///                         Operator = "IPMatch",
///                         NegationCondition = false,
///                         MatchValues = new[]
///                         {
///                             "192.168.1.0/24",
///                             "10.0.0.0/24",
///                         },
///                     },
///                 },
///                 Action = "Block",
///             },
///             new Azure.Waf.Inputs.PolicyCustomRuleArgs
///             {
///                 Name = "Rule2",
///                 Priority = 2,
///                 RuleType = "MatchRule",
///                 MatchConditions = new[]
///                 {
///                     new Azure.Waf.Inputs.PolicyCustomRuleMatchConditionArgs
///                     {
///                         MatchVariables = new[]
///                         {
///                             new Azure.Waf.Inputs.PolicyCustomRuleMatchConditionMatchVariableArgs
///                             {
///                                 VariableName = "RemoteAddr",
///                             },
///                         },
///                         Operator = "IPMatch",
///                         NegationCondition = false,
///                         MatchValues = new[]
///                         {
///                             "192.168.1.0/24",
///                         },
///                     },
///                     new Azure.Waf.Inputs.PolicyCustomRuleMatchConditionArgs
///                     {
///                         MatchVariables = new[]
///                         {
///                             new Azure.Waf.Inputs.PolicyCustomRuleMatchConditionMatchVariableArgs
///                             {
///                                 VariableName = "RequestHeaders",
///                                 Selector = "UserAgent",
///                             },
///                         },
///                         Operator = "Contains",
///                         NegationCondition = false,
///                         MatchValues = new[]
///                         {
///                             "Windows",
///                         },
///                     },
///                 },
///                 Action = "Block",
///             },
///         },
///         PolicySettings = new Azure.Waf.Inputs.PolicyPolicySettingsArgs
///         {
///             Enabled = true,
///             Mode = "Prevention",
///             RequestBodyCheck = true,
///             FileUploadLimitInMb = 100,
///             MaxRequestBodySizeInKb = 128,
///         },
///         ManagedRules = new Azure.Waf.Inputs.PolicyManagedRulesArgs
///         {
///             Exclusions = new[]
///             {
///                 new Azure.Waf.Inputs.PolicyManagedRulesExclusionArgs
///                 {
///                     MatchVariable = "RequestHeaderNames",
///                     Selector = "x-company-secret-header",
///                     SelectorMatchOperator = "Equals",
///                 },
///                 new Azure.Waf.Inputs.PolicyManagedRulesExclusionArgs
///                 {
///                     MatchVariable = "RequestCookieNames",
///                     Selector = "too-tasty",
///                     SelectorMatchOperator = "EndsWith",
///                 },
///             },
///             ManagedRuleSets = new[]
///             {
///                 new Azure.Waf.Inputs.PolicyManagedRulesManagedRuleSetArgs
///                 {
///                     Type = "OWASP",
///                     Version = "3.2",
///                     RuleGroupOverrides = new[]
///                     {
///                         new Azure.Waf.Inputs.PolicyManagedRulesManagedRuleSetRuleGroupOverrideArgs
///                         {
///                             RuleGroupName = "REQUEST-920-PROTOCOL-ENFORCEMENT",
///                             Rules = new[]
///                             {
///                                 new Azure.Waf.Inputs.PolicyManagedRulesManagedRuleSetRuleGroupOverrideRuleArgs
///                                 {
///                                     Id = "920300",
///                                     Enabled = true,
///                                     Action = "Log",
///                                 },
///                                 new Azure.Waf.Inputs.PolicyManagedRulesManagedRuleSetRuleGroupOverrideRuleArgs
///                                 {
///                                     Id = "920440",
///                                     Enabled = true,
///                                     Action = "Block",
///                                 },
///                             },
///                         },
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/waf"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = waf.NewPolicy(ctx, "example", &waf.PolicyArgs{
/// 			Name:              pulumi.String("example-wafpolicy"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			CustomRules: waf.PolicyCustomRuleArray{
/// 				&waf.PolicyCustomRuleArgs{
/// 					Name:     pulumi.String("Rule1"),
/// 					Priority: pulumi.Int(1),
/// 					RuleType: pulumi.String("MatchRule"),
/// 					MatchConditions: waf.PolicyCustomRuleMatchConditionArray{
/// 						&waf.PolicyCustomRuleMatchConditionArgs{
/// 							MatchVariables: waf.PolicyCustomRuleMatchConditionMatchVariableArray{
/// 								&waf.PolicyCustomRuleMatchConditionMatchVariableArgs{
/// 									VariableName: pulumi.String("RemoteAddr"),
/// 								},
/// 							},
/// 							Operator:          pulumi.String("IPMatch"),
/// 							NegationCondition: pulumi.Bool(false),
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("192.168.1.0/24"),
/// 								pulumi.String("10.0.0.0/24"),
/// 							},
/// 						},
/// 					},
/// 					Action: pulumi.String("Block"),
/// 				},
/// 				&waf.PolicyCustomRuleArgs{
/// 					Name:     pulumi.String("Rule2"),
/// 					Priority: pulumi.Int(2),
/// 					RuleType: pulumi.String("MatchRule"),
/// 					MatchConditions: waf.PolicyCustomRuleMatchConditionArray{
/// 						&waf.PolicyCustomRuleMatchConditionArgs{
/// 							MatchVariables: waf.PolicyCustomRuleMatchConditionMatchVariableArray{
/// 								&waf.PolicyCustomRuleMatchConditionMatchVariableArgs{
/// 									VariableName: pulumi.String("RemoteAddr"),
/// 								},
/// 							},
/// 							Operator:          pulumi.String("IPMatch"),
/// 							NegationCondition: pulumi.Bool(false),
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("192.168.1.0/24"),
/// 							},
/// 						},
/// 						&waf.PolicyCustomRuleMatchConditionArgs{
/// 							MatchVariables: waf.PolicyCustomRuleMatchConditionMatchVariableArray{
/// 								&waf.PolicyCustomRuleMatchConditionMatchVariableArgs{
/// 									VariableName: pulumi.String("RequestHeaders"),
/// 									Selector:     pulumi.String("UserAgent"),
/// 								},
/// 							},
/// 							Operator:          pulumi.String("Contains"),
/// 							NegationCondition: pulumi.Bool(false),
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("Windows"),
/// 							},
/// 						},
/// 					},
/// 					Action: pulumi.String("Block"),
/// 				},
/// 			},
/// 			PolicySettings: &waf.PolicyPolicySettingsArgs{
/// 				Enabled:                pulumi.Bool(true),
/// 				Mode:                   pulumi.String("Prevention"),
/// 				RequestBodyCheck:       pulumi.Bool(true),
/// 				FileUploadLimitInMb:    pulumi.Int(100),
/// 				MaxRequestBodySizeInKb: pulumi.Int(128),
/// 			},
/// 			ManagedRules: &waf.PolicyManagedRulesArgs{
/// 				Exclusions: waf.PolicyManagedRulesExclusionArray{
/// 					&waf.PolicyManagedRulesExclusionArgs{
/// 						MatchVariable:         pulumi.String("RequestHeaderNames"),
/// 						Selector:              pulumi.String("x-company-secret-header"),
/// 						SelectorMatchOperator: pulumi.String("Equals"),
/// 					},
/// 					&waf.PolicyManagedRulesExclusionArgs{
/// 						MatchVariable:         pulumi.String("RequestCookieNames"),
/// 						Selector:              pulumi.String("too-tasty"),
/// 						SelectorMatchOperator: pulumi.String("EndsWith"),
/// 					},
/// 				},
/// 				ManagedRuleSets: waf.PolicyManagedRulesManagedRuleSetArray{
/// 					&waf.PolicyManagedRulesManagedRuleSetArgs{
/// 						Type:    pulumi.String("OWASP"),
/// 						Version: pulumi.String("3.2"),
/// 						RuleGroupOverrides: waf.PolicyManagedRulesManagedRuleSetRuleGroupOverrideArray{
/// 							&waf.PolicyManagedRulesManagedRuleSetRuleGroupOverrideArgs{
/// 								RuleGroupName: pulumi.String("REQUEST-920-PROTOCOL-ENFORCEMENT"),
/// 								Rules: waf.PolicyManagedRulesManagedRuleSetRuleGroupOverrideRuleArray{
/// 									&waf.PolicyManagedRulesManagedRuleSetRuleGroupOverrideRuleArgs{
/// 										Id:      pulumi.String("920300"),
/// 										Enabled: pulumi.Bool(true),
/// 										Action:  pulumi.String("Log"),
/// 									},
/// 									&waf.PolicyManagedRulesManagedRuleSetRuleGroupOverrideRuleArgs{
/// 										Id:      pulumi.String("920440"),
/// 										Enabled: pulumi.Bool(true),
/// 										Action:  pulumi.String("Block"),
/// 									},
/// 								},
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
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.waf.Policy;
/// import com.pulumi.azure.waf.PolicyArgs;
/// import com.pulumi.azure.waf.inputs.PolicyCustomRuleArgs;
/// import com.pulumi.azure.waf.inputs.PolicyPolicySettingsArgs;
/// import com.pulumi.azure.waf.inputs.PolicyManagedRulesArgs;
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
///             .name("example-rg")
///             .location("West Europe")
///             .build());
///
///         var examplePolicy = new Policy("examplePolicy", PolicyArgs.builder()
///             .name("example-wafpolicy")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .customRules(
///                 PolicyCustomRuleArgs.builder()
///                     .name("Rule1")
///                     .priority(1)
///                     .ruleType("MatchRule")
///                     .matchConditions(PolicyCustomRuleMatchConditionArgs.builder()
///                         .matchVariables(PolicyCustomRuleMatchConditionMatchVariableArgs.builder()
///                             .variableName("RemoteAddr")
///                             .build())
///                         .operator("IPMatch")
///                         .negationCondition(false)
///                         .matchValues(
///                             "192.168.1.0/24",
///                             "10.0.0.0/24")
///                         .build())
///                     .action("Block")
///                     .build(),
///                 PolicyCustomRuleArgs.builder()
///                     .name("Rule2")
///                     .priority(2)
///                     .ruleType("MatchRule")
///                     .matchConditions(
///                         PolicyCustomRuleMatchConditionArgs.builder()
///                             .matchVariables(PolicyCustomRuleMatchConditionMatchVariableArgs.builder()
///                                 .variableName("RemoteAddr")
///                                 .build())
///                             .operator("IPMatch")
///                             .negationCondition(false)
///                             .matchValues("192.168.1.0/24")
///                             .build(),
///                         PolicyCustomRuleMatchConditionArgs.builder()
///                             .matchVariables(PolicyCustomRuleMatchConditionMatchVariableArgs.builder()
///                                 .variableName("RequestHeaders")
///                                 .selector("UserAgent")
///                                 .build())
///                             .operator("Contains")
///                             .negationCondition(false)
///                             .matchValues("Windows")
///                             .build())
///                     .action("Block")
///                     .build())
///             .policySettings(PolicyPolicySettingsArgs.builder()
///                 .enabled(true)
///                 .mode("Prevention")
///                 .requestBodyCheck(true)
///                 .fileUploadLimitInMb(100)
///                 .maxRequestBodySizeInKb(128)
///                 .build())
///             .managedRules(PolicyManagedRulesArgs.builder()
///                 .exclusions(
///                     PolicyManagedRulesExclusionArgs.builder()
///                         .matchVariable("RequestHeaderNames")
///                         .selector("x-company-secret-header")
///                         .selectorMatchOperator("Equals")
///                         .build(),
///                     PolicyManagedRulesExclusionArgs.builder()
///                         .matchVariable("RequestCookieNames")
///                         .selector("too-tasty")
///                         .selectorMatchOperator("EndsWith")
///                         .build())
///                 .managedRuleSets(PolicyManagedRulesManagedRuleSetArgs.builder()
///                     .type("OWASP")
///                     .version("3.2")
///                     .ruleGroupOverrides(PolicyManagedRulesManagedRuleSetRuleGroupOverrideArgs.builder()
///                         .ruleGroupName("REQUEST-920-PROTOCOL-ENFORCEMENT")
///                         .rules(
///                             PolicyManagedRulesManagedRuleSetRuleGroupOverrideRuleArgs.builder()
///                                 .id("920300")
///                                 .enabled(true)
///                                 .action("Log")
///                                 .build(),
///                             PolicyManagedRulesManagedRuleSetRuleGroupOverrideRuleArgs.builder()
///                                 .id("920440")
///                                 .enabled(true)
///                                 .action("Block")
///                                 .build())
///                         .build())
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
///       name: example-rg
///       location: West Europe
///   examplePolicy:
///     type: azure:waf:Policy
///     name: example
///     properties:
///       name: example-wafpolicy
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       customRules:
///         - name: Rule1
///           priority: 1
///           ruleType: MatchRule
///           matchConditions:
///             - matchVariables:
///                 - variableName: RemoteAddr
///               operator: IPMatch
///               negationCondition: false
///               matchValues:
///                 - 192.168.1.0/24
///                 - 10.0.0.0/24
///           action: Block
///         - name: Rule2
///           priority: 2
///           ruleType: MatchRule
///           matchConditions:
///             - matchVariables:
///                 - variableName: RemoteAddr
///               operator: IPMatch
///               negationCondition: false
///               matchValues:
///                 - 192.168.1.0/24
///             - matchVariables:
///                 - variableName: RequestHeaders
///                   selector: UserAgent
///               operator: Contains
///               negationCondition: false
///               matchValues:
///                 - Windows
///           action: Block
///       policySettings:
///         enabled: true
///         mode: Prevention
///         requestBodyCheck: true
///         fileUploadLimitInMb: 100
///         maxRequestBodySizeInKb: 128
///       managedRules:
///         exclusions:
///           - matchVariable: RequestHeaderNames
///             selector: x-company-secret-header
///             selectorMatchOperator: Equals
///           - matchVariable: RequestCookieNames
///             selector: too-tasty
///             selectorMatchOperator: EndsWith
///         managedRuleSets:
///           - type: OWASP
///             version: '3.2'
///             ruleGroupOverrides:
///               - ruleGroupName: REQUEST-920-PROTOCOL-ENFORCEMENT
///                 rules:
///                   - id: '920300'
///                     enabled: true
///                     action: Log
///                   - id: '920440'
///                     enabled: true
///                     action: Block
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
/// Web Application Firewall Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:waf/policy:Policy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/applicationGatewayWebApplicationFirewallPolicies/example-wafpolicy
/// ```
class Policy extends pulumi.CustomResource {
  /// One or more `custom_rules` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> customRules;

  /// A list of HTTP Listener IDs from an `azure.network.ApplicationGateway`.
  late final pulumi.Output<List<String>> httpListenerIds;

  /// Resource location. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;

  /// A `managed_rules` blocks as defined below.
  late final pulumi.Output<PolicyManagedRules> managedRules;

  /// The name of the policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;

  /// A list of URL Path Map Path Rule IDs from an `azure.network.ApplicationGateway`.
  late final pulumi.Output<List<String>> pathBasedRuleIds;

  /// A `policy_settings` block as defined below.
  late final pulumi.Output<PolicyPolicySettings?> policySettings;

  /// The name of the resource group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// A mapping of tags to assign to the Web Application Firewall Policy.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Policy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Policy]. {@macro pulumi_waf_policy_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Policy(String name, {PolicyArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'azure:waf/policy:Policy',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    customRules = registerOutput<List<Map<String, dynamic>>?>('customRules');
    httpListenerIds = registerOutput<List<String>>('httpListenerIds');
    location = registerOutput<String>('location');
    managedRules = registerOutput<PolicyManagedRules>('managedRules');
    this.name = registerOutput<String>('name');
    pathBasedRuleIds = registerOutput<List<String>>('pathBasedRuleIds');
    policySettings = registerOutput<PolicyPolicySettings?>('policySettings');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [Policy] resource's state with the given [name] and [id].
  static Policy get(
    String name,
    pulumi.Input<String> id, {
    PolicyState? state,
  }) {
    return Policy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Policy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure:waf/policy:Policy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    customRules = registerOutput<List<Map<String, dynamic>>?>('customRules');
    httpListenerIds = registerOutput<List<String>>('httpListenerIds');
    location = registerOutput<String>('location');
    managedRules = registerOutput<PolicyManagedRules>('managedRules');
    this.name = registerOutput<String>('name');
    pathBasedRuleIds = registerOutput<List<String>>('pathBasedRuleIds');
    policySettings = registerOutput<PolicyPolicySettings?>('policySettings');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
