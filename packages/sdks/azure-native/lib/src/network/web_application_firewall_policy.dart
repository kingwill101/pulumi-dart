import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_for_containers_reference_definition_response.dart';
import 'application_gateway_response.dart';
import 'managed_rules_definition_response.dart';
import 'policy_settings_response.dart';
import 'sub_resource_response.dart';
import 'web_application_firewall_custom_rule_response.dart';
import 'web_application_firewall_policy_args.dart';

/// Defines web application firewall policy.
///
/// Uses Azure REST API version 2024-05-01. In version 2.x of the Azure Native provider, it used API version 2023-02-01.
///
/// Other available API versions: 2018-12-01, 2019-02-01, 2019-04-01, 2019-06-01, 2019-07-01, 2019-08-01, 2019-09-01, 2019-11-01, 2019-12-01, 2020-03-01, 2020-04-01, 2020-05-01, 2020-06-01, 2020-07-01, 2020-08-01, 2020-11-01, 2021-02-01, 2021-03-01, 2021-05-01, 2021-08-01, 2022-01-01, 2022-05-01, 2022-07-01, 2022-09-01, 2022-11-01, 2023-02-01, 2023-04-01, 2023-05-01, 2023-06-01, 2023-09-01, 2023-11-01, 2024-01-01, 2024-03-01, 2024-07-01, 2024-10-01, 2025-01-01, 2025-03-01, 2025-05-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native network [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates or updates a WAF policy within a resource group
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webApplicationFirewallPolicy = new AzureNative.Network.WebApplicationFirewallPolicy("webApplicationFirewallPolicy", new()
///     {
///         CustomRules = new[]
///         {
///             new AzureNative.Network.Inputs.WebApplicationFirewallCustomRuleArgs
///             {
///                 Action = AzureNative.Network.WebApplicationFirewallAction.Block,
///                 MatchConditions = new[]
///                 {
///                     new AzureNative.Network.Inputs.MatchConditionArgs
///                     {
///                         MatchValues = new[]
///                         {
///                             "192.168.1.0/24",
///                             "10.0.0.0/24",
///                         },
///                         MatchVariables = new[]
///                         {
///                             new AzureNative.Network.Inputs.MatchVariableArgs
///                             {
///                                 VariableName = AzureNative.Network.WebApplicationFirewallMatchVariable.RemoteAddr,
///                             },
///                         },
///                         Operator = AzureNative.Network.WebApplicationFirewallOperator.IPMatch,
///                     },
///                 },
///                 Name = "Rule1",
///                 Priority = 1,
///                 RuleType = AzureNative.Network.WebApplicationFirewallRuleType.MatchRule,
///             },
///             new AzureNative.Network.Inputs.WebApplicationFirewallCustomRuleArgs
///             {
///                 Action = AzureNative.Network.WebApplicationFirewallAction.Block,
///                 MatchConditions = new[]
///                 {
///                     new AzureNative.Network.Inputs.MatchConditionArgs
///                     {
///                         MatchValues = new[]
///                         {
///                             "192.168.1.0/24",
///                         },
///                         MatchVariables = new[]
///                         {
///                             new AzureNative.Network.Inputs.MatchVariableArgs
///                             {
///                                 VariableName = AzureNative.Network.WebApplicationFirewallMatchVariable.RemoteAddr,
///                             },
///                         },
///                         Operator = AzureNative.Network.WebApplicationFirewallOperator.IPMatch,
///                     },
///                     new AzureNative.Network.Inputs.MatchConditionArgs
///                     {
///                         MatchValues = new[]
///                         {
///                             "Windows",
///                         },
///                         MatchVariables = new[]
///                         {
///                             new AzureNative.Network.Inputs.MatchVariableArgs
///                             {
///                                 Selector = "UserAgent",
///                                 VariableName = AzureNative.Network.WebApplicationFirewallMatchVariable.RequestHeaders,
///                             },
///                         },
///                         Operator = AzureNative.Network.WebApplicationFirewallOperator.Contains,
///                     },
///                 },
///                 Name = "Rule2",
///                 Priority = 2,
///                 RuleType = AzureNative.Network.WebApplicationFirewallRuleType.MatchRule,
///             },
///             new AzureNative.Network.Inputs.WebApplicationFirewallCustomRuleArgs
///             {
///                 Action = AzureNative.Network.WebApplicationFirewallAction.Block,
///                 GroupByUserSession = new[]
///                 {
///                     new AzureNative.Network.Inputs.GroupByUserSessionArgs
///                     {
///                         GroupByVariables = new[]
///                         {
///                             new AzureNative.Network.Inputs.GroupByVariableArgs
///                             {
///                                 VariableName = AzureNative.Network.ApplicationGatewayFirewallUserSessionVariable.ClientAddr,
///                             },
///                         },
///                     },
///                 },
///                 MatchConditions = new[]
///                 {
///                     new AzureNative.Network.Inputs.MatchConditionArgs
///                     {
///                         MatchValues = new[]
///                         {
///                             "192.168.1.0/24",
///                             "10.0.0.0/24",
///                         },
///                         MatchVariables = new[]
///                         {
///                             new AzureNative.Network.Inputs.MatchVariableArgs
///                             {
///                                 VariableName = AzureNative.Network.WebApplicationFirewallMatchVariable.RemoteAddr,
///                             },
///                         },
///                         NegationConditon = true,
///                         Operator = AzureNative.Network.WebApplicationFirewallOperator.IPMatch,
///                     },
///                 },
///                 Name = "RateLimitRule3",
///                 Priority = 3,
///                 RateLimitDuration = AzureNative.Network.ApplicationGatewayFirewallRateLimitDuration.OneMin,
///                 RateLimitThreshold = 10,
///                 RuleType = AzureNative.Network.WebApplicationFirewallRuleType.RateLimitRule,
///             },
///             new AzureNative.Network.Inputs.WebApplicationFirewallCustomRuleArgs
///             {
///                 Action = AzureNative.Network.WebApplicationFirewallAction.JSChallenge,
///                 MatchConditions = new[]
///                 {
///                     new AzureNative.Network.Inputs.MatchConditionArgs
///                     {
///                         MatchValues = new[]
///                         {
///                             "192.168.1.0/24",
///                         },
///                         MatchVariables = new[]
///                         {
///                             new AzureNative.Network.Inputs.MatchVariableArgs
///                             {
///                                 VariableName = AzureNative.Network.WebApplicationFirewallMatchVariable.RemoteAddr,
///                             },
///                         },
///                         Operator = AzureNative.Network.WebApplicationFirewallOperator.IPMatch,
///                     },
///                     new AzureNative.Network.Inputs.MatchConditionArgs
///                     {
///                         MatchValues = new[]
///                         {
///                             "Bot",
///                         },
///                         MatchVariables = new[]
///                         {
///                             new AzureNative.Network.Inputs.MatchVariableArgs
///                             {
///                                 Selector = "UserAgent",
///                                 VariableName = AzureNative.Network.WebApplicationFirewallMatchVariable.RequestHeaders,
///                             },
///                         },
///                         Operator = AzureNative.Network.WebApplicationFirewallOperator.Contains,
///                     },
///                 },
///                 Name = "Rule4",
///                 Priority = 4,
///                 RuleType = AzureNative.Network.WebApplicationFirewallRuleType.MatchRule,
///             },
///         },
///         Location = "WestUs",
///         ManagedRules = new AzureNative.Network.Inputs.ManagedRulesDefinitionArgs
///         {
///             Exceptions = new[]
///             {
///                 new AzureNative.Network.Inputs.ExceptionEntryArgs
///                 {
///                     ExceptionManagedRuleSets = new[]
///                     {
///                         new AzureNative.Network.Inputs.ExclusionManagedRuleSetArgs
///                         {
///                             RuleSetType = "OWASP",
///                             RuleSetVersion = "3.2",
///                         },
///                     },
///                     MatchVariable = AzureNative.Network.ExceptionEntryMatchVariable.RequestURI,
///                     ValueMatchOperator = AzureNative.Network.ExceptionEntryValueMatchOperator.Contains,
///                     Values = new[]
///                     {
///                         "health",
///                         "account/images",
///                         "default.aspx",
///                     },
///                 },
///                 new AzureNative.Network.Inputs.ExceptionEntryArgs
///                 {
///                     ExceptionManagedRuleSets = new[]
///                     {
///                         new AzureNative.Network.Inputs.ExclusionManagedRuleSetArgs
///                         {
///                             RuleGroups = new[]
///                             {
///                                 new AzureNative.Network.Inputs.ExclusionManagedRuleGroupArgs
///                                 {
///                                     RuleGroupName = "REQUEST-932-APPLICATION-ATTACK-RCE",
///                                 },
///                             },
///                             RuleSetType = "OWASP",
///                             RuleSetVersion = "3.2",
///                         },
///                     },
///                     MatchVariable = AzureNative.Network.ExceptionEntryMatchVariable.RequestHeader,
///                     Selector = "User-Agent",
///                     SelectorMatchOperator = AzureNative.Network.ExceptionEntrySelectorMatchOperator.StartsWith,
///                     ValueMatchOperator = AzureNative.Network.ExceptionEntryValueMatchOperator.Contains,
///                     Values = new[]
///                     {
///                         "Mozilla/5.0",
///                         "Chrome/122.0.0.0",
///                     },
///                 },
///                 new AzureNative.Network.Inputs.ExceptionEntryArgs
///                 {
///                     ExceptionManagedRuleSets = new[]
///                     {
///                         new AzureNative.Network.Inputs.ExclusionManagedRuleSetArgs
///                         {
///                             RuleGroups = new[]
///                             {
///                                 new AzureNative.Network.Inputs.ExclusionManagedRuleGroupArgs
///                                 {
///                                     RuleGroupName = "BadBots",
///                                     Rules = new[]
///                                     {
///                                         new AzureNative.Network.Inputs.ExclusionManagedRuleArgs
///                                         {
///                                             RuleId = "100100",
///                                         },
///                                     },
///                                 },
///                             },
///                             RuleSetType = "Microsoft_BotManagerRuleSet",
///                             RuleSetVersion = "1.0",
///                         },
///                     },
///                     MatchVariable = AzureNative.Network.ExceptionEntryMatchVariable.RemoteAddr,
///                     ValueMatchOperator = AzureNative.Network.ExceptionEntryValueMatchOperator.IPMatch,
///                     Values = new[]
///                     {
///                         "1.2.3.4",
///                         "10.0.0.1/6",
///                     },
///                 },
///             },
///             Exclusions = new[]
///             {
///                 new AzureNative.Network.Inputs.OwaspCrsExclusionEntryArgs
///                 {
///                     ExclusionManagedRuleSets = new[]
///                     {
///                         new AzureNative.Network.Inputs.ExclusionManagedRuleSetArgs
///                         {
///                             RuleGroups = new[]
///                             {
///                                 new AzureNative.Network.Inputs.ExclusionManagedRuleGroupArgs
///                                 {
///                                     RuleGroupName = "REQUEST-930-APPLICATION-ATTACK-LFI",
///                                     Rules = new[]
///                                     {
///                                         new AzureNative.Network.Inputs.ExclusionManagedRuleArgs
///                                         {
///                                             RuleId = "930120",
///                                         },
///                                     },
///                                 },
///                                 new AzureNative.Network.Inputs.ExclusionManagedRuleGroupArgs
///                                 {
///                                     RuleGroupName = "REQUEST-932-APPLICATION-ATTACK-RCE",
///                                 },
///                             },
///                             RuleSetType = "OWASP",
///                             RuleSetVersion = "3.2",
///                         },
///                     },
///                     MatchVariable = AzureNative.Network.OwaspCrsExclusionEntryMatchVariable.RequestArgNames,
///                     Selector = "hello",
///                     SelectorMatchOperator = AzureNative.Network.OwaspCrsExclusionEntrySelectorMatchOperator.StartsWith,
///                 },
///                 new AzureNative.Network.Inputs.OwaspCrsExclusionEntryArgs
///                 {
///                     ExclusionManagedRuleSets = new[]
///                     {
///                         new AzureNative.Network.Inputs.ExclusionManagedRuleSetArgs
///                         {
///                             RuleGroups = new() { },
///                             RuleSetType = "OWASP",
///                             RuleSetVersion = "3.1",
///                         },
///                     },
///                     MatchVariable = AzureNative.Network.OwaspCrsExclusionEntryMatchVariable.RequestArgNames,
///                     Selector = "hello",
///                     SelectorMatchOperator = AzureNative.Network.OwaspCrsExclusionEntrySelectorMatchOperator.EndsWith,
///                 },
///                 new AzureNative.Network.Inputs.OwaspCrsExclusionEntryArgs
///                 {
///                     MatchVariable = AzureNative.Network.OwaspCrsExclusionEntryMatchVariable.RequestArgNames,
///                     Selector = "test",
///                     SelectorMatchOperator = AzureNative.Network.OwaspCrsExclusionEntrySelectorMatchOperator.StartsWith,
///                 },
///                 new AzureNative.Network.Inputs.OwaspCrsExclusionEntryArgs
///                 {
///                     MatchVariable = AzureNative.Network.OwaspCrsExclusionEntryMatchVariable.RequestArgValues,
///                     Selector = "test",
///                     SelectorMatchOperator = AzureNative.Network.OwaspCrsExclusionEntrySelectorMatchOperator.StartsWith,
///                 },
///             },
///             ManagedRuleSets = new[]
///             {
///                 new AzureNative.Network.Inputs.ManagedRuleSetArgs
///                 {
///                     RuleGroupOverrides = new[]
///                     {
///                         new AzureNative.Network.Inputs.ManagedRuleGroupOverrideArgs
///                         {
///                             RuleGroupName = "REQUEST-931-APPLICATION-ATTACK-RFI",
///                             Rules = new[]
///                             {
///                                 new AzureNative.Network.Inputs.ManagedRuleOverrideArgs
///                                 {
///                                     Action = AzureNative.Network.ActionType.Log,
///                                     RuleId = "931120",
///                                     State = AzureNative.Network.ManagedRuleEnabledState.Enabled,
///                                 },
///                                 new AzureNative.Network.Inputs.ManagedRuleOverrideArgs
///                                 {
///                                     Action = AzureNative.Network.ActionType.AnomalyScoring,
///                                     RuleId = "931130",
///                                     State = AzureNative.Network.ManagedRuleEnabledState.Disabled,
///                                 },
///                             },
///                         },
///                     },
///                     RuleSetType = "OWASP",
///                     RuleSetVersion = "3.2",
///                 },
///                 new AzureNative.Network.Inputs.ManagedRuleSetArgs
///                 {
///                     RuleGroupOverrides = new[]
///                     {
///                         new AzureNative.Network.Inputs.ManagedRuleGroupOverrideArgs
///                         {
///                             RuleGroupName = "UnknownBots",
///                             Rules = new[]
///                             {
///                                 new AzureNative.Network.Inputs.ManagedRuleOverrideArgs
///                                 {
///                                     Action = AzureNative.Network.ActionType.JSChallenge,
///                                     RuleId = "300700",
///                                     State = AzureNative.Network.ManagedRuleEnabledState.Enabled,
///                                 },
///                             },
///                         },
///                     },
///                     RuleSetType = "Microsoft_BotManagerRuleSet",
///                     RuleSetVersion = "1.0",
///                 },
///                 new AzureNative.Network.Inputs.ManagedRuleSetArgs
///                 {
///                     RuleGroupOverrides = new[]
///                     {
///                         new AzureNative.Network.Inputs.ManagedRuleGroupOverrideArgs
///                         {
///                             RuleGroupName = "ExcessiveRequests",
///                             Rules = new[]
///                             {
///                                 new AzureNative.Network.Inputs.ManagedRuleOverrideArgs
///                                 {
///                                     Action = AzureNative.Network.ActionType.Block,
///                                     RuleId = "500100",
///                                     Sensitivity = AzureNative.Network.SensitivityType.High,
///                                     State = AzureNative.Network.ManagedRuleEnabledState.Enabled,
///                                 },
///                             },
///                         },
///                     },
///                     RuleSetType = "Microsoft_HTTPDDoSRuleSet",
///                     RuleSetVersion = "1.0",
///                 },
///             },
///         },
///         PolicyName = "Policy1",
///         PolicySettings = new AzureNative.Network.Inputs.PolicySettingsArgs
///         {
///             JsChallengeCookieExpirationInMins = 100,
///             LogScrubbing = new AzureNative.Network.Inputs.PolicySettingsLogScrubbingArgs
///             {
///                 ScrubbingRules = new[]
///                 {
///                     new AzureNative.Network.Inputs.WebApplicationFirewallScrubbingRulesArgs
///                     {
///                         MatchVariable = AzureNative.Network.ScrubbingRuleEntryMatchVariable.RequestArgNames,
///                         Selector = "test",
///                         SelectorMatchOperator = AzureNative.Network.ScrubbingRuleEntryMatchOperator.EqualsValue,
///                         State = AzureNative.Network.ScrubbingRuleEntryState.Enabled,
///                     },
///                     new AzureNative.Network.Inputs.WebApplicationFirewallScrubbingRulesArgs
///                     {
///                         MatchVariable = AzureNative.Network.ScrubbingRuleEntryMatchVariable.RequestIPAddress,
///                         SelectorMatchOperator = AzureNative.Network.ScrubbingRuleEntryMatchOperator.EqualsAny,
///                         State = AzureNative.Network.ScrubbingRuleEntryState.Enabled,
///                     },
///                 },
///                 State = AzureNative.Network.WebApplicationFirewallScrubbingState.Enabled,
///             },
///         },
///         ResourceGroupName = "rg1",
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
/// 		_, err := network.NewWebApplicationFirewallPolicy(ctx, "webApplicationFirewallPolicy", &network.WebApplicationFirewallPolicyArgs{
/// 			CustomRules: network.WebApplicationFirewallCustomRuleArray{
/// 				&network.WebApplicationFirewallCustomRuleArgs{
/// 					Action: pulumi.String(network.WebApplicationFirewallActionBlock),
/// 					MatchConditions: network.MatchConditionArray{
/// 						&network.MatchConditionArgs{
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("192.168.1.0/24"),
/// 								pulumi.String("10.0.0.0/24"),
/// 							},
/// 							MatchVariables: network.MatchVariableArray{
/// 								&network.MatchVariableArgs{
/// 									VariableName: pulumi.String(network.WebApplicationFirewallMatchVariableRemoteAddr),
/// 								},
/// 							},
/// 							Operator: pulumi.String(network.WebApplicationFirewallOperatorIPMatch),
/// 						},
/// 					},
/// 					Name:     pulumi.String("Rule1"),
/// 					Priority: pulumi.Int(1),
/// 					RuleType: pulumi.String(network.WebApplicationFirewallRuleTypeMatchRule),
/// 				},
/// 				&network.WebApplicationFirewallCustomRuleArgs{
/// 					Action: pulumi.String(network.WebApplicationFirewallActionBlock),
/// 					MatchConditions: network.MatchConditionArray{
/// 						&network.MatchConditionArgs{
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("192.168.1.0/24"),
/// 							},
/// 							MatchVariables: network.MatchVariableArray{
/// 								&network.MatchVariableArgs{
/// 									VariableName: pulumi.String(network.WebApplicationFirewallMatchVariableRemoteAddr),
/// 								},
/// 							},
/// 							Operator: pulumi.String(network.WebApplicationFirewallOperatorIPMatch),
/// 						},
/// 						&network.MatchConditionArgs{
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("Windows"),
/// 							},
/// 							MatchVariables: network.MatchVariableArray{
/// 								&network.MatchVariableArgs{
/// 									Selector:     pulumi.String("UserAgent"),
/// 									VariableName: pulumi.String(network.WebApplicationFirewallMatchVariableRequestHeaders),
/// 								},
/// 							},
/// 							Operator: pulumi.String(network.WebApplicationFirewallOperatorContains),
/// 						},
/// 					},
/// 					Name:     pulumi.String("Rule2"),
/// 					Priority: pulumi.Int(2),
/// 					RuleType: pulumi.String(network.WebApplicationFirewallRuleTypeMatchRule),
/// 				},
/// 				&network.WebApplicationFirewallCustomRuleArgs{
/// 					Action: pulumi.String(network.WebApplicationFirewallActionBlock),
/// 					GroupByUserSession: network.GroupByUserSessionArray{
/// 						&network.GroupByUserSessionArgs{
/// 							GroupByVariables: network.GroupByVariableArray{
/// 								&network.GroupByVariableArgs{
/// 									VariableName: pulumi.String(network.ApplicationGatewayFirewallUserSessionVariableClientAddr),
/// 								},
/// 							},
/// 						},
/// 					},
/// 					MatchConditions: network.MatchConditionArray{
/// 						&network.MatchConditionArgs{
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("192.168.1.0/24"),
/// 								pulumi.String("10.0.0.0/24"),
/// 							},
/// 							MatchVariables: network.MatchVariableArray{
/// 								&network.MatchVariableArgs{
/// 									VariableName: pulumi.String(network.WebApplicationFirewallMatchVariableRemoteAddr),
/// 								},
/// 							},
/// 							NegationConditon: pulumi.Bool(true),
/// 							Operator:         pulumi.String(network.WebApplicationFirewallOperatorIPMatch),
/// 						},
/// 					},
/// 					Name:               pulumi.String("RateLimitRule3"),
/// 					Priority:           pulumi.Int(3),
/// 					RateLimitDuration:  pulumi.String(network.ApplicationGatewayFirewallRateLimitDurationOneMin),
/// 					RateLimitThreshold: pulumi.Int(10),
/// 					RuleType:           pulumi.String(network.WebApplicationFirewallRuleTypeRateLimitRule),
/// 				},
/// 				&network.WebApplicationFirewallCustomRuleArgs{
/// 					Action: pulumi.String(network.WebApplicationFirewallActionJSChallenge),
/// 					MatchConditions: network.MatchConditionArray{
/// 						&network.MatchConditionArgs{
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("192.168.1.0/24"),
/// 							},
/// 							MatchVariables: network.MatchVariableArray{
/// 								&network.MatchVariableArgs{
/// 									VariableName: pulumi.String(network.WebApplicationFirewallMatchVariableRemoteAddr),
/// 								},
/// 							},
/// 							Operator: pulumi.String(network.WebApplicationFirewallOperatorIPMatch),
/// 						},
/// 						&network.MatchConditionArgs{
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("Bot"),
/// 							},
/// 							MatchVariables: network.MatchVariableArray{
/// 								&network.MatchVariableArgs{
/// 									Selector:     pulumi.String("UserAgent"),
/// 									VariableName: pulumi.String(network.WebApplicationFirewallMatchVariableRequestHeaders),
/// 								},
/// 							},
/// 							Operator: pulumi.String(network.WebApplicationFirewallOperatorContains),
/// 						},
/// 					},
/// 					Name:     pulumi.String("Rule4"),
/// 					Priority: pulumi.Int(4),
/// 					RuleType: pulumi.String(network.WebApplicationFirewallRuleTypeMatchRule),
/// 				},
/// 			},
/// 			Location: pulumi.String("WestUs"),
/// 			ManagedRules: &network.ManagedRulesDefinitionArgs{
/// 				Exceptions: network.ExceptionEntryArray{
/// 					&network.ExceptionEntryArgs{
/// 						ExceptionManagedRuleSets: network.ExclusionManagedRuleSetArray{
/// 							&network.ExclusionManagedRuleSetArgs{
/// 								RuleSetType:    pulumi.String("OWASP"),
/// 								RuleSetVersion: pulumi.String("3.2"),
/// 							},
/// 						},
/// 						MatchVariable:      pulumi.String(network.ExceptionEntryMatchVariableRequestURI),
/// 						ValueMatchOperator: pulumi.String(network.ExceptionEntryValueMatchOperatorContains),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("health"),
/// 							pulumi.String("account/images"),
/// 							pulumi.String("default.aspx"),
/// 						},
/// 					},
/// 					&network.ExceptionEntryArgs{
/// 						ExceptionManagedRuleSets: network.ExclusionManagedRuleSetArray{
/// 							&network.ExclusionManagedRuleSetArgs{
/// 								RuleGroups: network.ExclusionManagedRuleGroupArray{
/// 									&network.ExclusionManagedRuleGroupArgs{
/// 										RuleGroupName: pulumi.String("REQUEST-932-APPLICATION-ATTACK-RCE"),
/// 									},
/// 								},
/// 								RuleSetType:    pulumi.String("OWASP"),
/// 								RuleSetVersion: pulumi.String("3.2"),
/// 							},
/// 						},
/// 						MatchVariable:         pulumi.String(network.ExceptionEntryMatchVariableRequestHeader),
/// 						Selector:              pulumi.String("User-Agent"),
/// 						SelectorMatchOperator: pulumi.String(network.ExceptionEntrySelectorMatchOperatorStartsWith),
/// 						ValueMatchOperator:    pulumi.String(network.ExceptionEntryValueMatchOperatorContains),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("Mozilla/5.0"),
/// 							pulumi.String("Chrome/122.0.0.0"),
/// 						},
/// 					},
/// 					&network.ExceptionEntryArgs{
/// 						ExceptionManagedRuleSets: network.ExclusionManagedRuleSetArray{
/// 							&network.ExclusionManagedRuleSetArgs{
/// 								RuleGroups: network.ExclusionManagedRuleGroupArray{
/// 									&network.ExclusionManagedRuleGroupArgs{
/// 										RuleGroupName: pulumi.String("BadBots"),
/// 										Rules: network.ExclusionManagedRuleArray{
/// 											&network.ExclusionManagedRuleArgs{
/// 												RuleId: pulumi.String("100100"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 								RuleSetType:    pulumi.String("Microsoft_BotManagerRuleSet"),
/// 								RuleSetVersion: pulumi.String("1.0"),
/// 							},
/// 						},
/// 						MatchVariable:      pulumi.String(network.ExceptionEntryMatchVariableRemoteAddr),
/// 						ValueMatchOperator: pulumi.String(network.ExceptionEntryValueMatchOperatorIPMatch),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("1.2.3.4"),
/// 							pulumi.String("10.0.0.1/6"),
/// 						},
/// 					},
/// 				},
/// 				Exclusions: network.OwaspCrsExclusionEntryArray{
/// 					&network.OwaspCrsExclusionEntryArgs{
/// 						ExclusionManagedRuleSets: network.ExclusionManagedRuleSetArray{
/// 							&network.ExclusionManagedRuleSetArgs{
/// 								RuleGroups: network.ExclusionManagedRuleGroupArray{
/// 									&network.ExclusionManagedRuleGroupArgs{
/// 										RuleGroupName: pulumi.String("REQUEST-930-APPLICATION-ATTACK-LFI"),
/// 										Rules: network.ExclusionManagedRuleArray{
/// 											&network.ExclusionManagedRuleArgs{
/// 												RuleId: pulumi.String("930120"),
/// 											},
/// 										},
/// 									},
/// 									&network.ExclusionManagedRuleGroupArgs{
/// 										RuleGroupName: pulumi.String("REQUEST-932-APPLICATION-ATTACK-RCE"),
/// 									},
/// 								},
/// 								RuleSetType:    pulumi.String("OWASP"),
/// 								RuleSetVersion: pulumi.String("3.2"),
/// 							},
/// 						},
/// 						MatchVariable:         pulumi.String(network.OwaspCrsExclusionEntryMatchVariableRequestArgNames),
/// 						Selector:              pulumi.String("hello"),
/// 						SelectorMatchOperator: pulumi.String(network.OwaspCrsExclusionEntrySelectorMatchOperatorStartsWith),
/// 					},
/// 					&network.OwaspCrsExclusionEntryArgs{
/// 						ExclusionManagedRuleSets: network.ExclusionManagedRuleSetArray{
/// 							&network.ExclusionManagedRuleSetArgs{
/// 								RuleGroups:     network.ExclusionManagedRuleGroupArray{},
/// 								RuleSetType:    pulumi.String("OWASP"),
/// 								RuleSetVersion: pulumi.String("3.1"),
/// 							},
/// 						},
/// 						MatchVariable:         pulumi.String(network.OwaspCrsExclusionEntryMatchVariableRequestArgNames),
/// 						Selector:              pulumi.String("hello"),
/// 						SelectorMatchOperator: pulumi.String(network.OwaspCrsExclusionEntrySelectorMatchOperatorEndsWith),
/// 					},
/// 					&network.OwaspCrsExclusionEntryArgs{
/// 						MatchVariable:         pulumi.String(network.OwaspCrsExclusionEntryMatchVariableRequestArgNames),
/// 						Selector:              pulumi.String("test"),
/// 						SelectorMatchOperator: pulumi.String(network.OwaspCrsExclusionEntrySelectorMatchOperatorStartsWith),
/// 					},
/// 					&network.OwaspCrsExclusionEntryArgs{
/// 						MatchVariable:         pulumi.String(network.OwaspCrsExclusionEntryMatchVariableRequestArgValues),
/// 						Selector:              pulumi.String("test"),
/// 						SelectorMatchOperator: pulumi.String(network.OwaspCrsExclusionEntrySelectorMatchOperatorStartsWith),
/// 					},
/// 				},
/// 				ManagedRuleSets: network.ManagedRuleSetArray{
/// 					&network.ManagedRuleSetArgs{
/// 						RuleGroupOverrides: network.ManagedRuleGroupOverrideArray{
/// 							&network.ManagedRuleGroupOverrideArgs{
/// 								RuleGroupName: pulumi.String("REQUEST-931-APPLICATION-ATTACK-RFI"),
/// 								Rules: network.ManagedRuleOverrideArray{
/// 									&network.ManagedRuleOverrideArgs{
/// 										Action: pulumi.String(network.ActionTypeLog),
/// 										RuleId: pulumi.String("931120"),
/// 										State:  pulumi.String(network.ManagedRuleEnabledStateEnabled),
/// 									},
/// 									&network.ManagedRuleOverrideArgs{
/// 										Action: pulumi.String(network.ActionTypeAnomalyScoring),
/// 										RuleId: pulumi.String("931130"),
/// 										State:  pulumi.String(network.ManagedRuleEnabledStateDisabled),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						RuleSetType:    pulumi.String("OWASP"),
/// 						RuleSetVersion: pulumi.String("3.2"),
/// 					},
/// 					&network.ManagedRuleSetArgs{
/// 						RuleGroupOverrides: network.ManagedRuleGroupOverrideArray{
/// 							&network.ManagedRuleGroupOverrideArgs{
/// 								RuleGroupName: pulumi.String("UnknownBots"),
/// 								Rules: network.ManagedRuleOverrideArray{
/// 									&network.ManagedRuleOverrideArgs{
/// 										Action: pulumi.String(network.ActionTypeJSChallenge),
/// 										RuleId: pulumi.String("300700"),
/// 										State:  pulumi.String(network.ManagedRuleEnabledStateEnabled),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						RuleSetType:    pulumi.String("Microsoft_BotManagerRuleSet"),
/// 						RuleSetVersion: pulumi.String("1.0"),
/// 					},
/// 					&network.ManagedRuleSetArgs{
/// 						RuleGroupOverrides: network.ManagedRuleGroupOverrideArray{
/// 							&network.ManagedRuleGroupOverrideArgs{
/// 								RuleGroupName: pulumi.String("ExcessiveRequests"),
/// 								Rules: network.ManagedRuleOverrideArray{
/// 									&network.ManagedRuleOverrideArgs{
/// 										Action:      pulumi.String(network.ActionTypeBlock),
/// 										RuleId:      pulumi.String("500100"),
/// 										Sensitivity: pulumi.String(network.SensitivityTypeHigh),
/// 										State:       pulumi.String(network.ManagedRuleEnabledStateEnabled),
/// 									},
/// 								},
/// 							},
/// 						},
/// 						RuleSetType:    pulumi.String("Microsoft_HTTPDDoSRuleSet"),
/// 						RuleSetVersion: pulumi.String("1.0"),
/// 					},
/// 				},
/// 			},
/// 			PolicyName: pulumi.String("Policy1"),
/// 			PolicySettings: &network.PolicySettingsArgs{
/// 				JsChallengeCookieExpirationInMins: pulumi.Int(100),
/// 				LogScrubbing: &network.PolicySettingsLogScrubbingArgs{
/// 					ScrubbingRules: network.WebApplicationFirewallScrubbingRulesArray{
/// 						&network.WebApplicationFirewallScrubbingRulesArgs{
/// 							MatchVariable:         pulumi.String(network.ScrubbingRuleEntryMatchVariableRequestArgNames),
/// 							Selector:              pulumi.String("test"),
/// 							SelectorMatchOperator: pulumi.String(network.ScrubbingRuleEntryMatchOperatorEquals),
/// 							State:                 pulumi.String(network.ScrubbingRuleEntryStateEnabled),
/// 						},
/// 						&network.WebApplicationFirewallScrubbingRulesArgs{
/// 							MatchVariable:         pulumi.String(network.ScrubbingRuleEntryMatchVariableRequestIPAddress),
/// 							SelectorMatchOperator: pulumi.String(network.ScrubbingRuleEntryMatchOperatorEqualsAny),
/// 							State:                 pulumi.String(network.ScrubbingRuleEntryStateEnabled),
/// 						},
/// 					},
/// 					State: pulumi.String(network.WebApplicationFirewallScrubbingStateEnabled),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
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
/// import com.pulumi.azurenative.network.WebApplicationFirewallPolicy;
/// import com.pulumi.azurenative.network.WebApplicationFirewallPolicyArgs;
/// import com.pulumi.azurenative.network.inputs.WebApplicationFirewallCustomRuleArgs;
/// import com.pulumi.azurenative.network.inputs.ManagedRulesDefinitionArgs;
/// import com.pulumi.azurenative.network.inputs.PolicySettingsArgs;
/// import com.pulumi.azurenative.network.inputs.PolicySettingsLogScrubbingArgs;
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
///         var webApplicationFirewallPolicy = new WebApplicationFirewallPolicy("webApplicationFirewallPolicy", WebApplicationFirewallPolicyArgs.builder()
///             .customRules(
///                 WebApplicationFirewallCustomRuleArgs.builder()
///                     .action("Block")
///                     .matchConditions(MatchConditionArgs.builder()
///                         .matchValues(
///                             "192.168.1.0/24",
///                             "10.0.0.0/24")
///                         .matchVariables(MatchVariableArgs.builder()
///                             .variableName("RemoteAddr")
///                             .build())
///                         .operator("IPMatch")
///                         .build())
///                     .name("Rule1")
///                     .priority(1)
///                     .ruleType("MatchRule")
///                     .build(),
///                 WebApplicationFirewallCustomRuleArgs.builder()
///                     .action("Block")
///                     .matchConditions(
///                         MatchConditionArgs.builder()
///                             .matchValues("192.168.1.0/24")
///                             .matchVariables(MatchVariableArgs.builder()
///                                 .variableName("RemoteAddr")
///                                 .build())
///                             .operator("IPMatch")
///                             .build(),
///                         MatchConditionArgs.builder()
///                             .matchValues("Windows")
///                             .matchVariables(MatchVariableArgs.builder()
///                                 .selector("UserAgent")
///                                 .variableName("RequestHeaders")
///                                 .build())
///                             .operator("Contains")
///                             .build())
///                     .name("Rule2")
///                     .priority(2)
///                     .ruleType("MatchRule")
///                     .build(),
///                 WebApplicationFirewallCustomRuleArgs.builder()
///                     .action("Block")
///                     .groupByUserSession(GroupByUserSessionArgs.builder()
///                         .groupByVariables(GroupByVariableArgs.builder()
///                             .variableName("ClientAddr")
///                             .build())
///                         .build())
///                     .matchConditions(MatchConditionArgs.builder()
///                         .matchValues(
///                             "192.168.1.0/24",
///                             "10.0.0.0/24")
///                         .matchVariables(MatchVariableArgs.builder()
///                             .variableName("RemoteAddr")
///                             .build())
///                         .negationConditon(true)
///                         .operator("IPMatch")
///                         .build())
///                     .name("RateLimitRule3")
///                     .priority(3)
///                     .rateLimitDuration("OneMin")
///                     .rateLimitThreshold(10)
///                     .ruleType("RateLimitRule")
///                     .build(),
///                 WebApplicationFirewallCustomRuleArgs.builder()
///                     .action("JSChallenge")
///                     .matchConditions(
///                         MatchConditionArgs.builder()
///                             .matchValues("192.168.1.0/24")
///                             .matchVariables(MatchVariableArgs.builder()
///                                 .variableName("RemoteAddr")
///                                 .build())
///                             .operator("IPMatch")
///                             .build(),
///                         MatchConditionArgs.builder()
///                             .matchValues("Bot")
///                             .matchVariables(MatchVariableArgs.builder()
///                                 .selector("UserAgent")
///                                 .variableName("RequestHeaders")
///                                 .build())
///                             .operator("Contains")
///                             .build())
///                     .name("Rule4")
///                     .priority(4)
///                     .ruleType("MatchRule")
///                     .build())
///             .location("WestUs")
///             .managedRules(ManagedRulesDefinitionArgs.builder()
///                 .exceptions(
///                     ExceptionEntryArgs.builder()
///                         .exceptionManagedRuleSets(ExclusionManagedRuleSetArgs.builder()
///                             .ruleSetType("OWASP")
///                             .ruleSetVersion("3.2")
///                             .build())
///                         .matchVariable("RequestURI")
///                         .valueMatchOperator("Contains")
///                         .values(
///                             "health",
///                             "account/images",
///                             "default.aspx")
///                         .build(),
///                     ExceptionEntryArgs.builder()
///                         .exceptionManagedRuleSets(ExclusionManagedRuleSetArgs.builder()
///                             .ruleGroups(ExclusionManagedRuleGroupArgs.builder()
///                                 .ruleGroupName("REQUEST-932-APPLICATION-ATTACK-RCE")
///                                 .build())
///                             .ruleSetType("OWASP")
///                             .ruleSetVersion("3.2")
///                             .build())
///                         .matchVariable("RequestHeader")
///                         .selector("User-Agent")
///                         .selectorMatchOperator("StartsWith")
///                         .valueMatchOperator("Contains")
///                         .values(
///                             "Mozilla/5.0",
///                             "Chrome/122.0.0.0")
///                         .build(),
///                     ExceptionEntryArgs.builder()
///                         .exceptionManagedRuleSets(ExclusionManagedRuleSetArgs.builder()
///                             .ruleGroups(ExclusionManagedRuleGroupArgs.builder()
///                                 .ruleGroupName("BadBots")
///                                 .rules(ExclusionManagedRuleArgs.builder()
///                                     .ruleId("100100")
///                                     .build())
///                                 .build())
///                             .ruleSetType("Microsoft_BotManagerRuleSet")
///                             .ruleSetVersion("1.0")
///                             .build())
///                         .matchVariable("RemoteAddr")
///                         .valueMatchOperator("IPMatch")
///                         .values(
///                             "1.2.3.4",
///                             "10.0.0.1/6")
///                         .build())
///                 .exclusions(
///                     OwaspCrsExclusionEntryArgs.builder()
///                         .exclusionManagedRuleSets(ExclusionManagedRuleSetArgs.builder()
///                             .ruleGroups(
///                                 ExclusionManagedRuleGroupArgs.builder()
///                                     .ruleGroupName("REQUEST-930-APPLICATION-ATTACK-LFI")
///                                     .rules(ExclusionManagedRuleArgs.builder()
///                                         .ruleId("930120")
///                                         .build())
///                                     .build(),
///                                 ExclusionManagedRuleGroupArgs.builder()
///                                     .ruleGroupName("REQUEST-932-APPLICATION-ATTACK-RCE")
///                                     .build())
///                             .ruleSetType("OWASP")
///                             .ruleSetVersion("3.2")
///                             .build())
///                         .matchVariable("RequestArgNames")
///                         .selector("hello")
///                         .selectorMatchOperator("StartsWith")
///                         .build(),
///                     OwaspCrsExclusionEntryArgs.builder()
///                         .exclusionManagedRuleSets(ExclusionManagedRuleSetArgs.builder()
///                             .ruleGroups()
///                             .ruleSetType("OWASP")
///                             .ruleSetVersion("3.1")
///                             .build())
///                         .matchVariable("RequestArgNames")
///                         .selector("hello")
///                         .selectorMatchOperator("EndsWith")
///                         .build(),
///                     OwaspCrsExclusionEntryArgs.builder()
///                         .matchVariable("RequestArgNames")
///                         .selector("test")
///                         .selectorMatchOperator("StartsWith")
///                         .build(),
///                     OwaspCrsExclusionEntryArgs.builder()
///                         .matchVariable("RequestArgValues")
///                         .selector("test")
///                         .selectorMatchOperator("StartsWith")
///                         .build())
///                 .managedRuleSets(
///                     ManagedRuleSetArgs.builder()
///                         .ruleGroupOverrides(ManagedRuleGroupOverrideArgs.builder()
///                             .ruleGroupName("REQUEST-931-APPLICATION-ATTACK-RFI")
///                             .rules(
///                                 ManagedRuleOverrideArgs.builder()
///                                     .action("Log")
///                                     .ruleId("931120")
///                                     .state("Enabled")
///                                     .build(),
///                                 ManagedRuleOverrideArgs.builder()
///                                     .action("AnomalyScoring")
///                                     .ruleId("931130")
///                                     .state("Disabled")
///                                     .build())
///                             .build())
///                         .ruleSetType("OWASP")
///                         .ruleSetVersion("3.2")
///                         .build(),
///                     ManagedRuleSetArgs.builder()
///                         .ruleGroupOverrides(ManagedRuleGroupOverrideArgs.builder()
///                             .ruleGroupName("UnknownBots")
///                             .rules(ManagedRuleOverrideArgs.builder()
///                                 .action("JSChallenge")
///                                 .ruleId("300700")
///                                 .state("Enabled")
///                                 .build())
///                             .build())
///                         .ruleSetType("Microsoft_BotManagerRuleSet")
///                         .ruleSetVersion("1.0")
///                         .build(),
///                     ManagedRuleSetArgs.builder()
///                         .ruleGroupOverrides(ManagedRuleGroupOverrideArgs.builder()
///                             .ruleGroupName("ExcessiveRequests")
///                             .rules(ManagedRuleOverrideArgs.builder()
///                                 .action("Block")
///                                 .ruleId("500100")
///                                 .sensitivity("High")
///                                 .state("Enabled")
///                                 .build())
///                             .build())
///                         .ruleSetType("Microsoft_HTTPDDoSRuleSet")
///                         .ruleSetVersion("1.0")
///                         .build())
///                 .build())
///             .policyName("Policy1")
///             .policySettings(PolicySettingsArgs.builder()
///                 .jsChallengeCookieExpirationInMins(100)
///                 .logScrubbing(PolicySettingsLogScrubbingArgs.builder()
///                     .scrubbingRules(
///                         WebApplicationFirewallScrubbingRulesArgs.builder()
///                             .matchVariable("RequestArgNames")
///                             .selector("test")
///                             .selectorMatchOperator("Equals")
///                             .state("Enabled")
///                             .build(),
///                         WebApplicationFirewallScrubbingRulesArgs.builder()
///                             .matchVariable("RequestIPAddress")
///                             .selectorMatchOperator("EqualsAny")
///                             .state("Enabled")
///                             .build())
///                     .state("Enabled")
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
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
/// const webApplicationFirewallPolicy = new azure_native.network.WebApplicationFirewallPolicy("webApplicationFirewallPolicy", {
///     customRules: [
///         {
///             action: azure_native.network.WebApplicationFirewallAction.Block,
///             matchConditions: [{
///                 matchValues: [
///                     "192.168.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///                 matchVariables: [{
///                     variableName: azure_native.network.WebApplicationFirewallMatchVariable.RemoteAddr,
///                 }],
///                 operator: azure_native.network.WebApplicationFirewallOperator.IPMatch,
///             }],
///             name: "Rule1",
///             priority: 1,
///             ruleType: azure_native.network.WebApplicationFirewallRuleType.MatchRule,
///         },
///         {
///             action: azure_native.network.WebApplicationFirewallAction.Block,
///             matchConditions: [
///                 {
///                     matchValues: ["192.168.1.0/24"],
///                     matchVariables: [{
///                         variableName: azure_native.network.WebApplicationFirewallMatchVariable.RemoteAddr,
///                     }],
///                     operator: azure_native.network.WebApplicationFirewallOperator.IPMatch,
///                 },
///                 {
///                     matchValues: ["Windows"],
///                     matchVariables: [{
///                         selector: "UserAgent",
///                         variableName: azure_native.network.WebApplicationFirewallMatchVariable.RequestHeaders,
///                     }],
///                     operator: azure_native.network.WebApplicationFirewallOperator.Contains,
///                 },
///             ],
///             name: "Rule2",
///             priority: 2,
///             ruleType: azure_native.network.WebApplicationFirewallRuleType.MatchRule,
///         },
///         {
///             action: azure_native.network.WebApplicationFirewallAction.Block,
///             groupByUserSession: [{
///                 groupByVariables: [{
///                     variableName: azure_native.network.ApplicationGatewayFirewallUserSessionVariable.ClientAddr,
///                 }],
///             }],
///             matchConditions: [{
///                 matchValues: [
///                     "192.168.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///                 matchVariables: [{
///                     variableName: azure_native.network.WebApplicationFirewallMatchVariable.RemoteAddr,
///                 }],
///                 negationConditon: true,
///                 operator: azure_native.network.WebApplicationFirewallOperator.IPMatch,
///             }],
///             name: "RateLimitRule3",
///             priority: 3,
///             rateLimitDuration: azure_native.network.ApplicationGatewayFirewallRateLimitDuration.OneMin,
///             rateLimitThreshold: 10,
///             ruleType: azure_native.network.WebApplicationFirewallRuleType.RateLimitRule,
///         },
///         {
///             action: azure_native.network.WebApplicationFirewallAction.JSChallenge,
///             matchConditions: [
///                 {
///                     matchValues: ["192.168.1.0/24"],
///                     matchVariables: [{
///                         variableName: azure_native.network.WebApplicationFirewallMatchVariable.RemoteAddr,
///                     }],
///                     operator: azure_native.network.WebApplicationFirewallOperator.IPMatch,
///                 },
///                 {
///                     matchValues: ["Bot"],
///                     matchVariables: [{
///                         selector: "UserAgent",
///                         variableName: azure_native.network.WebApplicationFirewallMatchVariable.RequestHeaders,
///                     }],
///                     operator: azure_native.network.WebApplicationFirewallOperator.Contains,
///                 },
///             ],
///             name: "Rule4",
///             priority: 4,
///             ruleType: azure_native.network.WebApplicationFirewallRuleType.MatchRule,
///         },
///     ],
///     location: "WestUs",
///     managedRules: {
///         exceptions: [
///             {
///                 exceptionManagedRuleSets: [{
///                     ruleSetType: "OWASP",
///                     ruleSetVersion: "3.2",
///                 }],
///                 matchVariable: azure_native.network.ExceptionEntryMatchVariable.RequestURI,
///                 valueMatchOperator: azure_native.network.ExceptionEntryValueMatchOperator.Contains,
///                 values: [
///                     "health",
///                     "account/images",
///                     "default.aspx",
///                 ],
///             },
///             {
///                 exceptionManagedRuleSets: [{
///                     ruleGroups: [{
///                         ruleGroupName: "REQUEST-932-APPLICATION-ATTACK-RCE",
///                     }],
///                     ruleSetType: "OWASP",
///                     ruleSetVersion: "3.2",
///                 }],
///                 matchVariable: azure_native.network.ExceptionEntryMatchVariable.RequestHeader,
///                 selector: "User-Agent",
///                 selectorMatchOperator: azure_native.network.ExceptionEntrySelectorMatchOperator.StartsWith,
///                 valueMatchOperator: azure_native.network.ExceptionEntryValueMatchOperator.Contains,
///                 values: [
///                     "Mozilla/5.0",
///                     "Chrome/122.0.0.0",
///                 ],
///             },
///             {
///                 exceptionManagedRuleSets: [{
///                     ruleGroups: [{
///                         ruleGroupName: "BadBots",
///                         rules: [{
///                             ruleId: "100100",
///                         }],
///                     }],
///                     ruleSetType: "Microsoft_BotManagerRuleSet",
///                     ruleSetVersion: "1.0",
///                 }],
///                 matchVariable: azure_native.network.ExceptionEntryMatchVariable.RemoteAddr,
///                 valueMatchOperator: azure_native.network.ExceptionEntryValueMatchOperator.IPMatch,
///                 values: [
///                     "1.2.3.4",
///                     "10.0.0.1/6",
///                 ],
///             },
///         ],
///         exclusions: [
///             {
///                 exclusionManagedRuleSets: [{
///                     ruleGroups: [
///                         {
///                             ruleGroupName: "REQUEST-930-APPLICATION-ATTACK-LFI",
///                             rules: [{
///                                 ruleId: "930120",
///                             }],
///                         },
///                         {
///                             ruleGroupName: "REQUEST-932-APPLICATION-ATTACK-RCE",
///                         },
///                     ],
///                     ruleSetType: "OWASP",
///                     ruleSetVersion: "3.2",
///                 }],
///                 matchVariable: azure_native.network.OwaspCrsExclusionEntryMatchVariable.RequestArgNames,
///                 selector: "hello",
///                 selectorMatchOperator: azure_native.network.OwaspCrsExclusionEntrySelectorMatchOperator.StartsWith,
///             },
///             {
///                 exclusionManagedRuleSets: [{
///                     ruleGroups: [],
///                     ruleSetType: "OWASP",
///                     ruleSetVersion: "3.1",
///                 }],
///                 matchVariable: azure_native.network.OwaspCrsExclusionEntryMatchVariable.RequestArgNames,
///                 selector: "hello",
///                 selectorMatchOperator: azure_native.network.OwaspCrsExclusionEntrySelectorMatchOperator.EndsWith,
///             },
///             {
///                 matchVariable: azure_native.network.OwaspCrsExclusionEntryMatchVariable.RequestArgNames,
///                 selector: "test",
///                 selectorMatchOperator: azure_native.network.OwaspCrsExclusionEntrySelectorMatchOperator.StartsWith,
///             },
///             {
///                 matchVariable: azure_native.network.OwaspCrsExclusionEntryMatchVariable.RequestArgValues,
///                 selector: "test",
///                 selectorMatchOperator: azure_native.network.OwaspCrsExclusionEntrySelectorMatchOperator.StartsWith,
///             },
///         ],
///         managedRuleSets: [
///             {
///                 ruleGroupOverrides: [{
///                     ruleGroupName: "REQUEST-931-APPLICATION-ATTACK-RFI",
///                     rules: [
///                         {
///                             action: azure_native.network.ActionType.Log,
///                             ruleId: "931120",
///                             state: azure_native.network.ManagedRuleEnabledState.Enabled,
///                         },
///                         {
///                             action: azure_native.network.ActionType.AnomalyScoring,
///                             ruleId: "931130",
///                             state: azure_native.network.ManagedRuleEnabledState.Disabled,
///                         },
///                     ],
///                 }],
///                 ruleSetType: "OWASP",
///                 ruleSetVersion: "3.2",
///             },
///             {
///                 ruleGroupOverrides: [{
///                     ruleGroupName: "UnknownBots",
///                     rules: [{
///                         action: azure_native.network.ActionType.JSChallenge,
///                         ruleId: "300700",
///                         state: azure_native.network.ManagedRuleEnabledState.Enabled,
///                     }],
///                 }],
///                 ruleSetType: "Microsoft_BotManagerRuleSet",
///                 ruleSetVersion: "1.0",
///             },
///             {
///                 ruleGroupOverrides: [{
///                     ruleGroupName: "ExcessiveRequests",
///                     rules: [{
///                         action: azure_native.network.ActionType.Block,
///                         ruleId: "500100",
///                         sensitivity: azure_native.network.SensitivityType.High,
///                         state: azure_native.network.ManagedRuleEnabledState.Enabled,
///                     }],
///                 }],
///                 ruleSetType: "Microsoft_HTTPDDoSRuleSet",
///                 ruleSetVersion: "1.0",
///             },
///         ],
///     },
///     policyName: "Policy1",
///     policySettings: {
///         jsChallengeCookieExpirationInMins: 100,
///         logScrubbing: {
///             scrubbingRules: [
///                 {
///                     matchVariable: azure_native.network.ScrubbingRuleEntryMatchVariable.RequestArgNames,
///                     selector: "test",
///                     selectorMatchOperator: azure_native.network.ScrubbingRuleEntryMatchOperator.Equals,
///                     state: azure_native.network.ScrubbingRuleEntryState.Enabled,
///                 },
///                 {
///                     matchVariable: azure_native.network.ScrubbingRuleEntryMatchVariable.RequestIPAddress,
///                     selectorMatchOperator: azure_native.network.ScrubbingRuleEntryMatchOperator.EqualsAny,
///                     state: azure_native.network.ScrubbingRuleEntryState.Enabled,
///                 },
///             ],
///             state: azure_native.network.WebApplicationFirewallScrubbingState.Enabled,
///         },
///     },
///     resourceGroupName: "rg1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// web_application_firewall_policy = azure_native.network.WebApplicationFirewallPolicy("webApplicationFirewallPolicy",
///     custom_rules=[
///         {
///             "action": azure_native.network.WebApplicationFirewallAction.BLOCK,
///             "match_conditions": [{
///                 "match_values": [
///                     "192.168.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///                 "match_variables": [{
///                     "variable_name": azure_native.network.WebApplicationFirewallMatchVariable.REMOTE_ADDR,
///                 }],
///                 "operator": azure_native.network.WebApplicationFirewallOperator.IP_MATCH,
///             }],
///             "name": "Rule1",
///             "priority": 1,
///             "rule_type": azure_native.network.WebApplicationFirewallRuleType.MATCH_RULE,
///         },
///         {
///             "action": azure_native.network.WebApplicationFirewallAction.BLOCK,
///             "match_conditions": [
///                 {
///                     "match_values": ["192.168.1.0/24"],
///                     "match_variables": [{
///                         "variable_name": azure_native.network.WebApplicationFirewallMatchVariable.REMOTE_ADDR,
///                     }],
///                     "operator": azure_native.network.WebApplicationFirewallOperator.IP_MATCH,
///                 },
///                 {
///                     "match_values": ["Windows"],
///                     "match_variables": [{
///                         "selector": "UserAgent",
///                         "variable_name": azure_native.network.WebApplicationFirewallMatchVariable.REQUEST_HEADERS,
///                     }],
///                     "operator": azure_native.network.WebApplicationFirewallOperator.CONTAINS,
///                 },
///             ],
///             "name": "Rule2",
///             "priority": 2,
///             "rule_type": azure_native.network.WebApplicationFirewallRuleType.MATCH_RULE,
///         },
///         {
///             "action": azure_native.network.WebApplicationFirewallAction.BLOCK,
///             "group_by_user_session": [{
///                 "group_by_variables": [{
///                     "variable_name": azure_native.network.ApplicationGatewayFirewallUserSessionVariable.CLIENT_ADDR,
///                 }],
///             }],
///             "match_conditions": [{
///                 "match_values": [
///                     "192.168.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///                 "match_variables": [{
///                     "variable_name": azure_native.network.WebApplicationFirewallMatchVariable.REMOTE_ADDR,
///                 }],
///                 "negation_conditon": True,
///                 "operator": azure_native.network.WebApplicationFirewallOperator.IP_MATCH,
///             }],
///             "name": "RateLimitRule3",
///             "priority": 3,
///             "rate_limit_duration": azure_native.network.ApplicationGatewayFirewallRateLimitDuration.ONE_MIN,
///             "rate_limit_threshold": 10,
///             "rule_type": azure_native.network.WebApplicationFirewallRuleType.RATE_LIMIT_RULE,
///         },
///         {
///             "action": azure_native.network.WebApplicationFirewallAction.JS_CHALLENGE,
///             "match_conditions": [
///                 {
///                     "match_values": ["192.168.1.0/24"],
///                     "match_variables": [{
///                         "variable_name": azure_native.network.WebApplicationFirewallMatchVariable.REMOTE_ADDR,
///                     }],
///                     "operator": azure_native.network.WebApplicationFirewallOperator.IP_MATCH,
///                 },
///                 {
///                     "match_values": ["Bot"],
///                     "match_variables": [{
///                         "selector": "UserAgent",
///                         "variable_name": azure_native.network.WebApplicationFirewallMatchVariable.REQUEST_HEADERS,
///                     }],
///                     "operator": azure_native.network.WebApplicationFirewallOperator.CONTAINS,
///                 },
///             ],
///             "name": "Rule4",
///             "priority": 4,
///             "rule_type": azure_native.network.WebApplicationFirewallRuleType.MATCH_RULE,
///         },
///     ],
///     location="WestUs",
///     managed_rules={
///         "exceptions": [
///             {
///                 "exception_managed_rule_sets": [{
///                     "rule_set_type": "OWASP",
///                     "rule_set_version": "3.2",
///                 }],
///                 "match_variable": azure_native.network.ExceptionEntryMatchVariable.REQUEST_URI,
///                 "value_match_operator": azure_native.network.ExceptionEntryValueMatchOperator.CONTAINS,
///                 "values": [
///                     "health",
///                     "account/images",
///                     "default.aspx",
///                 ],
///             },
///             {
///                 "exception_managed_rule_sets": [{
///                     "rule_groups": [{
///                         "rule_group_name": "REQUEST-932-APPLICATION-ATTACK-RCE",
///                     }],
///                     "rule_set_type": "OWASP",
///                     "rule_set_version": "3.2",
///                 }],
///                 "match_variable": azure_native.network.ExceptionEntryMatchVariable.REQUEST_HEADER,
///                 "selector": "User-Agent",
///                 "selector_match_operator": azure_native.network.ExceptionEntrySelectorMatchOperator.STARTS_WITH,
///                 "value_match_operator": azure_native.network.ExceptionEntryValueMatchOperator.CONTAINS,
///                 "values": [
///                     "Mozilla/5.0",
///                     "Chrome/122.0.0.0",
///                 ],
///             },
///             {
///                 "exception_managed_rule_sets": [{
///                     "rule_groups": [{
///                         "rule_group_name": "BadBots",
///                         "rules": [{
///                             "rule_id": "100100",
///                         }],
///                     }],
///                     "rule_set_type": "Microsoft_BotManagerRuleSet",
///                     "rule_set_version": "1.0",
///                 }],
///                 "match_variable": azure_native.network.ExceptionEntryMatchVariable.REMOTE_ADDR,
///                 "value_match_operator": azure_native.network.ExceptionEntryValueMatchOperator.IP_MATCH,
///                 "values": [
///                     "1.2.3.4",
///                     "10.0.0.1/6",
///                 ],
///             },
///         ],
///         "exclusions": [
///             {
///                 "exclusion_managed_rule_sets": [{
///                     "rule_groups": [
///                         {
///                             "rule_group_name": "REQUEST-930-APPLICATION-ATTACK-LFI",
///                             "rules": [{
///                                 "rule_id": "930120",
///                             }],
///                         },
///                         {
///                             "rule_group_name": "REQUEST-932-APPLICATION-ATTACK-RCE",
///                         },
///                     ],
///                     "rule_set_type": "OWASP",
///                     "rule_set_version": "3.2",
///                 }],
///                 "match_variable": azure_native.network.OwaspCrsExclusionEntryMatchVariable.REQUEST_ARG_NAMES,
///                 "selector": "hello",
///                 "selector_match_operator": azure_native.network.OwaspCrsExclusionEntrySelectorMatchOperator.STARTS_WITH,
///             },
///             {
///                 "exclusion_managed_rule_sets": [{
///                     "rule_groups": [],
///                     "rule_set_type": "OWASP",
///                     "rule_set_version": "3.1",
///                 }],
///                 "match_variable": azure_native.network.OwaspCrsExclusionEntryMatchVariable.REQUEST_ARG_NAMES,
///                 "selector": "hello",
///                 "selector_match_operator": azure_native.network.OwaspCrsExclusionEntrySelectorMatchOperator.ENDS_WITH,
///             },
///             {
///                 "match_variable": azure_native.network.OwaspCrsExclusionEntryMatchVariable.REQUEST_ARG_NAMES,
///                 "selector": "test",
///                 "selector_match_operator": azure_native.network.OwaspCrsExclusionEntrySelectorMatchOperator.STARTS_WITH,
///             },
///             {
///                 "match_variable": azure_native.network.OwaspCrsExclusionEntryMatchVariable.REQUEST_ARG_VALUES,
///                 "selector": "test",
///                 "selector_match_operator": azure_native.network.OwaspCrsExclusionEntrySelectorMatchOperator.STARTS_WITH,
///             },
///         ],
///         "managed_rule_sets": [
///             {
///                 "rule_group_overrides": [{
///                     "rule_group_name": "REQUEST-931-APPLICATION-ATTACK-RFI",
///                     "rules": [
///                         {
///                             "action": azure_native.network.ActionType.LOG,
///                             "rule_id": "931120",
///                             "state": azure_native.network.ManagedRuleEnabledState.ENABLED,
///                         },
///                         {
///                             "action": azure_native.network.ActionType.ANOMALY_SCORING,
///                             "rule_id": "931130",
///                             "state": azure_native.network.ManagedRuleEnabledState.DISABLED,
///                         },
///                     ],
///                 }],
///                 "rule_set_type": "OWASP",
///                 "rule_set_version": "3.2",
///             },
///             {
///                 "rule_group_overrides": [{
///                     "rule_group_name": "UnknownBots",
///                     "rules": [{
///                         "action": azure_native.network.ActionType.JS_CHALLENGE,
///                         "rule_id": "300700",
///                         "state": azure_native.network.ManagedRuleEnabledState.ENABLED,
///                     }],
///                 }],
///                 "rule_set_type": "Microsoft_BotManagerRuleSet",
///                 "rule_set_version": "1.0",
///             },
///             {
///                 "rule_group_overrides": [{
///                     "rule_group_name": "ExcessiveRequests",
///                     "rules": [{
///                         "action": azure_native.network.ActionType.BLOCK,
///                         "rule_id": "500100",
///                         "sensitivity": azure_native.network.SensitivityType.HIGH,
///                         "state": azure_native.network.ManagedRuleEnabledState.ENABLED,
///                     }],
///                 }],
///                 "rule_set_type": "Microsoft_HTTPDDoSRuleSet",
///                 "rule_set_version": "1.0",
///             },
///         ],
///     },
///     policy_name="Policy1",
///     policy_settings={
///         "js_challenge_cookie_expiration_in_mins": 100,
///         "log_scrubbing": {
///             "scrubbing_rules": [
///                 {
///                     "match_variable": azure_native.network.ScrubbingRuleEntryMatchVariable.REQUEST_ARG_NAMES,
///                     "selector": "test",
///                     "selector_match_operator": azure_native.network.ScrubbingRuleEntryMatchOperator.EQUALS,
///                     "state": azure_native.network.ScrubbingRuleEntryState.ENABLED,
///                 },
///                 {
///                     "match_variable": azure_native.network.ScrubbingRuleEntryMatchVariable.REQUEST_IP_ADDRESS,
///                     "selector_match_operator": azure_native.network.ScrubbingRuleEntryMatchOperator.EQUALS_ANY,
///                     "state": azure_native.network.ScrubbingRuleEntryState.ENABLED,
///                 },
///             ],
///             "state": azure_native.network.WebApplicationFirewallScrubbingState.ENABLED,
///         },
///     },
///     resource_group_name="rg1")
///
/// ```
///
/// ```yaml
/// resources:
///   webApplicationFirewallPolicy:
///     type: azure-native:network:WebApplicationFirewallPolicy
///     properties:
///       customRules:
///         - action: Block
///           matchConditions:
///             - matchValues:
///                 - 192.168.1.0/24
///                 - 10.0.0.0/24
///               matchVariables:
///                 - variableName: RemoteAddr
///               operator: IPMatch
///           name: Rule1
///           priority: 1
///           ruleType: MatchRule
///         - action: Block
///           matchConditions:
///             - matchValues:
///                 - 192.168.1.0/24
///               matchVariables:
///                 - variableName: RemoteAddr
///               operator: IPMatch
///             - matchValues:
///                 - Windows
///               matchVariables:
///                 - selector: UserAgent
///                   variableName: RequestHeaders
///               operator: Contains
///           name: Rule2
///           priority: 2
///           ruleType: MatchRule
///         - action: Block
///           groupByUserSession:
///             - groupByVariables:
///                 - variableName: ClientAddr
///           matchConditions:
///             - matchValues:
///                 - 192.168.1.0/24
///                 - 10.0.0.0/24
///               matchVariables:
///                 - variableName: RemoteAddr
///               negationConditon: true
///               operator: IPMatch
///           name: RateLimitRule3
///           priority: 3
///           rateLimitDuration: OneMin
///           rateLimitThreshold: 10
///           ruleType: RateLimitRule
///         - action: JSChallenge
///           matchConditions:
///             - matchValues:
///                 - 192.168.1.0/24
///               matchVariables:
///                 - variableName: RemoteAddr
///               operator: IPMatch
///             - matchValues:
///                 - Bot
///               matchVariables:
///                 - selector: UserAgent
///                   variableName: RequestHeaders
///               operator: Contains
///           name: Rule4
///           priority: 4
///           ruleType: MatchRule
///       location: WestUs
///       managedRules:
///         exceptions:
///           - exceptionManagedRuleSets:
///               - ruleSetType: OWASP
///                 ruleSetVersion: '3.2'
///             matchVariable: RequestURI
///             valueMatchOperator: Contains
///             values:
///               - health
///               - account/images
///               - default.aspx
///           - exceptionManagedRuleSets:
///               - ruleGroups:
///                   - ruleGroupName: REQUEST-932-APPLICATION-ATTACK-RCE
///                 ruleSetType: OWASP
///                 ruleSetVersion: '3.2'
///             matchVariable: RequestHeader
///             selector: User-Agent
///             selectorMatchOperator: StartsWith
///             valueMatchOperator: Contains
///             values:
///               - Mozilla/5.0
///               - Chrome/122.0.0.0
///           - exceptionManagedRuleSets:
///               - ruleGroups:
///                   - ruleGroupName: BadBots
///                     rules:
///                       - ruleId: '100100'
///                 ruleSetType: Microsoft_BotManagerRuleSet
///                 ruleSetVersion: '1.0'
///             matchVariable: RemoteAddr
///             valueMatchOperator: IPMatch
///             values:
///               - 1.2.3.4
///               - 10.0.0.1/6
///         exclusions:
///           - exclusionManagedRuleSets:
///               - ruleGroups:
///                   - ruleGroupName: REQUEST-930-APPLICATION-ATTACK-LFI
///                     rules:
///                       - ruleId: '930120'
///                   - ruleGroupName: REQUEST-932-APPLICATION-ATTACK-RCE
///                 ruleSetType: OWASP
///                 ruleSetVersion: '3.2'
///             matchVariable: RequestArgNames
///             selector: hello
///             selectorMatchOperator: StartsWith
///           - exclusionManagedRuleSets:
///               - ruleGroups: []
///                 ruleSetType: OWASP
///                 ruleSetVersion: '3.1'
///             matchVariable: RequestArgNames
///             selector: hello
///             selectorMatchOperator: EndsWith
///           - matchVariable: RequestArgNames
///             selector: test
///             selectorMatchOperator: StartsWith
///           - matchVariable: RequestArgValues
///             selector: test
///             selectorMatchOperator: StartsWith
///         managedRuleSets:
///           - ruleGroupOverrides:
///               - ruleGroupName: REQUEST-931-APPLICATION-ATTACK-RFI
///                 rules:
///                   - action: Log
///                     ruleId: '931120'
///                     state: Enabled
///                   - action: AnomalyScoring
///                     ruleId: '931130'
///                     state: Disabled
///             ruleSetType: OWASP
///             ruleSetVersion: '3.2'
///           - ruleGroupOverrides:
///               - ruleGroupName: UnknownBots
///                 rules:
///                   - action: JSChallenge
///                     ruleId: '300700'
///                     state: Enabled
///             ruleSetType: Microsoft_BotManagerRuleSet
///             ruleSetVersion: '1.0'
///           - ruleGroupOverrides:
///               - ruleGroupName: ExcessiveRequests
///                 rules:
///                   - action: Block
///                     ruleId: '500100'
///                     sensitivity: High
///                     state: Enabled
///             ruleSetType: Microsoft_HTTPDDoSRuleSet
///             ruleSetVersion: '1.0'
///       policyName: Policy1
///       policySettings:
///         jsChallengeCookieExpirationInMins: 100
///         logScrubbing:
///           scrubbingRules:
///             - matchVariable: RequestArgNames
///               selector: test
///               selectorMatchOperator: Equals
///               state: Enabled
///             - matchVariable: RequestIPAddress
///               selectorMatchOperator: EqualsAny
///               state: Enabled
///           state: Enabled
///       resourceGroupName: rg1
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
/// $ pulumi import azure-native:network:WebApplicationFirewallPolicy Policy1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/ApplicationGatewayWebApplicationFirewallPolicies/{policyName}
/// ```
class WebApplicationFirewallPolicy extends pulumi.CustomResource {
  /// A collection of references to application gateway for containers.
  late final pulumi.Output<List<ApplicationGatewayForContainersReferenceDefinitionResponse>> applicationGatewayForContainers;
  /// A collection of references to application gateways.
  late final pulumi.Output<List<ApplicationGatewayResponse>> applicationGateways;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The custom rules inside the policy.
  late final pulumi.Output<List<WebApplicationFirewallCustomRuleResponse>?> customRules;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// A collection of references to application gateway http listeners.
  late final pulumi.Output<List<SubResourceResponse>> httpListeners;
  /// Resource location.
  late final pulumi.Output<String?> location;
  /// Describes the managedRules structure.
  late final pulumi.Output<ManagedRulesDefinitionResponse> managedRules;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// A collection of references to application gateway path rules.
  late final pulumi.Output<List<SubResourceResponse>> pathBasedRules;
  /// The PolicySettings for policy.
  late final pulumi.Output<PolicySettingsResponse?> policySettings;
  /// The provisioning state of the web application firewall policy resource.
  late final pulumi.Output<String> provisioningState;
  /// Resource status of the policy.
  late final pulumi.Output<String> resourceState;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [WebApplicationFirewallPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [WebApplicationFirewallPolicy]. {@macro pulumi_network_web_application_firewall_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  WebApplicationFirewallPolicy(
    String name, {
    WebApplicationFirewallPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:WebApplicationFirewallPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationGatewayForContainers = registerOutput<List<ApplicationGatewayForContainersReferenceDefinitionResponse>>('applicationGatewayForContainers');
    this.applicationGateways = registerOutput<List<ApplicationGatewayResponse>>('applicationGateways');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.customRules = registerOutput<List<WebApplicationFirewallCustomRuleResponse>?>('customRules');
    this.etag = registerOutput<String>('etag');
    this.httpListeners = registerOutput<List<SubResourceResponse>>('httpListeners');
    this.location = registerOutput<String?>('location');
    this.managedRules = registerOutput<ManagedRulesDefinitionResponse>('managedRules');
    this.name = registerOutput<String>('name');
    this.pathBasedRules = registerOutput<List<SubResourceResponse>>('pathBasedRules');
    this.policySettings = registerOutput<PolicySettingsResponse?>('policySettings');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.resourceState = registerOutput<String>('resourceState');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
