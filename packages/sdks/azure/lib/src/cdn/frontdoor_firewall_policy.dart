import 'package:pulumi/pulumi.dart' as pulumi;
import 'frontdoor_firewall_policy_args.dart';
import 'frontdoor_firewall_policy_log_scrubbing.dart';
import 'frontdoor_firewall_policy_state.dart';

/// Manages a Front Door (standard/premium) Firewall Policy instance.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-cdn-frontdoor",
///     location: "West Europe",
/// });
/// const exampleFrontdoorProfile = new azure.cdn.FrontdoorProfile("example", {
///     name: "example-profile",
///     resourceGroupName: example.name,
///     skuName: "Premium_AzureFrontDoor",
/// });
/// const exampleFrontdoorFirewallPolicy = new azure.cdn.FrontdoorFirewallPolicy("example", {
///     name: "examplecdnfdwafpolicy",
///     resourceGroupName: example.name,
///     skuName: exampleFrontdoorProfile.skuName,
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
///                 matchVariable: "SocketAddr",
///                 operator: "IPMatch",
///                 negationCondition: false,
///                 matchValues: [
///                     "10.0.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///             }],
///         },
///         {
///             name: "Rule2",
///             enabled: true,
///             priority: 50,
///             rateLimitDurationInMinutes: 1,
///             rateLimitThreshold: 10,
///             type: "MatchRule",
///             action: "Block",
///             matchConditions: [
///                 {
///                     matchVariable: "SocketAddr",
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
///             action: "Log",
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
///             version: "1.1",
///             action: "Log",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-cdn-frontdoor",
///     location="West Europe")
/// example_frontdoor_profile = azure.cdn.FrontdoorProfile("example",
///     name="example-profile",
///     resource_group_name=example.name,
///     sku_name="Premium_AzureFrontDoor")
/// example_frontdoor_firewall_policy = azure.cdn.FrontdoorFirewallPolicy("example",
///     name="examplecdnfdwafpolicy",
///     resource_group_name=example.name,
///     sku_name=example_frontdoor_profile.sku_name,
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
///                 "match_variable": "SocketAddr",
///                 "operator": "IPMatch",
///                 "negation_condition": False,
///                 "match_values": [
///                     "10.0.1.0/24",
///                     "10.0.0.0/24",
///                 ],
///             }],
///         },
///         {
///             "name": "Rule2",
///             "enabled": True,
///             "priority": 50,
///             "rate_limit_duration_in_minutes": 1,
///             "rate_limit_threshold": 10,
///             "type": "MatchRule",
///             "action": "Block",
///             "match_conditions": [
///                 {
///                     "match_variable": "SocketAddr",
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
///             "action": "Log",
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
///             "version": "1.1",
///             "action": "Log",
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
///         Name = "example-cdn-frontdoor",
///         Location = "West Europe",
///     });
///
///     var exampleFrontdoorProfile = new Azure.Cdn.FrontdoorProfile("example", new()
///     {
///         Name = "example-profile",
///         ResourceGroupName = example.Name,
///         SkuName = "Premium_AzureFrontDoor",
///     });
///
///     var exampleFrontdoorFirewallPolicy = new Azure.Cdn.FrontdoorFirewallPolicy("example", new()
///     {
///         Name = "examplecdnfdwafpolicy",
///         ResourceGroupName = example.Name,
///         SkuName = exampleFrontdoorProfile.SkuName,
///         Enabled = true,
///         Mode = "Prevention",
///         RedirectUrl = "https://www.contoso.com",
///         CustomBlockResponseStatusCode = 403,
///         CustomBlockResponseBody = "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==",
///         CustomRules = new[]
///         {
///             new Azure.Cdn.Inputs.FrontdoorFirewallPolicyCustomRuleArgs
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
///                     new Azure.Cdn.Inputs.FrontdoorFirewallPolicyCustomRuleMatchConditionArgs
///                     {
///                         MatchVariable = "SocketAddr",
///                         Operator = "IPMatch",
///                         NegationCondition = false,
///                         MatchValues = new[]
///                         {
///                             "10.0.1.0/24",
///                             "10.0.0.0/24",
///                         },
///                     },
///                 },
///             },
///             new Azure.Cdn.Inputs.FrontdoorFirewallPolicyCustomRuleArgs
///             {
///                 Name = "Rule2",
///                 Enabled = true,
///                 Priority = 50,
///                 RateLimitDurationInMinutes = 1,
///                 RateLimitThreshold = 10,
///                 Type = "MatchRule",
///                 Action = "Block",
///                 MatchConditions = new[]
///                 {
///                     new Azure.Cdn.Inputs.FrontdoorFirewallPolicyCustomRuleMatchConditionArgs
///                     {
///                         MatchVariable = "SocketAddr",
///                         Operator = "IPMatch",
///                         NegationCondition = false,
///                         MatchValues = new[]
///                         {
///                             "192.168.1.0/24",
///                         },
///                     },
///                     new Azure.Cdn.Inputs.FrontdoorFirewallPolicyCustomRuleMatchConditionArgs
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
///             new Azure.Cdn.Inputs.FrontdoorFirewallPolicyManagedRuleArgs
///             {
///                 Type = "DefaultRuleSet",
///                 Version = "1.0",
///                 Action = "Log",
///                 Exclusions = new[]
///                 {
///                     new Azure.Cdn.Inputs.FrontdoorFirewallPolicyManagedRuleExclusionArgs
///                     {
///                         MatchVariable = "QueryStringArgNames",
///                         Operator = "Equals",
///                         Selector = "not_suspicious",
///                     },
///                 },
///                 Overrides = new[]
///                 {
///                     new Azure.Cdn.Inputs.FrontdoorFirewallPolicyManagedRuleOverrideArgs
///                     {
///                         RuleGroupName = "PHP",
///                         Rules = new[]
///                         {
///                             new Azure.Cdn.Inputs.FrontdoorFirewallPolicyManagedRuleOverrideRuleArgs
///                             {
///                                 RuleId = "933100",
///                                 Enabled = false,
///                                 Action = "Block",
///                             },
///                         },
///                     },
///                     new Azure.Cdn.Inputs.FrontdoorFirewallPolicyManagedRuleOverrideArgs
///                     {
///                         RuleGroupName = "SQLI",
///                         Exclusions = new[]
///                         {
///                             new Azure.Cdn.Inputs.FrontdoorFirewallPolicyManagedRuleOverrideExclusionArgs
///                             {
///                                 MatchVariable = "QueryStringArgNames",
///                                 Operator = "Equals",
///                                 Selector = "really_not_suspicious",
///                             },
///                         },
///                         Rules = new[]
///                         {
///                             new Azure.Cdn.Inputs.FrontdoorFirewallPolicyManagedRuleOverrideRuleArgs
///                             {
///                                 RuleId = "942200",
///                                 Action = "Block",
///                                 Exclusions = new[]
///                                 {
///                                     new Azure.Cdn.Inputs.FrontdoorFirewallPolicyManagedRuleOverrideRuleExclusionArgs
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
///             new Azure.Cdn.Inputs.FrontdoorFirewallPolicyManagedRuleArgs
///             {
///                 Type = "Microsoft_BotManagerRuleSet",
///                 Version = "1.1",
///                 Action = "Log",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/cdn"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-cdn-frontdoor"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFrontdoorProfile, err := cdn.NewFrontdoorProfile(ctx, "example", &cdn.FrontdoorProfileArgs{
/// 			Name:              pulumi.String("example-profile"),
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("Premium_AzureFrontDoor"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cdn.NewFrontdoorFirewallPolicy(ctx, "example", &cdn.FrontdoorFirewallPolicyArgs{
/// 			Name:                          pulumi.String("examplecdnfdwafpolicy"),
/// 			ResourceGroupName:             example.Name,
/// 			SkuName:                       exampleFrontdoorProfile.SkuName,
/// 			Enabled:                       pulumi.Bool(true),
/// 			Mode:                          pulumi.String("Prevention"),
/// 			RedirectUrl:                   pulumi.String("https://www.contoso.com"),
/// 			CustomBlockResponseStatusCode: pulumi.Int(403),
/// 			CustomBlockResponseBody:       pulumi.String("PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg=="),
/// 			CustomRules: cdn.FrontdoorFirewallPolicyCustomRuleArray{
/// 				&cdn.FrontdoorFirewallPolicyCustomRuleArgs{
/// 					Name:                       pulumi.String("Rule1"),
/// 					Enabled:                    pulumi.Bool(true),
/// 					Priority:                   pulumi.Int(1),
/// 					RateLimitDurationInMinutes: pulumi.Int(1),
/// 					RateLimitThreshold:         pulumi.Int(10),
/// 					Type:                       pulumi.String("MatchRule"),
/// 					Action:                     pulumi.String("Block"),
/// 					MatchConditions: cdn.FrontdoorFirewallPolicyCustomRuleMatchConditionArray{
/// 						&cdn.FrontdoorFirewallPolicyCustomRuleMatchConditionArgs{
/// 							MatchVariable:     pulumi.String("SocketAddr"),
/// 							Operator:          pulumi.String("IPMatch"),
/// 							NegationCondition: pulumi.Bool(false),
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("10.0.1.0/24"),
/// 								pulumi.String("10.0.0.0/24"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&cdn.FrontdoorFirewallPolicyCustomRuleArgs{
/// 					Name:                       pulumi.String("Rule2"),
/// 					Enabled:                    pulumi.Bool(true),
/// 					Priority:                   pulumi.Int(50),
/// 					RateLimitDurationInMinutes: pulumi.Int(1),
/// 					RateLimitThreshold:         pulumi.Int(10),
/// 					Type:                       pulumi.String("MatchRule"),
/// 					Action:                     pulumi.String("Block"),
/// 					MatchConditions: cdn.FrontdoorFirewallPolicyCustomRuleMatchConditionArray{
/// 						&cdn.FrontdoorFirewallPolicyCustomRuleMatchConditionArgs{
/// 							MatchVariable:     pulumi.String("SocketAddr"),
/// 							Operator:          pulumi.String("IPMatch"),
/// 							NegationCondition: pulumi.Bool(false),
/// 							MatchValues: pulumi.StringArray{
/// 								pulumi.String("192.168.1.0/24"),
/// 							},
/// 						},
/// 						&cdn.FrontdoorFirewallPolicyCustomRuleMatchConditionArgs{
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
/// 			ManagedRules: cdn.FrontdoorFirewallPolicyManagedRuleArray{
/// 				&cdn.FrontdoorFirewallPolicyManagedRuleArgs{
/// 					Type:    pulumi.String("DefaultRuleSet"),
/// 					Version: pulumi.String("1.0"),
/// 					Action:  pulumi.String("Log"),
/// 					Exclusions: cdn.FrontdoorFirewallPolicyManagedRuleExclusionArray{
/// 						&cdn.FrontdoorFirewallPolicyManagedRuleExclusionArgs{
/// 							MatchVariable: pulumi.String("QueryStringArgNames"),
/// 							Operator:      pulumi.String("Equals"),
/// 							Selector:      pulumi.String("not_suspicious"),
/// 						},
/// 					},
/// 					Overrides: cdn.FrontdoorFirewallPolicyManagedRuleOverrideArray{
/// 						&cdn.FrontdoorFirewallPolicyManagedRuleOverrideArgs{
/// 							RuleGroupName: pulumi.String("PHP"),
/// 							Rules: cdn.FrontdoorFirewallPolicyManagedRuleOverrideRuleArray{
/// 								&cdn.FrontdoorFirewallPolicyManagedRuleOverrideRuleArgs{
/// 									RuleId:  pulumi.String("933100"),
/// 									Enabled: pulumi.Bool(false),
/// 									Action:  pulumi.String("Block"),
/// 								},
/// 							},
/// 						},
/// 						&cdn.FrontdoorFirewallPolicyManagedRuleOverrideArgs{
/// 							RuleGroupName: pulumi.String("SQLI"),
/// 							Exclusions: cdn.FrontdoorFirewallPolicyManagedRuleOverrideExclusionArray{
/// 								&cdn.FrontdoorFirewallPolicyManagedRuleOverrideExclusionArgs{
/// 									MatchVariable: pulumi.String("QueryStringArgNames"),
/// 									Operator:      pulumi.String("Equals"),
/// 									Selector:      pulumi.String("really_not_suspicious"),
/// 								},
/// 							},
/// 							Rules: cdn.FrontdoorFirewallPolicyManagedRuleOverrideRuleArray{
/// 								&cdn.FrontdoorFirewallPolicyManagedRuleOverrideRuleArgs{
/// 									RuleId: pulumi.String("942200"),
/// 									Action: pulumi.String("Block"),
/// 									Exclusions: cdn.FrontdoorFirewallPolicyManagedRuleOverrideRuleExclusionArray{
/// 										&cdn.FrontdoorFirewallPolicyManagedRuleOverrideRuleExclusionArgs{
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
/// 				&cdn.FrontdoorFirewallPolicyManagedRuleArgs{
/// 					Type:    pulumi.String("Microsoft_BotManagerRuleSet"),
/// 					Version: pulumi.String("1.1"),
/// 					Action:  pulumi.String("Log"),
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
///   name     = "example-cdn-frontdoor"
///   location = "West Europe"
/// }
/// resource "azure_cdn_frontdoorprofile" "example" {
///   name                = "example-profile"
///   resource_group_name = azure_core_resourcegroup.example.name
///   sku_name            = "Premium_AzureFrontDoor"
/// }
/// resource "azure_cdn_frontdoorfirewallpolicy" "example" {
///   name                              = "examplecdnfdwafpolicy"
///   resource_group_name               = azure_core_resourcegroup.example.name
///   sku_name                          = azure_cdn_frontdoorprofile.example.sku_name
///   enabled                           = true
///   mode                              = "Prevention"
///   redirect_url                      = "https://www.contoso.com"
///   custom_block_response_status_code = 403
///   custom_block_response_body        = "PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg=="
///   custom_rules {
///     name                           = "Rule1"
///     enabled                        = true
///     priority                       = 1
///     rate_limit_duration_in_minutes = 1
///     rate_limit_threshold           = 10
///     type                           = "MatchRule"
///     action                         = "Block"
///     match_conditions {
///       match_variable     = "SocketAddr"
///       operator           = "IPMatch"
///       negation_condition = false
///       match_values       = ["10.0.1.0/24", "10.0.0.0/24"]
///     }
///   }
///   custom_rules {
///     name                           = "Rule2"
///     enabled                        = true
///     priority                       = 50
///     rate_limit_duration_in_minutes = 1
///     rate_limit_threshold           = 10
///     type                           = "MatchRule"
///     action                         = "Block"
///     match_conditions {
///       match_variable     = "SocketAddr"
///       operator           = "IPMatch"
///       negation_condition = false
///       match_values       = ["192.168.1.0/24"]
///     }
///     match_conditions {
///       match_variable     = "RequestHeader"
///       selector           = "UserAgent"
///       operator           = "Contains"
///       negation_condition = false
///       match_values       = ["windows"]
///       transforms         = ["Lowercase", "Trim"]
///     }
///   }
///   managed_rules {
///     type    = "DefaultRuleSet"
///     version = "1.0"
///     action  = "Log"
///     exclusions {
///       match_variable = "QueryStringArgNames"
///       operator       = "Equals"
///       selector       = "not_suspicious"
///     }
///     overrides {
///       rule_group_name = "PHP"
///       rules {
///         rule_id = "933100"
///         enabled = false
///         action  = "Block"
///       }
///     }
///     overrides {
///       rule_group_name = "SQLI"
///       exclusions {
///         match_variable = "QueryStringArgNames"
///         operator       = "Equals"
///         selector       = "really_not_suspicious"
///       }
///       rules {
///         rule_id = "942200"
///         action  = "Block"
///         exclusions {
///           match_variable = "QueryStringArgNames"
///           operator       = "Equals"
///           selector       = "innocent"
///         }
///       }
///     }
///   }
///   managed_rules {
///     type    = "Microsoft_BotManagerRuleSet"
///     version = "1.1"
///     action  = "Log"
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
/// import com.pulumi.azure.cdn.FrontdoorProfile;
/// import com.pulumi.azure.cdn.FrontdoorProfileArgs;
/// import com.pulumi.azure.cdn.FrontdoorFirewallPolicy;
/// import com.pulumi.azure.cdn.FrontdoorFirewallPolicyArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyCustomRuleArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyCustomRuleMatchConditionArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyManagedRuleArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyManagedRuleExclusionArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyManagedRuleOverrideArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyManagedRuleOverrideRuleArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyManagedRuleOverrideExclusionArgs;
/// import com.pulumi.azure.cdn.inputs.FrontdoorFirewallPolicyManagedRuleOverrideRuleExclusionArgs;
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
///             .name("example-cdn-frontdoor")
///             .location("West Europe")
///             .build());
///
///         var exampleFrontdoorProfile = new FrontdoorProfile("exampleFrontdoorProfile", FrontdoorProfileArgs.builder()
///             .name("example-profile")
///             .resourceGroupName(example.name())
///             .skuName("Premium_AzureFrontDoor")
///             .build());
///
///         var exampleFrontdoorFirewallPolicy = new FrontdoorFirewallPolicy("exampleFrontdoorFirewallPolicy", FrontdoorFirewallPolicyArgs.builder()
///             .name("examplecdnfdwafpolicy")
///             .resourceGroupName(example.name())
///             .skuName(exampleFrontdoorProfile.skuName())
///             .enabled(true)
///             .mode("Prevention")
///             .redirectUrl("https://www.contoso.com")
///             .customBlockResponseStatusCode(403)
///             .customBlockResponseBody("PGh0bWw+CjxoZWFkZXI+PHRpdGxlPkhlbGxvPC90aXRsZT48L2hlYWRlcj4KPGJvZHk+CkhlbGxvIHdvcmxkCjwvYm9keT4KPC9odG1sPg==")
///             .customRules(
///                 FrontdoorFirewallPolicyCustomRuleArgs.builder()
///                     .name("Rule1")
///                     .enabled(true)
///                     .priority(1)
///                     .rateLimitDurationInMinutes(1)
///                     .rateLimitThreshold(10)
///                     .type("MatchRule")
///                     .action("Block")
///                     .matchConditions(FrontdoorFirewallPolicyCustomRuleMatchConditionArgs.builder()
///                         .matchVariable("SocketAddr")
///                         .operator("IPMatch")
///                         .negationCondition(false)
///                         .matchValues(
///                             "10.0.1.0/24",
///                             "10.0.0.0/24")
///                         .build())
///                     .build(),
///                 FrontdoorFirewallPolicyCustomRuleArgs.builder()
///                     .name("Rule2")
///                     .enabled(true)
///                     .priority(50)
///                     .rateLimitDurationInMinutes(1)
///                     .rateLimitThreshold(10)
///                     .type("MatchRule")
///                     .action("Block")
///                     .matchConditions(
///                         FrontdoorFirewallPolicyCustomRuleMatchConditionArgs.builder()
///                             .matchVariable("SocketAddr")
///                             .operator("IPMatch")
///                             .negationCondition(false)
///                             .matchValues("192.168.1.0/24")
///                             .build(),
///                         FrontdoorFirewallPolicyCustomRuleMatchConditionArgs.builder()
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
///                 FrontdoorFirewallPolicyManagedRuleArgs.builder()
///                     .type("DefaultRuleSet")
///                     .version("1.0")
///                     .action("Log")
///                     .exclusions(FrontdoorFirewallPolicyManagedRuleExclusionArgs.builder()
///                         .matchVariable("QueryStringArgNames")
///                         .operator("Equals")
///                         .selector("not_suspicious")
///                         .build())
///                     .overrides(
///                         FrontdoorFirewallPolicyManagedRuleOverrideArgs.builder()
///                             .ruleGroupName("PHP")
///                             .rules(FrontdoorFirewallPolicyManagedRuleOverrideRuleArgs.builder()
///                                 .ruleId("933100")
///                                 .enabled(false)
///                                 .action("Block")
///                                 .build())
///                             .build(),
///                         FrontdoorFirewallPolicyManagedRuleOverrideArgs.builder()
///                             .ruleGroupName("SQLI")
///                             .exclusions(FrontdoorFirewallPolicyManagedRuleOverrideExclusionArgs.builder()
///                                 .matchVariable("QueryStringArgNames")
///                                 .operator("Equals")
///                                 .selector("really_not_suspicious")
///                                 .build())
///                             .rules(FrontdoorFirewallPolicyManagedRuleOverrideRuleArgs.builder()
///                                 .ruleId("942200")
///                                 .action("Block")
///                                 .exclusions(FrontdoorFirewallPolicyManagedRuleOverrideRuleExclusionArgs.builder()
///                                     .matchVariable("QueryStringArgNames")
///                                     .operator("Equals")
///                                     .selector("innocent")
///                                     .build())
///                                 .build())
///                             .build())
///                     .build(),
///                 FrontdoorFirewallPolicyManagedRuleArgs.builder()
///                     .type("Microsoft_BotManagerRuleSet")
///                     .version("1.1")
///                     .action("Log")
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
///       name: example-cdn-frontdoor
///       location: West Europe
///   exampleFrontdoorProfile:
///     type: azure:cdn:FrontdoorProfile
///     name: example
///     properties:
///       name: example-profile
///       resourceGroupName: ${example.name}
///       skuName: Premium_AzureFrontDoor
///   exampleFrontdoorFirewallPolicy:
///     type: azure:cdn:FrontdoorFirewallPolicy
///     name: example
///     properties:
///       name: examplecdnfdwafpolicy
///       resourceGroupName: ${example.name}
///       skuName: ${exampleFrontdoorProfile.skuName}
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
///             - matchVariable: SocketAddr
///               operator: IPMatch
///               negationCondition: false
///               matchValues:
///                 - 10.0.1.0/24
///                 - 10.0.0.0/24
///         - name: Rule2
///           enabled: true
///           priority: 50
///           rateLimitDurationInMinutes: 1
///           rateLimitThreshold: 10
///           type: MatchRule
///           action: Block
///           matchConditions:
///             - matchVariable: SocketAddr
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
///           action: Log
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
///           version: '1.1'
///           action: Log
/// ```
///
///
/// ## `scrubbingRule` Examples:
///
/// The following table shows examples of `scrubbingRule`'s that can be used to protect sensitive data:
///
/// | Match Variable               | Operator       | Selector      | What Gets Scrubbed                                                            |
/// | :--------------------------- | :------------- | :------------ | :---------------------------------------------------------------------------- |
/// | `RequestHeaderNames`         | Equals         | keyToBlock    | {"matchVariableName":"HeaderValue:keyToBlock","matchVariableValue":"****"}    |
/// | `RequestCookieNames`         | Equals         | cookieToBlock | {"matchVariableName":"CookieValue:cookieToBlock","matchVariableValue":"****"} |
/// | `RequestBodyPostArgNames`    | Equals         | var           | {"matchVariableName":"PostParamValue:var","matchVariableValue":"****"}        |
/// | `RequestBodyJsonArgNames`    | Equals         | JsonValue     | {"matchVariableName":"JsonValue:key","matchVariableValue":"****"}             |
/// | `QueryStringArgNames`        | Equals         | foo           | {"matchVariableName":"QueryParamValue:foo","matchVariableValue":"****"}       |
/// | `RequestIPAddress`           | Equals Any     | Not Supported | {"matchVariableName":"ClientIP","matchVariableValue":"****"}                  |
/// | `RequestUri`                 | Equals Any     | Not Supported | {"matchVariableName":"URI","matchVariableValue":"****"}                       |
///
/// ---
///
/// ## Import
///
/// Front Door Firewall Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:cdn/frontdoorFirewallPolicy:FrontdoorFirewallPolicy example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/frontDoorWebApplicationFirewallPolicies/firewallPolicy1
/// ```
class FrontdoorFirewallPolicy extends pulumi.CustomResource {
  /// Specifies the Captcha cookie lifetime in minutes. Possible values are between `5` and `1440`. Defaults to`30` minutes.
  ///
  /// &gt; **Note:** The `captchaCookieExpirationInMinutes` field can only be set on `Premium_AzureFrontDoor` sku's. Please see the [Product Documentation](https://learn.microsoft.com/azure/web-application-firewall/afds/captcha-challenge) for more information.
  ///
  /// &gt; **Note:** When you remove the `captchaCookieExpirationInMinutes` field from your configuration, the value will revert to the default of `30` minutes in the Terraform state. This is because Azure manages this setting and Terraform will reflect the actual Azure configuration, which defaults to `30` minutes when not explicitly specified.
  late final pulumi.Output<int> captchaCookieExpirationInMinutes;
  /// If a `customRule` block's action type is `block`, this is the response body. The body must be specified in base64 encoding.
  late final pulumi.Output<String?> customBlockResponseBody;
  /// If a `customRule` block's action type is `block`, this is the response status code. Possible values are `200`, `403`, `405`, `406`, `429`, `990`, `991`, `992`, `993`, `994`, `995`, `996`, `997`, `998`, or `999`.
  late final pulumi.Output<int?> customBlockResponseStatusCode;
  /// One or more `customRule` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> customRules;
  /// Is the Front Door Firewall Policy enabled? Defaults to `true`.
  late final pulumi.Output<bool?> enabled;
  /// The Front Door Profiles frontend endpoints associated with this Front Door Firewall Policy.
  late final pulumi.Output<List<String>> frontendEndpointIds;
  /// Specifies the JavaScript challenge cookie lifetime in minutes, after which the user will be revalidated. Possible values are between `5` to `1440` minutes. Defaults to `30` minutes.
  ///
  /// &gt; **Note:** The `jsChallengeCookieExpirationInMinutes` field can only be set on `Premium_AzureFrontDoor` sku's. Please see the [Product Documentation](https://learn.microsoft.com/azure/web-application-firewall/waf-javascript-challenge) for more information.
  ///
  /// &gt; **Note:** When you remove the `jsChallengeCookieExpirationInMinutes` field from your configuration, the value will revert to the default of `30` minutes in the Terraform state. This is because Azure manages this setting and Terraform will reflect the actual Azure configuration, which defaults to `30` minutes when not explicitly specified.
  late final pulumi.Output<int> jsChallengeCookieExpirationInMinutes;
  /// A `logScrubbing` block as defined below.
  ///
  /// &gt; **Note:** Setting the`logScrubbing` block is currently in **PREVIEW**. Please see the [Supplemental Terms of Use for Microsoft Azure Previews](https://azure.microsoft.com/support/legal/preview-supplemental-terms/) for legal terms that apply to Azure features that are in beta, preview, or otherwise not yet released into general availability.
  late final pulumi.Output<FrontdoorFirewallPolicyLogScrubbing?> logScrubbing;
  /// One or more `managedRule` blocks as defined below.
  late final pulumi.Output<List<Map<String, dynamic>>?> managedRules;
  /// The Front Door Firewall Policy mode. Possible values are `Detection`, `Prevention`.
  late final pulumi.Output<String> mode;
  /// The name of the policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// If action type is redirect, this field represents redirect URL for the client.
  late final pulumi.Output<String?> redirectUrl;
  /// Should policy managed rules inspect the request body content? Defaults to `true`.
  ///
  /// &gt; **Note:** When run in `Detection` mode, the Front Door Firewall Policy doesn't take any other actions other than monitoring and logging the request and its matched Front Door Rule to the Web Application Firewall logs.
  late final pulumi.Output<bool?> requestBodyCheckEnabled;
  /// The name of the resource group. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The sku's pricing tier for this Front Door Firewall Policy. Possible values include `Standard_AzureFrontDoor` or `Premium_AzureFrontDoor`. Changing this forces a new resource to be created.
  ///
  /// &gt; **Note:** The `Standard_AzureFrontDoor` Front Door Firewall Policy sku may contain `custom` rules only. The `Premium_AzureFrontDoor` Front Door Firewall Policy sku's may contain both `custom` and `managed` rules.
  late final pulumi.Output<String> skuName;
  /// A mapping of tags to assign to the Front Door Firewall Policy.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [FrontdoorFirewallPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FrontdoorFirewallPolicy]. {@macro pulumi_cdn_frontdoor_firewall_policy_frontdoor_firewall_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FrontdoorFirewallPolicy(
    String name, {
    FrontdoorFirewallPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorFirewallPolicy:FrontdoorFirewallPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    captchaCookieExpirationInMinutes = registerOutput<int>('captchaCookieExpirationInMinutes');
    customBlockResponseBody = registerOutput<String?>('customBlockResponseBody');
    customBlockResponseStatusCode = registerOutput<int?>('customBlockResponseStatusCode');
    customRules = registerOutput<List<Map<String, dynamic>>?>('customRules');
    enabled = registerOutput<bool?>('enabled');
    frontendEndpointIds = registerOutput<List<String>>('frontendEndpointIds');
    jsChallengeCookieExpirationInMinutes = registerOutput<int>('jsChallengeCookieExpirationInMinutes');
    logScrubbing = registerOutput<FrontdoorFirewallPolicyLogScrubbing?>('logScrubbing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorFirewallPolicyLogScrubbing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedRules = registerOutput<List<Map<String, dynamic>>?>('managedRules');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    redirectUrl = registerOutput<String?>('redirectUrl');
    requestBodyCheckEnabled = registerOutput<bool?>('requestBodyCheckEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }

  /// Gets an existing [FrontdoorFirewallPolicy] resource's state with the given [name] and [id].
  static FrontdoorFirewallPolicy get(
    String name,
    pulumi.Input<String> id, {
    FrontdoorFirewallPolicyState? state,
  }) {
    return FrontdoorFirewallPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FrontdoorFirewallPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:cdn/frontdoorFirewallPolicy:FrontdoorFirewallPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    captchaCookieExpirationInMinutes = registerOutput<int>('captchaCookieExpirationInMinutes');
    customBlockResponseBody = registerOutput<String?>('customBlockResponseBody');
    customBlockResponseStatusCode = registerOutput<int?>('customBlockResponseStatusCode');
    customRules = registerOutput<List<Map<String, dynamic>>?>('customRules');
    enabled = registerOutput<bool?>('enabled');
    frontendEndpointIds = registerOutput<List<String>>('frontendEndpointIds');
    jsChallengeCookieExpirationInMinutes = registerOutput<int>('jsChallengeCookieExpirationInMinutes');
    logScrubbing = registerOutput<FrontdoorFirewallPolicyLogScrubbing?>('logScrubbing', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return FrontdoorFirewallPolicyLogScrubbing.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    managedRules = registerOutput<List<Map<String, dynamic>>?>('managedRules');
    mode = registerOutput<String>('mode');
    this.name = registerOutput<String>('name');
    redirectUrl = registerOutput<String?>('redirectUrl');
    requestBodyCheckEnabled = registerOutput<bool?>('requestBodyCheckEnabled');
    resourceGroupName = registerOutput<String>('resourceGroupName');
    skuName = registerOutput<String>('skuName');
    tags = registerOutput<Map<String, String>?>('tags');
  }
}
