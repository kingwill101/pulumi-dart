import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_args.dart';
import 'firewall_policy_custom_rule.dart';
import 'firewall_policy_managed_rule.dart';
import 'firewall_policy_state.dart';

/// !> **Note:** This deploys an Azure Front Door (classic) resource which has been deprecated and will receive security updates only. Please migrate your existing Azure Front Door (classic) deployments to the new Azure Front Door (standard/premium) resources. For your convenience, the service team has exposed a `Front Door Classic` to `Front Door Standard/Premium` [migration tool](https://learn.microsoft.com/azure/frontdoor/tier-migration) to allow you to migrate your existing `Front Door Classic` instances to the new `Front Door Standard/Premium` product tiers.
///
/// Manages an Azure Front Door (classic) Web Application Firewall Policy instance.
///
/// !> **Note:** Azure rolled out a breaking change on Friday 9th April 2021 which may cause issues with the CDN/FrontDoor resources. More information is available in this GitHub issue - unfortunately this may necessitate a breaking change to the CDN and Front Door resources, more information will be posted in the GitHub issue as the necessary changes are identified.
///
/// !> **Note:** The creation of new Azure Front Door (classic) resources is no longer supported following its deprecation on `April 1, 2025`. However, modifications to existing Azure Front Door (classic) resources will continue to be supported until the API reaches full retirement on `March 31, 2027`.
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
/// const exampleFirewallPolicy = new azure.frontdoor.FirewallPolicy("example", {
///     name: "examplefdwafpolicy",
///     resourceGroupName: example.name,
///     enabled: true,
///     mode: "Prevention",
///     redirectUrl: "https://www.contoso.com",
///     customBlockResponseStatusCode: 403,
///     customBlockResponseBody: "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
///     customRules: [
///         {
///             name: "Rule1",
///             enabled: true,
///             priority: 1,
///             rateLimitDurationInMinutes: 1,
///             rateLimitThreshold: 10,
///             type: "MatchRule",
///             action: "Block",
///             matchConditions: [{
///                 matchVariable: "RemoteAddr",
///                 operator: "IPMatch",
///                 negationCondition: false,
///                 matchValues: [
///                     "192.168.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///             }],
///         },
///         {
///             name: "Rule2",
///             enabled: true,
///             priority: 2,
///             rateLimitDurationInMinutes: 1,
///             rateLimitThreshold: 10,
///             type: "MatchRule",
///             action: "Block",
///             matchConditions: [
///                 {
///                     matchVariable: "RemoteAddr",
///                     operator: "IPMatch",
///                     negationCondition: false,
///                     matchValues: ["192.168.1.0/24"],
///                 },
///                 {
///                     matchVariable: "RequestHeader",
///                     selector: "UserAgent",
///                     operator: "Contains",
///                     negationCondition: false,
///                     matchValues: ["windows"],
///                     transforms: [
///                         "Lowercase",
///                         "Trim",
///                     ],
///                 },
///             ],
///         },
///     ],
///     managedRules: [
///         {
///             type: "DefaultRuleSet",
///             version: "1.0",
///             exclusions: [{
///                 matchVariable: "QueryStringArgNames",
///                 operator: "Equals",
///                 selector: "not_suspicious",
///             }],
///             overrides: [
///                 {
///                     ruleGroupName: "PHP",
///                     rules: [{
///                         ruleId: "933100",
///                         enabled: false,
///                         action: "Block",
///                     }],
///                 },
///                 {
///                     ruleGroupName: "SQLI",
///                     exclusions: [{
///                         matchVariable: "QueryStringArgNames",
///                         operator: "Equals",
///                         selector: "really_not_suspicious",
///                     }],
///                     rules: [{
///                         ruleId: "942200",
///                         action: "Block",
///                         exclusions: [{
///                             matchVariable: "QueryStringArgNames",
///                             operator: "Equals",
///                             selector: "innocent",
///                         }],
///                     }],
///                 },
///             ],
///         },
///         {
///             type: "Microsoft_BotManagerRuleSet",
///             version: "1.0",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-rg",
///     location="West Europe")
/// example_firewall_policy = azure.frontdoor.FirewallPolicy("example",
///     name="examplefdwafpolicy",
///     resource_group_name=example.name,
///     enabled=True,
///     mode="Prevention",
///     redirect_url="https://www.contoso.com",
///     custom_block_response_status_code=403,
///     custom_block_response_body="PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
///     custom_rules=[
///         {
///             "name": "Rule1",
///             "enabled": True,
///             "priority": 1,
///             "rate_limit_duration_in_minutes": 1,
///             "rate_limit_threshold": 10,
///             "type": "MatchRule",
///             "action": "Block",
///             "match_conditions": [{
///                 "match_variable": "RemoteAddr",
///                 "operator": "IPMatch",
///                 "negation_condition": False,
///                 "match_values": [
///                     "192.168.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///             }],
///         },
///         {
///             "name": "Rule2",
///             "enabled": True,
///             "priority": 2,
///             "rate_limit_duration_in_minutes": 1,
///             "rate_limit_threshold": 10,
///             "type": "MatchRule",
///             "action": "Block",
///             "match_conditions": [
///                 {
///                     "match_variable": "RemoteAddr",
///                     "operator": "IPMatch",
///                     "negation_condition": False,
///                     "match_values": ["192.168.1.0/24"],
///                 },
///                 {
///                     "match_variable": "RequestHeader",
///                     "selector": "UserAgent",
///                     "operator": "Contains",
///                     "negation_condition": False,
///                     "match_values": ["windows"],
///                     "transforms": [
///                         "Lowercase",
///                         "Trim",
///                     ],
///                 },
///             ],
///         },
///     ],
///     managed_rules=[
///         {
///             "type": "DefaultRuleSet",
///             "version": "1.0",
///             "exclusions": [{
///                 "match_variable": "QueryStringArgNames",
///                 "operator": "Equals",
///                 "selector": "not_suspicious",
///             }],
///             "overrides": [
///                 {
///                     "rule_group_name": "PHP",
///                     "rules": [{
///                         "rule_id": "933100",
///                         "enabled": False,
///                         "action": "Block",
///                     }],
///                 },
///                 {
///                     "rule_group_name": "SQLI",
///                     "exclusions": [{
///                         "match_variable": "QueryStringArgNames",
///                         "operator": "Equals",
///                         "selector": "really_not_suspicious",
///                     }],
///                     "rules": [{
///                         "rule_id": "942200",
///                         "action": "Block",
///                         "exclusions": [{
///                             "match_variable": "QueryStringArgNames",
///                             "operator": "Equals",
///                             "selector": "innocent",
///                         }],
///                     }],
///                 },
///             ],
///         },
///         {
///             "type": "Microsoft_BotManagerRuleSet",
///             "version": "1.0",
///         },
///     ])
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
///     var exampleFirewallPolicy = new Azure.FrontDoor.FirewallPolicy("example", new()
///     {
///         Name = "examplefdwafpolicy",
///         ResourceGroupName = example.Name,
///         Enabled = true,
///         Mode = "Prevention",
///         RedirectUrl = "https://www.contoso.com",
///         CustomBlockResponseStatusCode = 403,
///         CustomBlockResponseBody = "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
///         CustomRules = new[]
///         {
///             new Azure.FrontDoor.Inputs.FirewallPolicyCustomRuleArgs
///             {
///                 Name = "Rule1",
///                 Enabled = true,
///                 Priority = 1,
///                 RateLimitDurationInMinutes = 1,
///                 RateLimitThreshold = 10,
///                 Type = "MatchRule",
///                 Action = "Block",
///                 MatchConditions = new[]
///                 {
///                     new Azure.FrontDoor.Inputs.FirewallPolicyCustomRuleMatchConditionArgs
///                     {
///                         MatchVariable = "RemoteAddr",
///                         Operator = "IPMatch",
///                         NegationCondition = false,
///                         MatchValues = new[]
///                         {
///                             "192.168.1.0/24",
///                             "10.0.0.0/24",
///                         },
///                     },
///                 },
///             },
///             new Azure.FrontDoor.Inputs.FirewallPolicyCustomRuleArgs
///             {
///                 Name = "Rule2",
///                 Enabled = true,
///                 Priority = 2,
///                 RateLimitDurationInMinutes = 1,
///                 RateLimitThreshold = 10,
///                 Type = "MatchRule",
///                 Action = "Block",
///                 MatchConditions = new[]
///                 {
///                     new Azure.FrontDoor.Inputs.FirewallPolicyCustomRuleMatchConditionArgs
///                     {
///                         MatchVariable = "RemoteAddr",
///                         Operator = "IPMatch",
///                         NegationCondition = false,
///                         MatchValues = new[]
///                         {
///                             "192.168.1.0/24",
///                         },
///                     },
///                     new Azure.FrontDoor.Inputs.FirewallPolicyCustomRuleMatchConditionArgs
///                     {
///                         MatchVariable = "RequestHeader",
///                         Selector = "UserAgent",
///                         Operator = "Contains",
///                         NegationCondition = false,
///                         MatchValues = new[]
///                         {
///                             "windows",
///                         },
///                         Transforms = new[]
///                         {
///                             "Lowercase",
///                             "Trim",
///                         },
///                     },
///                 },
///             },
///         },
///         ManagedRules = new[]
///         {
///             new Azure.FrontDoor.Inputs.FirewallPolicyManagedRuleArgs
///             {
///                 Type = "DefaultRuleSet",
///                 Version = "1.0",
///                 Exclusions = new[]
///                 {
///                     new Azure.FrontDoor.Inputs.FirewallPolicyManagedRuleExclusionArgs
///                     {
///                         MatchVariable = "QueryStringArgNames",
///                         Operator = "Equals",
///                         Selector = "not_suspicious",
///                     },
///                 },
///                 Overrides = new[]
///                 {
///                     new Azure.FrontDoor.Inputs.FirewallPolicyManagedRuleOverrideArgs
///                     {
///                         RuleGroupName = "PHP",
///                         Rules = new[]
///                         {
///                             new Azure.FrontDoor.Inputs.FirewallPolicyManagedRuleOverrideRuleArgs
///                             {
///                                 RuleId = "933100",
///                                 Enabled = false,
///                                 Action = "Block",
///                             },
///                         },
///                     },
///                     new Azure.FrontDoor.Inputs.FirewallPolicyManagedRuleOverrideArgs
///                     {
///                         RuleGroupName = "SQLI",
///                         Exclusions = new[]
///                         {
///                             new Azure.FrontDoor.Inputs.FirewallPolicyManagedRuleOverrideExclusionArgs
///                             {
///                                 MatchVariable = "QueryStringArgNames",
///                                 Operator = "Equals",
///                                 Selector = "really_not_suspicious",
///                             },
///                         },
///                         Rules = new[]
///                         {
///                             new Azure.FrontDoor.Inputs.FirewallPolicyManagedRuleOverrideRuleArgs
///                             {
///                                 RuleId = "942200",
///                                 Action = "Block",
///                                 Exclusions = new[]
///                                 {
///                                     new Azure.FrontDoor.Inputs.FirewallPolicyManagedRuleOverrideRuleExclusionArgs
///                                     {
///                                         MatchVariable = "QueryStringArgNames",
///                                         Operator = "Equals",
///                                         Selector = "innocent",
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Azure.FrontDoor.Inputs.FirewallPolicyManagedRuleArgs
///             {
///                 Type = "Microsoft_BotManagerRuleSet",
///                 Version = "1.0",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/frontdoor"
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
/// 		_, err = frontdoor.NewFirewallPolicy(ctx, "example", &frontdoor.FirewallPolicyArgs{
/// 			Name:                          pulumi.String("examplefdwafpolicy"),
/// 			ResourceGroupName:             example.Name,
/// 			Enabled:                       pulumi.Bool(true),
/// 			Mode:                          pulumi.String("Prevention"),
/// 			RedirectUrl:                   pulumi.String("https://www.contoso.com"),
/// 			CustomBlockResponseStatusCode: pulumi.Int(403),
/// 			CustomBlockResponseBody:       pulumi.String("PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg=="),
/// 			CustomRules: frontdoor.FirewallPolicyCustomRuleArray{
/// 				&frontdoor.FirewallPolicyCustomRuleArgs{
/// 					Name:                       pulumi.String("Rule1"),
/// 					Enabled:                    pulumi.Bool(true),
/// 					Priority:                   pulumi.Int(1),
/// 					RateLimitDurationInMinutes: pulumi.Int(1),
/// 					RateLimitThreshold:         pulumi.Int(10),
/// 					Type:                       pulumi.String("MatchRule"),
/// 					Action:                     pulumi.String("Block"),
/// 					MatchConditions: frontdoor.FirewallPolicyCustomRuleMatchConditionArray{
/// 						&frontdoor.FirewallPolicyCustomRuleMatchConditionArgs{
/// 							MatchVariable:     pulumi.String("RemoteAddr"),
/// 							Operator:          pulumi.String("IPMatch"),
/// 							NegationCondition: pulumi.Bool(false),
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("192.168.1.0/24"),
/// 								pulumi.String("10.0.0.0/24"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&frontdoor.FirewallPolicyCustomRuleArgs{
/// 					Name:                       pulumi.String("Rule2"),
/// 					Enabled:                    pulumi.Bool(true),
/// 					Priority:                   pulumi.Int(2),
/// 					RateLimitDurationInMinutes: pulumi.Int(1),
/// 					RateLimitThreshold:         pulumi.Int(10),
/// 					Type:                       pulumi.String("MatchRule"),
/// 					Action:                     pulumi.String("Block"),
/// 					MatchConditions: frontdoor.FirewallPolicyCustomRuleMatchConditionArray{
/// 						&frontdoor.FirewallPolicyCustomRuleMatchConditionArgs{
/// 							MatchVariable:     pulumi.String("RemoteAddr"),
/// 							Operator:          pulumi.String("IPMatch"),
/// 							NegationCondition: pulumi.Bool(false),
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("192.168.1.0/24"),
/// 							},
/// 						},
/// 						&frontdoor.FirewallPolicyCustomRuleMatchConditionArgs{
/// 							MatchVariable:     pulumi.String("RequestHeader"),
/// 							Selector:          pulumi.String("UserAgent"),
/// 							Operator:          pulumi.String("Contains"),
/// 							NegationCondition: pulumi.Bool(false),
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("windows"),
/// 							},
/// 							Transforms: pulumi.StringArray{
/// 								pulumi.String("Lowercase"),
/// 								pulumi.String("Trim"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ManagedRules: frontdoor.FirewallPolicyManagedRuleArray{
/// 				&frontdoor.FirewallPolicyManagedRuleArgs{
/// 					Type:    pulumi.String("DefaultRuleSet"),
/// 					Version: pulumi.String("1.0"),
/// 					Exclusions: frontdoor.FirewallPolicyManagedRuleExclusionArray{
/// 						&frontdoor.FirewallPolicyManagedRuleExclusionArgs{
/// 							MatchVariable: pulumi.String("QueryStringArgNames"),
/// 							Operator:      pulumi.String("Equals"),
/// 							Selector:      pulumi.String("not_suspicious"),
/// 						},
/// 					},
/// 					Overrides: frontdoor.FirewallPolicyManagedRuleOverrideArray{
/// 						&frontdoor.FirewallPolicyManagedRuleOverrideArgs{
/// 							RuleGroupName: pulumi.String("PHP"),
/// 							Rules: frontdoor.FirewallPolicyManagedRuleOverrideRuleArray{
/// 								&frontdoor.FirewallPolicyManagedRuleOverrideRuleArgs{
/// 									RuleId:  pulumi.String("933100"),
/// 									Enabled: pulumi.Bool(false),
/// 									Action:  pulumi.String("Block"),
/// 								},
/// 							},
/// 						},
/// 						&frontdoor.FirewallPolicyManagedRuleOverrideArgs{
/// 							RuleGroupName: pulumi.String("SQLI"),
/// 							Exclusions: frontdoor.FirewallPolicyManagedRuleOverrideExclusionArray{
/// 								&frontdoor.FirewallPolicyManagedRuleOverrideExclusionArgs{
/// 									MatchVariable: pulumi.String("QueryStringArgNames"),
/// 									Operator:      pulumi.String("Equals"),
/// 									Selector:      pulumi.String("really_not_suspicious"),
/// 								},
/// 							},
/// 							Rules: frontdoor.FirewallPolicyManagedRuleOverrideRuleArray{
/// 								&frontdoor.FirewallPolicyManagedRuleOverrideRuleArgs{
/// 									RuleId: pulumi.String("942200"),
/// 									Action: pulumi.String("Block"),
/// 									Exclusions: frontdoor.FirewallPolicyManagedRuleOverrideRuleExclusionArray{
/// 										&frontdoor.FirewallPolicyManagedRuleOverrideRuleExclusionArgs{
/// 											MatchVariable: pulumi.String("QueryStringArgNames"),
/// 											Operator:      pulumi.String("Equals"),
/// 											Selector:      pulumi.String("innocent"),
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&frontdoor.FirewallPolicyManagedRuleArgs{
/// 					Type:    pulumi.String("Microsoft_BotManagerRuleSet"),
/// 					Version: pulumi.String("1.0"),
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
/// import com.pulumi.azure.frontdoor.FirewallPolicy;
/// import com.pulumi.azure.frontdoor.FirewallPolicyArgs;
/// import com.pulumi.azure.frontdoor.inputs.FirewallPolicyCustomRuleArgs;
/// import com.pulumi.azure.frontdoor.inputs.FirewallPolicyManagedRuleArgs;
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
///         var exampleFirewallPolicy = new FirewallPolicy("exampleFirewallPolicy", FirewallPolicyArgs.builder()
///             .name("examplefdwafpolicy")
///             .resourceGroupName(example.name())
///             .enabled(true)
///             .mode("Prevention")
///             .redirectUrl("https://www.contoso.com")
///             .customBlockResponseStatusCode(403)
///             .customBlockResponseBody("PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==")
///             .customRules(
///                 FirewallPolicyCustomRuleArgs.builder()
///                     .name("Rule1")
///                     .enabled(true)
///                     .priority(1)
///                     .rateLimitDurationInMinutes(1)
///                     .rateLimitThreshold(10)
///                     .type("MatchRule")
///                     .action("Block")
///                     .matchConditions(FirewallPolicyCustomRuleMatchConditionArgs.builder()
///                         .matchVariable("RemoteAddr")
///                         .operator("IPMatch")
///                         .negationCondition(false)
///                         .matchValues(
///                             "192.168.1.0/24",
///                             "10.0.0.0/24")
///                         .build())
///                     .build(),
///                 FirewallPolicyCustomRuleArgs.builder()
///                     .name("Rule2")
///                     .enabled(true)
///                     .priority(2)
///                     .rateLimitDurationInMinutes(1)
///                     .rateLimitThreshold(10)
///                     .type("MatchRule")
///                     .action("Block")
///                     .matchConditions(
///                         FirewallPolicyCustomRuleMatchConditionArgs.builder()
///                             .matchVariable("RemoteAddr")
///                             .operator("IPMatch")
///                             .negationCondition(false)
///                             .matchValues("192.168.1.0/24")
///                             .build(),
///                         FirewallPolicyCustomRuleMatchConditionArgs.builder()
///                             .matchVariable("RequestHeader")
///                             .selector("UserAgent")
///                             .operator("Contains")
///                             .negationCondition(false)
///                             .matchValues("windows")
///                             .transforms(
///                                 "Lowercase",
///                                 "Trim")
///                             .build())
///                     .build())
///             .managedRules(
///                 FirewallPolicyManagedRuleArgs.builder()
///                     .type("DefaultRuleSet")
///                     .version("1.0")
///                     .exclusions(FirewallPolicyManagedRuleExclusionArgs.builder()
///                         .matchVariable("QueryStringArgNames")
///                         .operator("Equals")
///                         .selector("not_suspicious")
///                         .build())
///                     .overrides(
///                         FirewallPolicyManagedRuleOverrideArgs.builder()
///                             .ruleGroupName("PHP")
///                             .rules(FirewallPolicyManagedRuleOverrideRuleArgs.builder()
///                                 .ruleId("933100")
///                                 .enabled(false)
///                                 .action("Block")
///                                 .build())
///                             .build(),
///                         FirewallPolicyManagedRuleOverrideArgs.builder()
///                             .ruleGroupName("SQLI")
///                             .exclusions(FirewallPolicyManagedRuleOverrideExclusionArgs.builder()
///                                 .matchVariable("QueryStringArgNames")
///                                 .operator("Equals")
///                                 .selector("really_not_suspicious")
///                                 .build())
///                             .rules(FirewallPolicyManagedRuleOverrideRuleArgs.builder()
///                                 .ruleId("942200")
///                                 .action("Block")
///                                 .exclusions(FirewallPolicyManagedRuleOverrideRuleExclusionArgs.builder()
///                                     .matchVariable("QueryStringArgNames")
///                                     .operator("Equals")
///                                     .selector("innocent")
///                                     .build())
///                                 .build())
///                             .build())
///                     .build(),
///                 FirewallPolicyManagedRuleArgs.builder()
///                     .type("Microsoft_BotManagerRuleSet")
///                     .version("1.0")
///                     .build())
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
///   exampleFirewallPolicy:
///     type: azure:frontdoor:FirewallPolicy
///     name: example
///     properties:
///       name: examplefdwafpolicy
///       resourceGroupName: ${example.name}
///       enabled: true
///       mode: Prevention
///       redirectUrl: https://www.contoso.com
///       customBlockResponseStatusCode: 403
///       customBlockResponseBody: PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==
///       customRules:
///         - name: Rule1
///           enabled: true
///           priority: 1
///           rateLimitDurationInMinutes: 1
///           rateLimitThreshold: 10
///           type: MatchRule
///           action: Block
///           matchConditions:
///             - matchVariable: RemoteAddr
///               operator: IPMatch
///               negationCondition: false
///               matchValues:
///                 - 192.168.1.0/24
///                 - 10.0.0.0/24
///         - name: Rule2
///           enabled: true
///           priority: 2
///           rateLimitDurationInMinutes: 1
///           rateLimitThreshold: 10
///           type: MatchRule
///           action: Block
///           matchConditions:
///             - matchVariable: RemoteAddr
///               operator: IPMatch
///               negationCondition: false
///               matchValues:
///                 - 192.168.1.0/24
///             - matchVariable: RequestHeader
///               selector: UserAgent
///               operator: Contains
///               negationCondition: false
///               matchValues:
///                 - windows
///               transforms:
///                 - Lowercase
///                 - Trim
///       managedRules:
///         - type: DefaultRuleSet
///           version: '1.0'
///           exclusions:
///             - matchVariable: QueryStringArgNames
///               operator: Equals
///               selector: not_suspicious
///           overrides:
///             - ruleGroupName: PHP
///               rules:
///                 - ruleId: '933100'
///                   enabled: false
///                   action: Block
///             - ruleGroupName: SQLI
///               exclusions:
///                 - matchVariable: QueryStringArgNames
///                   operator: Equals
///                   selector: really_not_suspicious
///               rules:
///                 - ruleId: '942200'
///                   action: Block
///                   exclusions:
///                     - matchVariable: QueryStringArgNames
///                       operator: Equals
///                       selector: innocent
///         - type: Microsoft_BotManagerRuleSet
///           version: '1.0'
/// ```
///
///
/// ## Import
///
/// FrontDoor Web Application Firewall Policy can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:frontdoor/firewallPolicy:FirewallPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/examplefdwafpolicy
/// ```
class FirewallPolicy extends pulumi.CustomResource {
  /// If a `custom_rule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  late final pulumi.Output<String?> customBlockResponseBody;
  /// If a `custom_rule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, or `429`.
  late final pulumi.Output<int?> customBlockResponseStatusCode;
  /// One or more `custom_rule` blocks as defined below.
  late final pulumi.Output<List<FirewallPolicyCustomRule>?> customRules;
  /// Is the policy a enabled state or disabled state. Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The Frontend Endpoints associated with this Front Door Web Application Firewall policy.
  late final pulumi.Output<List<String>> frontendEndpointIds;
  /// The Azure Region where this Front Door Firewall Policy exists.
  late final pulumi.Output<String> location;
  /// One or more `managed_rule` blocks as defined below.
  late final pulumi.Output<List<FirewallPolicyManagedRule>?> managedRules;
  /// The firewall policy mode. Possible values are `Detection`, `Prevention`. Defaults to `Prevention`.
  late final pulumi.Output<String?> mode;
  /// The name of the policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// If action type is redirect, this field represents redirect URL for the client.
  late final pulumi.Output<String?> redirectUrl;
  /// The name of the resource group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A mapping of tags to assign to the Web Application Firewall Policy.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [FirewallPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FirewallPolicy]. {@macro pulumi_frontdoor_firewall_policy_firewall_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FirewallPolicy(
    String name, {
    FirewallPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:frontdoor/firewallPolicy:FirewallPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customBlockResponseBody = registerOutput<String?>('customBlockResponseBody');
    this.customBlockResponseStatusCode = registerOutput<int?>('customBlockResponseStatusCode');
    this.customRules = registerOutput<List<FirewallPolicyCustomRule>?>('customRules');
    this.enabled = registerOutput<bool?>('enabled');
    this.frontendEndpointIds = registerOutput<List<String>>('frontendEndpointIds');
    this.location = registerOutput<String>('location');
    this.managedRules = registerOutput<List<FirewallPolicyManagedRule>?>('managedRules');
    this.mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    this.redirectUrl = registerOutput<String?>('redirectUrl');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [FirewallPolicy] resource's state with the given [name] and [id].
  static FirewallPolicy get(
    String name,
    pulumi.Input<String> id, {
    FirewallPolicyState? state,
  }) {
    return FirewallPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FirewallPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:frontdoor/firewallPolicy:FirewallPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customBlockResponseBody = registerOutput<String?>('customBlockResponseBody');
    this.customBlockResponseStatusCode = registerOutput<int?>('customBlockResponseStatusCode');
    this.customRules = registerOutput<List<FirewallPolicyCustomRule>?>('customRules');
    this.enabled = registerOutput<bool?>('enabled');
    this.frontendEndpointIds = registerOutput<List<String>>('frontendEndpointIds');
    this.location = registerOutput<String>('location');
    this.managedRules = registerOutput<List<FirewallPolicyManagedRule>?>('managedRules');
    this.mode = registerOutput<String?>('mode');
    this.name = registerOutput<String>('name');
    this.redirectUrl = registerOutput<String?>('redirectUrl');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
