import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_security_policy_rule_args.dart';
import 'organization_security_policy_rule_header_action.dart';
import 'organization_security_policy_rule_match.dart';
import 'organization_security_policy_rule_preconfigured_waf_config.dart';
import 'organization_security_policy_rule_redirect_options.dart';
import 'organization_security_policy_rule_state.dart';

/// A rule for the OrganizationSecurityPolicy.
///
///
/// To get more information about OrganizationSecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/organizationSecurityPolicies/addRule)
/// * How-to Guides
/// * [Configure hierarchical security policies](https://docs.cloud.google.com/armor/docs/hierarchical-policies-using)
///
/// ## Example Usage
///
/// ### Organization Security Policy Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     shortName: "tf-test_75092",
///     parent: "organizations/123456789",
///     type: "CLOUD_ARMOR",
/// });
/// const policyOrganizationSecurityPolicyRule = new gcp.compute.OrganizationSecurityPolicyRule("policy", {
///     policyId: policy.id,
///     action: "allow",
///     match: {
///         config: {
///             srcIpRanges: ["192.168.0.0/16"],
///         },
///         versionedExpr: "SRC_IPS_V1",
///     },
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     short_name="tf-test_75092",
///     parent="organizations/123456789",
///     type="CLOUD_ARMOR")
/// policy_organization_security_policy_rule = gcp.compute.OrganizationSecurityPolicyRule("policy",
///     policy_id=policy.id,
///     action="allow",
///     match={
///         "config": {
///             "src_ip_ranges": ["192.168.0.0/16"],
///         },
///         "versioned_expr": "SRC_IPS_V1",
///     },
///     priority=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         ShortName = "tf-test_75092",
///         Parent = "organizations/123456789",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyOrganizationSecurityPolicyRule = new Gcp.Compute.OrganizationSecurityPolicyRule("policy", new()
///     {
///         PolicyId = policy.Id,
///         Action = "allow",
///         Match = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchArgs
///         {
///             Config = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "192.168.0.0/16",
///                 },
///             },
///             VersionedExpr = "SRC_IPS_V1",
///         },
///         Priority = 100,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policy, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			ShortName: pulumi.String("tf-test_75092"),
/// 			Parent:    pulumi.String("organizations/123456789"),
/// 			Type:      pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewOrganizationSecurityPolicyRule(ctx, "policy", &compute.OrganizationSecurityPolicyRuleArgs{
/// 			PolicyId: policy.ID().ToIDOutput().ToStringOutput(),
/// 			Action:   pulumi.String("allow"),
/// 			Match: &compute.OrganizationSecurityPolicyRuleMatchArgs{
/// 				Config: &compute.OrganizationSecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("192.168.0.0/16"),
/// 					},
/// 				},
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 			},
/// 			Priority: pulumi.Int(100),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_organizationsecuritypolicy" "policy" {
///   short_name = "tf-test_75092"
///   parent     = "organizations/123456789"
///   type       = "CLOUD_ARMOR"
/// }
/// resource "gcp_compute_organizationsecuritypolicyrule" "policy" {
///   policy_id = gcp_compute_organizationsecuritypolicy.policy.id
///   action    = "allow"
///   match = {
///     config = {
///       src_ip_ranges = ["192.168.0.0/16"]
///     }
///     versioned_expr = "SRC_IPS_V1"
///   }
///   priority = 100
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRule;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchConfigArgs;
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
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .shortName("tf-test_75092")
///             .parent("organizations/123456789")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyOrganizationSecurityPolicyRule = new OrganizationSecurityPolicyRule("policyOrganizationSecurityPolicyRule", OrganizationSecurityPolicyRuleArgs.builder()
///             .policyId(policy.id())
///             .action("allow")
///             .match(OrganizationSecurityPolicyRuleMatchArgs.builder()
///                 .config(OrganizationSecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("192.168.0.0/16")
///                     .build())
///                 .versionedExpr("SRC_IPS_V1")
///                 .build())
///             .priority(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       shortName: tf-test_75092
///       parent: organizations/123456789
///       type: CLOUD_ARMOR
///   policyOrganizationSecurityPolicyRule:
///     type: gcp:compute:OrganizationSecurityPolicyRule
///     name: policy
///     properties:
///       policyId: ${policy.id}
///       action: allow
///       match:
///         config:
///           srcIpRanges:
///             - 192.168.0.0/16
///         versionedExpr: SRC_IPS_V1
///       priority: 100
/// ```
///
/// ### Organization Security Policy Rule Expression
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     shortName: "tf-test_2605",
///     parent: "organizations/123456789",
///     type: "CLOUD_ARMOR",
/// });
/// const policyOrganizationSecurityPolicyRule = new gcp.compute.OrganizationSecurityPolicyRule("policy", {
///     policyId: policy.id,
///     action: "allow",
///     match: {
///         expr: {
///             expression: "request.path.contains('/folder/test/')",
///         },
///         versionedExpr: "",
///     },
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     short_name="tf-test_2605",
///     parent="organizations/123456789",
///     type="CLOUD_ARMOR")
/// policy_organization_security_policy_rule = gcp.compute.OrganizationSecurityPolicyRule("policy",
///     policy_id=policy.id,
///     action="allow",
///     match={
///         "expr": {
///             "expression": "request.path.contains('/folder/test/')",
///         },
///         "versioned_expr": "",
///     },
///     priority=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         ShortName = "tf-test_2605",
///         Parent = "organizations/123456789",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyOrganizationSecurityPolicyRule = new Gcp.Compute.OrganizationSecurityPolicyRule("policy", new()
///     {
///         PolicyId = policy.Id,
///         Action = "allow",
///         Match = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchArgs
///         {
///             Expr = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchExprArgs
///             {
///                 Expression = "request.path.contains('/folder/test/')",
///             },
///             VersionedExpr = "",
///         },
///         Priority = 100,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policy, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			ShortName: pulumi.String("tf-test_2605"),
/// 			Parent:    pulumi.String("organizations/123456789"),
/// 			Type:      pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewOrganizationSecurityPolicyRule(ctx, "policy", &compute.OrganizationSecurityPolicyRuleArgs{
/// 			PolicyId: policy.ID().ToIDOutput().ToStringOutput(),
/// 			Action:   pulumi.String("allow"),
/// 			Match: &compute.OrganizationSecurityPolicyRuleMatchArgs{
/// 				Expr: &compute.OrganizationSecurityPolicyRuleMatchExprArgs{
/// 					Expression: pulumi.String("request.path.contains('/folder/test/')"),
/// 				},
/// 				VersionedExpr: pulumi.String(""),
/// 			},
/// 			Priority: pulumi.Int(100),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_organizationsecuritypolicy" "policy" {
///   short_name = "tf-test_2605"
///   parent     = "organizations/123456789"
///   type       = "CLOUD_ARMOR"
/// }
/// resource "gcp_compute_organizationsecuritypolicyrule" "policy" {
///   policy_id = gcp_compute_organizationsecuritypolicy.policy.id
///   action    = "allow"
///   match = {
///     expr = {
///       expression = "request.path.contains('/folder/test/')"
///     }
///     versioned_expr = ""
///   }
///   priority = 100
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRule;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchExprArgs;
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
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .shortName("tf-test_2605")
///             .parent("organizations/123456789")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyOrganizationSecurityPolicyRule = new OrganizationSecurityPolicyRule("policyOrganizationSecurityPolicyRule", OrganizationSecurityPolicyRuleArgs.builder()
///             .policyId(policy.id())
///             .action("allow")
///             .match(OrganizationSecurityPolicyRuleMatchArgs.builder()
///                 .expr(OrganizationSecurityPolicyRuleMatchExprArgs.builder()
///                     .expression("request.path.contains('/folder/test/')")
///                     .build())
///                 .versionedExpr("")
///                 .build())
///             .priority(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       shortName: tf-test_2605
///       parent: organizations/123456789
///       type: CLOUD_ARMOR
///   policyOrganizationSecurityPolicyRule:
///     type: gcp:compute:OrganizationSecurityPolicyRule
///     name: policy
///     properties:
///       policyId: ${policy.id}
///       action: allow
///       match:
///         expr:
///           expression: request.path.contains('/folder/test/')
///         versionedExpr: ""
///       priority: 100
/// ```
///
/// ### Organization Security Policy Rule With Preconfigured Waf Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     shortName: "tf-test_34535",
///     parent: "organizations/123456789",
///     type: "CLOUD_ARMOR",
/// });
/// const policyOrganizationSecurityPolicyRule = new gcp.compute.OrganizationSecurityPolicyRule("policy", {
///     policyId: policy.id,
///     action: "allow",
///     match: {
///         expr: {
///             expression: "evaluatePreconfiguredWaf('sqli-stable', {'sensitivity': 2})",
///         },
///         versionedExpr: "",
///     },
///     preconfiguredWafConfig: {
///         exclusions: [
///             {
///                 requestHeaders: [{
///                     operator: "STARTS_WITH",
///                     value: "User-Agent",
///                 }],
///                 requestUris: [{
///                     operator: "CONTAINS",
///                     value: "/admin/",
///                 }],
///                 targetRuleSet: "sqli-stable",
///             },
///             {
///                 requestQueryParams: [{
///                     operator: "EQUALS",
///                     value: "user_input",
///                 }],
///                 targetRuleSet: "sqli-stable",
///             },
///         ],
///     },
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     short_name="tf-test_34535",
///     parent="organizations/123456789",
///     type="CLOUD_ARMOR")
/// policy_organization_security_policy_rule = gcp.compute.OrganizationSecurityPolicyRule("policy",
///     policy_id=policy.id,
///     action="allow",
///     match={
///         "expr": {
///             "expression": "evaluatePreconfiguredWaf('sqli-stable', {'sensitivity': 2})",
///         },
///         "versioned_expr": "",
///     },
///     preconfigured_waf_config={
///         "exclusions": [
///             {
///                 "request_headers": [{
///                     "operator": "STARTS_WITH",
///                     "value": "User-Agent",
///                 }],
///                 "request_uris": [{
///                     "operator": "CONTAINS",
///                     "value": "/admin/",
///                 }],
///                 "target_rule_set": "sqli-stable",
///             },
///             {
///                 "request_query_params": [{
///                     "operator": "EQUALS",
///                     "value": "user_input",
///                 }],
///                 "target_rule_set": "sqli-stable",
///             },
///         ],
///     },
///     priority=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         ShortName = "tf-test_34535",
///         Parent = "organizations/123456789",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyOrganizationSecurityPolicyRule = new Gcp.Compute.OrganizationSecurityPolicyRule("policy", new()
///     {
///         PolicyId = policy.Id,
///         Action = "allow",
///         Match = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchArgs
///         {
///             Expr = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchExprArgs
///             {
///                 Expression = "evaluatePreconfiguredWaf('sqli-stable', {'sensitivity': 2})",
///             },
///             VersionedExpr = "",
///         },
///         PreconfiguredWafConfig = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigArgs
///         {
///             Exclusions = new[]
///             {
///                 new Gcp.Compute.Inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionArgs
///                 {
///                     RequestHeaders = new[]
///                     {
///                         new Gcp.Compute.Inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeaderArgs
///                         {
///                             Operator = "STARTS_WITH",
///                             Value = "User-Agent",
///                         },
///                     },
///                     RequestUris = new[]
///                     {
///                         new Gcp.Compute.Inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUriArgs
///                         {
///                             Operator = "CONTAINS",
///                             Value = "/admin/",
///                         },
///                     },
///                     TargetRuleSet = "sqli-stable",
///                 },
///                 new Gcp.Compute.Inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionArgs
///                 {
///                     RequestQueryParams = new[]
///                     {
///                         new Gcp.Compute.Inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs
///                         {
///                             Operator = "EQUALS",
///                             Value = "user_input",
///                         },
///                     },
///                     TargetRuleSet = "sqli-stable",
///                 },
///             },
///         },
///         Priority = 100,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policy, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			ShortName: pulumi.String("tf-test_34535"),
/// 			Parent:    pulumi.String("organizations/123456789"),
/// 			Type:      pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewOrganizationSecurityPolicyRule(ctx, "policy", &compute.OrganizationSecurityPolicyRuleArgs{
/// 			PolicyId: policy.ID().ToIDOutput().ToStringOutput(),
/// 			Action:   pulumi.String("allow"),
/// 			Match: &compute.OrganizationSecurityPolicyRuleMatchArgs{
/// 				Expr: &compute.OrganizationSecurityPolicyRuleMatchExprArgs{
/// 					Expression: pulumi.String("evaluatePreconfiguredWaf('sqli-stable', {'sensitivity': 2})"),
/// 				},
/// 				VersionedExpr: pulumi.String(""),
/// 			},
/// 			PreconfiguredWafConfig: &compute.OrganizationSecurityPolicyRulePreconfiguredWafConfigArgs{
/// 				Exclusions: compute.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionArray{
/// 					&compute.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionArgs{
/// 						RequestHeaders: compute.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeaderArray{
/// 							&compute.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeaderArgs{
/// 								Operator: pulumi.String("STARTS_WITH"),
/// 								Value:    pulumi.String("User-Agent"),
/// 							},
/// 						},
/// 						RequestUris: compute.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUriArray{
/// 							&compute.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUriArgs{
/// 								Operator: pulumi.String("CONTAINS"),
/// 								Value:    pulumi.String("/admin/"),
/// 							},
/// 						},
/// 						TargetRuleSet: pulumi.String("sqli-stable"),
/// 					},
/// 					&compute.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionArgs{
/// 						RequestQueryParams: compute.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArray{
/// 							&compute.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs{
/// 								Operator: pulumi.String("EQUALS"),
/// 								Value:    pulumi.String("user_input"),
/// 							},
/// 						},
/// 						TargetRuleSet: pulumi.String("sqli-stable"),
/// 					},
/// 				},
/// 			},
/// 			Priority: pulumi.Int(100),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_organizationsecuritypolicy" "policy" {
///   short_name = "tf-test_34535"
///   parent     = "organizations/123456789"
///   type       = "CLOUD_ARMOR"
/// }
/// resource "gcp_compute_organizationsecuritypolicyrule" "policy" {
///   policy_id = gcp_compute_organizationsecuritypolicy.policy.id
///   action    = "allow"
///   match = {
///     expr = {
///       expression = "evaluatePreconfiguredWaf('sqli-stable', {'sensitivity': 2})"
///     }
///     versioned_expr = ""
///   }
///   preconfigured_waf_config = {
///     exclusions = [{
///       "requestHeaders" = [{
///         "operator" = "STARTS_WITH"
///         "value"    = "User-Agent"
///       }]
///       "requestUris" = [{
///         "operator" = "CONTAINS"
///         "value"    = "/admin/"
///       }]
///       "targetRuleSet" = "sqli-stable"
///       }, {
///       "requestQueryParams" = [{
///         "operator" = "EQUALS"
///         "value"    = "user_input"
///       }]
///       "targetRuleSet" = "sqli-stable"
///     }]
///   }
///   priority = 100
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRule;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchExprArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeaderArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUriArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs;
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
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .shortName("tf-test_34535")
///             .parent("organizations/123456789")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyOrganizationSecurityPolicyRule = new OrganizationSecurityPolicyRule("policyOrganizationSecurityPolicyRule", OrganizationSecurityPolicyRuleArgs.builder()
///             .policyId(policy.id())
///             .action("allow")
///             .match(OrganizationSecurityPolicyRuleMatchArgs.builder()
///                 .expr(OrganizationSecurityPolicyRuleMatchExprArgs.builder()
///                     .expression("evaluatePreconfiguredWaf('sqli-stable', {'sensitivity': 2})")
///                     .build())
///                 .versionedExpr("")
///                 .build())
///             .preconfiguredWafConfig(OrganizationSecurityPolicyRulePreconfiguredWafConfigArgs.builder()
///                 .exclusions(
///                     OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionArgs.builder()
///                         .requestHeaders(OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeaderArgs.builder()
///                             .operator("STARTS_WITH")
///                             .value("User-Agent")
///                             .build())
///                         .requestUris(OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUriArgs.builder()
///                             .operator("CONTAINS")
///                             .value("/admin/")
///                             .build())
///                         .targetRuleSet("sqli-stable")
///                         .build(),
///                     OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionArgs.builder()
///                         .requestQueryParams(OrganizationSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs.builder()
///                             .operator("EQUALS")
///                             .value("user_input")
///                             .build())
///                         .targetRuleSet("sqli-stable")
///                         .build())
///                 .build())
///             .priority(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       shortName: tf-test_34535
///       parent: organizations/123456789
///       type: CLOUD_ARMOR
///   policyOrganizationSecurityPolicyRule:
///     type: gcp:compute:OrganizationSecurityPolicyRule
///     name: policy
///     properties:
///       policyId: ${policy.id}
///       action: allow
///       match:
///         expr:
///           expression: 'evaluatePreconfiguredWaf(''sqli-stable'', {''sensitivity'': 2})'
///         versionedExpr: ""
///       preconfiguredWafConfig:
///         exclusions:
///           - requestHeaders:
///               - operator: STARTS_WITH
///                 value: User-Agent
///             requestUris:
///               - operator: CONTAINS
///                 value: /admin/
///             targetRuleSet: sqli-stable
///           - requestQueryParams:
///               - operator: EQUALS
///                 value: user_input
///             targetRuleSet: sqli-stable
///       priority: 100
/// ```
///
/// ### Organization Security Policy Rule With Header Action
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     shortName: "tf-test_22375",
///     parent: "organizations/123456789",
///     type: "CLOUD_ARMOR",
/// });
/// const policyOrganizationSecurityPolicyRule = new gcp.compute.OrganizationSecurityPolicyRule("policy", {
///     policyId: policy.id,
///     action: "allow",
///     match: {
///         expr: {
///             expression: "request.path.contains('/login/')",
///         },
///         versionedExpr: "",
///     },
///     headerAction: {
///         requestHeadersToAdds: [
///             {
///                 headerName: "X-Forwarded-For",
///                 headerValue: "true",
///             },
///             {
///                 headerName: "X-Custom-Header",
///                 headerValue: "custom-value",
///             },
///         ],
///     },
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     short_name="tf-test_22375",
///     parent="organizations/123456789",
///     type="CLOUD_ARMOR")
/// policy_organization_security_policy_rule = gcp.compute.OrganizationSecurityPolicyRule("policy",
///     policy_id=policy.id,
///     action="allow",
///     match={
///         "expr": {
///             "expression": "request.path.contains('/login/')",
///         },
///         "versioned_expr": "",
///     },
///     header_action={
///         "request_headers_to_adds": [
///             {
///                 "header_name": "X-Forwarded-For",
///                 "header_value": "true",
///             },
///             {
///                 "header_name": "X-Custom-Header",
///                 "header_value": "custom-value",
///             },
///         ],
///     },
///     priority=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         ShortName = "tf-test_22375",
///         Parent = "organizations/123456789",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyOrganizationSecurityPolicyRule = new Gcp.Compute.OrganizationSecurityPolicyRule("policy", new()
///     {
///         PolicyId = policy.Id,
///         Action = "allow",
///         Match = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchArgs
///         {
///             Expr = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchExprArgs
///             {
///                 Expression = "request.path.contains('/login/')",
///             },
///             VersionedExpr = "",
///         },
///         HeaderAction = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleHeaderActionArgs
///         {
///             RequestHeadersToAdds = new[]
///             {
///                 new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAddArgs
///                 {
///                     HeaderName = "X-Forwarded-For",
///                     HeaderValue = "true",
///                 },
///                 new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAddArgs
///                 {
///                     HeaderName = "X-Custom-Header",
///                     HeaderValue = "custom-value",
///                 },
///             },
///         },
///         Priority = 100,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policy, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			ShortName: pulumi.String("tf-test_22375"),
/// 			Parent:    pulumi.String("organizations/123456789"),
/// 			Type:      pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewOrganizationSecurityPolicyRule(ctx, "policy", &compute.OrganizationSecurityPolicyRuleArgs{
/// 			PolicyId: policy.ID().ToIDOutput().ToStringOutput(),
/// 			Action:   pulumi.String("allow"),
/// 			Match: &compute.OrganizationSecurityPolicyRuleMatchArgs{
/// 				Expr: &compute.OrganizationSecurityPolicyRuleMatchExprArgs{
/// 					Expression: pulumi.String("request.path.contains('/login/')"),
/// 				},
/// 				VersionedExpr: pulumi.String(""),
/// 			},
/// 			HeaderAction: &compute.OrganizationSecurityPolicyRuleHeaderActionArgs{
/// 				RequestHeadersToAdds: compute.OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAddArray{
/// 					&compute.OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAddArgs{
/// 						HeaderName:  pulumi.String("X-Forwarded-For"),
/// 						HeaderValue: pulumi.String("true"),
/// 					},
/// 					&compute.OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAddArgs{
/// 						HeaderName:  pulumi.String("X-Custom-Header"),
/// 						HeaderValue: pulumi.String("custom-value"),
/// 					},
/// 				},
/// 			},
/// 			Priority: pulumi.Int(100),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_organizationsecuritypolicy" "policy" {
///   short_name = "tf-test_22375"
///   parent     = "organizations/123456789"
///   type       = "CLOUD_ARMOR"
/// }
/// resource "gcp_compute_organizationsecuritypolicyrule" "policy" {
///   policy_id = gcp_compute_organizationsecuritypolicy.policy.id
///   action    = "allow"
///   match = {
///     expr = {
///       expression = "request.path.contains('/login/')"
///     }
///     versioned_expr = ""
///   }
///   header_action = {
///     request_headers_to_adds = [{
///       "headerName"  = "X-Forwarded-For"
///       "headerValue" = "true"
///       }, {
///       "headerName"  = "X-Custom-Header"
///       "headerValue" = "custom-value"
///     }]
///   }
///   priority = 100
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRule;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchExprArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleHeaderActionArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAddArgs;
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
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .shortName("tf-test_22375")
///             .parent("organizations/123456789")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyOrganizationSecurityPolicyRule = new OrganizationSecurityPolicyRule("policyOrganizationSecurityPolicyRule", OrganizationSecurityPolicyRuleArgs.builder()
///             .policyId(policy.id())
///             .action("allow")
///             .match(OrganizationSecurityPolicyRuleMatchArgs.builder()
///                 .expr(OrganizationSecurityPolicyRuleMatchExprArgs.builder()
///                     .expression("request.path.contains('/login/')")
///                     .build())
///                 .versionedExpr("")
///                 .build())
///             .headerAction(OrganizationSecurityPolicyRuleHeaderActionArgs.builder()
///                 .requestHeadersToAdds(
///                     OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAddArgs.builder()
///                         .headerName("X-Forwarded-For")
///                         .headerValue("true")
///                         .build(),
///                     OrganizationSecurityPolicyRuleHeaderActionRequestHeadersToAddArgs.builder()
///                         .headerName("X-Custom-Header")
///                         .headerValue("custom-value")
///                         .build())
///                 .build())
///             .priority(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       shortName: tf-test_22375
///       parent: organizations/123456789
///       type: CLOUD_ARMOR
///   policyOrganizationSecurityPolicyRule:
///     type: gcp:compute:OrganizationSecurityPolicyRule
///     name: policy
///     properties:
///       policyId: ${policy.id}
///       action: allow
///       match:
///         expr:
///           expression: request.path.contains('/login/')
///         versionedExpr: ""
///       headerAction:
///         requestHeadersToAdds:
///           - headerName: X-Forwarded-For
///             headerValue: 'true'
///           - headerName: X-Custom-Header
///             headerValue: custom-value
///       priority: 100
/// ```
///
/// ### Organization Security Policy Rule With Redirect
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     shortName: "tf-test_29439",
///     parent: "organizations/123456789",
///     type: "CLOUD_ARMOR",
/// });
/// const policyOrganizationSecurityPolicyRule = new gcp.compute.OrganizationSecurityPolicyRule("policy", {
///     policyId: policy.id,
///     action: "redirect",
///     match: {
///         config: {
///             srcIpRanges: ["10.0.1.0/24"],
///         },
///         versionedExpr: "SRC_IPS_V1",
///     },
///     redirectOptions: {
///         type: "EXTERNAL_302",
///         target: "https://www.example.com/blocked",
///     },
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     short_name="tf-test_29439",
///     parent="organizations/123456789",
///     type="CLOUD_ARMOR")
/// policy_organization_security_policy_rule = gcp.compute.OrganizationSecurityPolicyRule("policy",
///     policy_id=policy.id,
///     action="redirect",
///     match={
///         "config": {
///             "src_ip_ranges": ["10.0.1.0/24"],
///         },
///         "versioned_expr": "SRC_IPS_V1",
///     },
///     redirect_options={
///         "type": "EXTERNAL_302",
///         "target": "https://www.example.com/blocked",
///     },
///     priority=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         ShortName = "tf-test_29439",
///         Parent = "organizations/123456789",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyOrganizationSecurityPolicyRule = new Gcp.Compute.OrganizationSecurityPolicyRule("policy", new()
///     {
///         PolicyId = policy.Id,
///         Action = "redirect",
///         Match = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchArgs
///         {
///             Config = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "10.0.1.0/24",
///                 },
///             },
///             VersionedExpr = "SRC_IPS_V1",
///         },
///         RedirectOptions = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleRedirectOptionsArgs
///         {
///             Type = "EXTERNAL_302",
///             Target = "https://www.example.com/blocked",
///         },
///         Priority = 100,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policy, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			ShortName: pulumi.String("tf-test_29439"),
/// 			Parent:    pulumi.String("organizations/123456789"),
/// 			Type:      pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewOrganizationSecurityPolicyRule(ctx, "policy", &compute.OrganizationSecurityPolicyRuleArgs{
/// 			PolicyId: policy.ID().ToIDOutput().ToStringOutput(),
/// 			Action:   pulumi.String("redirect"),
/// 			Match: &compute.OrganizationSecurityPolicyRuleMatchArgs{
/// 				Config: &compute.OrganizationSecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("10.0.1.0/24"),
/// 					},
/// 				},
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 			},
/// 			RedirectOptions: &compute.OrganizationSecurityPolicyRuleRedirectOptionsArgs{
/// 				Type:   pulumi.String("EXTERNAL_302"),
/// 				Target: pulumi.String("https://www.example.com/blocked"),
/// 			},
/// 			Priority: pulumi.Int(100),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_organizationsecuritypolicy" "policy" {
///   short_name = "tf-test_29439"
///   parent     = "organizations/123456789"
///   type       = "CLOUD_ARMOR"
/// }
/// resource "gcp_compute_organizationsecuritypolicyrule" "policy" {
///   policy_id = gcp_compute_organizationsecuritypolicy.policy.id
///   action    = "redirect"
///   match = {
///     config = {
///       src_ip_ranges = ["10.0.1.0/24"]
///     }
///     versioned_expr = "SRC_IPS_V1"
///   }
///   redirect_options = {
///     type   = "EXTERNAL_302"
///     target = "https://www.example.com/blocked"
///   }
///   priority = 100
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRule;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchConfigArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleRedirectOptionsArgs;
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
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .shortName("tf-test_29439")
///             .parent("organizations/123456789")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyOrganizationSecurityPolicyRule = new OrganizationSecurityPolicyRule("policyOrganizationSecurityPolicyRule", OrganizationSecurityPolicyRuleArgs.builder()
///             .policyId(policy.id())
///             .action("redirect")
///             .match(OrganizationSecurityPolicyRuleMatchArgs.builder()
///                 .config(OrganizationSecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("10.0.1.0/24")
///                     .build())
///                 .versionedExpr("SRC_IPS_V1")
///                 .build())
///             .redirectOptions(OrganizationSecurityPolicyRuleRedirectOptionsArgs.builder()
///                 .type("EXTERNAL_302")
///                 .target("https://www.example.com/blocked")
///                 .build())
///             .priority(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       shortName: tf-test_29439
///       parent: organizations/123456789
///       type: CLOUD_ARMOR
///   policyOrganizationSecurityPolicyRule:
///     type: gcp:compute:OrganizationSecurityPolicyRule
///     name: policy
///     properties:
///       policyId: ${policy.id}
///       action: redirect
///       match:
///         config:
///           srcIpRanges:
///             - 10.0.1.0/24
///         versionedExpr: SRC_IPS_V1
///       redirectOptions:
///         type: EXTERNAL_302
///         target: https://www.example.com/blocked
///       priority: 100
/// ```
///
/// ### Organization Security Policy Rule Firewall
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.OrganizationSecurityPolicy("policy", {
///     displayName: "tf-test",
///     parent: "organizations/123456789",
///     type: "FIREWALL",
/// });
/// const policyOrganizationSecurityPolicyRule = new gcp.compute.OrganizationSecurityPolicyRule("policy", {
///     policyId: policy.id,
///     action: "allow",
///     direction: "INGRESS",
///     enableLogging: true,
///     match: {
///         config: {
///             srcIpRanges: [
///                 "192.168.0.0/16",
///                 "10.0.0.0/8",
///             ],
///             layer4Configs: [
///                 {
///                     ipProtocol: "tcp",
///                     ports: ["22"],
///                 },
///                 {
///                     ipProtocol: "icmp",
///                 },
///             ],
///         },
///     },
///     priority: 100,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.OrganizationSecurityPolicy("policy",
///     display_name="tf-test",
///     parent="organizations/123456789",
///     type="FIREWALL")
/// policy_organization_security_policy_rule = gcp.compute.OrganizationSecurityPolicyRule("policy",
///     policy_id=policy.id,
///     action="allow",
///     direction="INGRESS",
///     enable_logging=True,
///     match={
///         "config": {
///             "src_ip_ranges": [
///                 "192.168.0.0/16",
///                 "10.0.0.0/8",
///             ],
///             "layer4_configs": [
///                 {
///                     "ip_protocol": "tcp",
///                     "ports": ["22"],
///                 },
///                 {
///                     "ip_protocol": "icmp",
///                 },
///             ],
///         },
///     },
///     priority=100)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.OrganizationSecurityPolicy("policy", new()
///     {
///         DisplayName = "tf-test",
///         Parent = "organizations/123456789",
///         Type = "FIREWALL",
///     });
///
///     var policyOrganizationSecurityPolicyRule = new Gcp.Compute.OrganizationSecurityPolicyRule("policy", new()
///     {
///         PolicyId = policy.Id,
///         Action = "allow",
///         Direction = "INGRESS",
///         EnableLogging = true,
///         Match = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchArgs
///         {
///             Config = new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "192.168.0.0/16",
///                     "10.0.0.0/8",
///                 },
///                 Layer4Configs = new[]
///                 {
///                     new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs
///                     {
///                         IpProtocol = "tcp",
///                         Ports = new[]
///                         {
///                             "22",
///                         },
///                     },
///                     new Gcp.Compute.Inputs.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs
///                     {
///                         IpProtocol = "icmp",
///                     },
///                 },
///             },
///         },
///         Priority = 100,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policy, err := compute.NewOrganizationSecurityPolicy(ctx, "policy", &compute.OrganizationSecurityPolicyArgs{
/// 			DisplayName: pulumi.String("tf-test"),
/// 			Parent:      pulumi.String("organizations/123456789"),
/// 			Type:        pulumi.String("FIREWALL"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewOrganizationSecurityPolicyRule(ctx, "policy", &compute.OrganizationSecurityPolicyRuleArgs{
/// 			PolicyId:      policy.ID().ToIDOutput().ToStringOutput(),
/// 			Action:        pulumi.String("allow"),
/// 			Direction:     pulumi.String("INGRESS"),
/// 			EnableLogging: pulumi.Bool(true),
/// 			Match: &compute.OrganizationSecurityPolicyRuleMatchArgs{
/// 				Config: &compute.OrganizationSecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("192.168.0.0/16"),
/// 						pulumi.String("10.0.0.0/8"),
/// 					},
/// 					Layer4Configs: compute.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArray{
/// 						&compute.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs{
/// 							IpProtocol: pulumi.String("tcp"),
/// 							Ports: pulumi.StringArray{
/// 								pulumi.String("22"),
/// 							},
/// 						},
/// 						&compute.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs{
/// 							IpProtocol: pulumi.String("icmp"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			Priority: pulumi.Int(100),
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
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_organizationsecuritypolicy" "policy" {
///   display_name = "tf-test"
///   parent       = "organizations/123456789"
///   type         = "FIREWALL"
/// }
/// resource "gcp_compute_organizationsecuritypolicyrule" "policy" {
///   policy_id      = gcp_compute_organizationsecuritypolicy.policy.id
///   action         = "allow"
///   direction      = "INGRESS"
///   enable_logging = true
///   match = {
///     config = {
///       src_ip_ranges = ["192.168.0.0/16", "10.0.0.0/8"]
///       layer4_configs = [{
///         "ipProtocol" = "tcp"
///         "ports"      = ["22"]
///         }, {
///         "ipProtocol" = "icmp"
///       }]
///     }
///   }
///   priority = 100
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicy;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRule;
/// import com.pulumi.gcp.compute.OrganizationSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchConfigArgs;
/// import com.pulumi.gcp.compute.inputs.OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs;
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
///         var policy = new OrganizationSecurityPolicy("policy", OrganizationSecurityPolicyArgs.builder()
///             .displayName("tf-test")
///             .parent("organizations/123456789")
///             .type("FIREWALL")
///             .build());
///
///         var policyOrganizationSecurityPolicyRule = new OrganizationSecurityPolicyRule("policyOrganizationSecurityPolicyRule", OrganizationSecurityPolicyRuleArgs.builder()
///             .policyId(policy.id())
///             .action("allow")
///             .direction("INGRESS")
///             .enableLogging(true)
///             .match(OrganizationSecurityPolicyRuleMatchArgs.builder()
///                 .config(OrganizationSecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges(
///                         "192.168.0.0/16",
///                         "10.0.0.0/8")
///                     .layer4Configs(
///                         OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs.builder()
///                             .ipProtocol("tcp")
///                             .ports("22")
///                             .build(),
///                         OrganizationSecurityPolicyRuleMatchConfigLayer4ConfigArgs.builder()
///                             .ipProtocol("icmp")
///                             .build())
///                     .build())
///                 .build())
///             .priority(100)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:OrganizationSecurityPolicy
///     properties:
///       displayName: tf-test
///       parent: organizations/123456789
///       type: FIREWALL
///   policyOrganizationSecurityPolicyRule:
///     type: gcp:compute:OrganizationSecurityPolicyRule
///     name: policy
///     properties:
///       policyId: ${policy.id}
///       action: allow
///       direction: INGRESS
///       enableLogging: true
///       match:
///         config:
///           srcIpRanges:
///             - 192.168.0.0/16
///             - 10.0.0.0/8
///           layer4Configs:
///             - ipProtocol: tcp
///               ports:
///                 - '22'
///             - ipProtocol: icmp
///       priority: 100
/// ```
///
///
/// ## Import
///
/// OrganizationSecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `{{policy_id}}/priority/{{priority}}`
///
///
/// When using the `pulumi import` command, OrganizationSecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/organizationSecurityPolicyRule:OrganizationSecurityPolicyRule default {{policy_id}}/priority/{{priority}}
/// ```
class OrganizationSecurityPolicyRule extends pulumi.CustomResource {
  /// The Action to perform when the client connection triggers the rule. Valid actions are:
  /// "allow": allow access to target.
  /// "deny": deny access to target.
  /// "gotoNext": forward the request to the next hierarchical policy for evaluation.
  /// "redirect": redirect to a different target. Parameters for this action can be configured via redirectOptions. Only EXTERNAL_302 redirect type is supported for organization security policies.
  late final pulumi.Output<String> action;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A description of the rule.
  late final pulumi.Output<String?> description;
  /// (Optional, Beta)
  /// The direction in which this rule applies. If unspecified an INGRESS rule is created.
  /// This field may only be specified when the versionedExpr is set to FIREWALL.
  /// Possible values are: `INGRESS`, `EGRESS`.
  late final pulumi.Output<String?> direction;
  /// (Optional, Beta)
  /// Denotes whether to enable logging for a particular rule.
  /// If logging is enabled, logs will be exported to the
  /// configured export destination in Stackdriver.
  /// This field may only be specified when the versionedExpr is set to FIREWALL.
  late final pulumi.Output<bool?> enableLogging;
  /// Optional, additional actions that are performed on headers.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationSecurityPolicyRuleHeaderAction?> headerAction;
  /// A match condition that incoming traffic is evaluated against. If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationSecurityPolicyRuleMatch> match;
  /// The ID of the OrganizationSecurityPolicy this rule applies to.
  late final pulumi.Output<String> policyId;
  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationSecurityPolicyRulePreconfiguredWafConfig?> preconfiguredWafConfig;
  /// If set to true, the specified action is not enforced.
  late final pulumi.Output<bool?> preview;
  /// An integer indicating the priority of a rule in the list. The priority must be a value
  /// between 0 and 2147483647. Rules are evaluated from highest to lowest priority where 0 is the
  /// highest priority and 2147483647 is the lowest prority.
  late final pulumi.Output<int> priority;
  /// Parameters defining the redirect action. Cannot be specified for any other actions.
  /// Note: For organization security policies, only EXTERNAL_302 redirect type is supported. GOOGLE_RECAPTCHA is not supported.
  /// Structure is documented below.
  late final pulumi.Output<OrganizationSecurityPolicyRuleRedirectOptions?> redirectOptions;
  /// (Optional, Beta)
  /// A list of network resource URLs to which this rule applies.
  /// This field allows you to control which network's VMs get
  /// this rule. If this field is left blank, all VMs
  /// within the organization will receive the rule.
  late final pulumi.Output<List<String>?> targetResources;
  /// (Optional, Beta)
  /// A list of service accounts indicating the sets of
  /// instances that are applied with this rule.
  late final pulumi.Output<List<String>?> targetServiceAccounts;

  /// Creates a new [OrganizationSecurityPolicyRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OrganizationSecurityPolicyRule]. {@macro pulumi_compute_organization_security_policy_rule_organization_security_policy_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OrganizationSecurityPolicyRule(
    String name, {
    OrganizationSecurityPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSecurityPolicyRule:OrganizationSecurityPolicyRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    action = registerOutput<String>('action');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    direction = registerOutput<String?>('direction');
    enableLogging = registerOutput<bool?>('enableLogging');
    headerAction = registerOutput<OrganizationSecurityPolicyRuleHeaderAction?>('headerAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRuleHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    match = registerOutput<OrganizationSecurityPolicyRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyId = registerOutput<String>('policyId');
    preconfiguredWafConfig = registerOutput<OrganizationSecurityPolicyRulePreconfiguredWafConfig?>('preconfiguredWafConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRulePreconfiguredWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preview = registerOutput<bool?>('preview');
    priority = registerOutput<int>('priority');
    redirectOptions = registerOutput<OrganizationSecurityPolicyRuleRedirectOptions?>('redirectOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRuleRedirectOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResources = registerOutput<List<String>?>('targetResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [OrganizationSecurityPolicyRule] resource's state with the given [name] and [id].
  static OrganizationSecurityPolicyRule get(
    String name,
    pulumi.Input<String> id, {
    OrganizationSecurityPolicyRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OrganizationSecurityPolicyRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OrganizationSecurityPolicyRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/organizationSecurityPolicyRule:OrganizationSecurityPolicyRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    direction = registerOutput<String?>('direction');
    enableLogging = registerOutput<bool?>('enableLogging');
    headerAction = registerOutput<OrganizationSecurityPolicyRuleHeaderAction?>('headerAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRuleHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    match = registerOutput<OrganizationSecurityPolicyRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyId = registerOutput<String>('policyId');
    preconfiguredWafConfig = registerOutput<OrganizationSecurityPolicyRulePreconfiguredWafConfig?>('preconfiguredWafConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRulePreconfiguredWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preview = registerOutput<bool?>('preview');
    priority = registerOutput<int>('priority');
    redirectOptions = registerOutput<OrganizationSecurityPolicyRuleRedirectOptions?>('redirectOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRuleRedirectOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResources = registerOutput<List<String>?>('targetResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [OrganizationSecurityPolicyRule] resource.
  OrganizationSecurityPolicyRule.reference(String urn)
    : super(
        'gcp:compute/organizationSecurityPolicyRule:OrganizationSecurityPolicyRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<String>('action');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    direction = registerOutput<String?>('direction');
    enableLogging = registerOutput<bool?>('enableLogging');
    headerAction = registerOutput<OrganizationSecurityPolicyRuleHeaderAction?>('headerAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRuleHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    match = registerOutput<OrganizationSecurityPolicyRuleMatch>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    policyId = registerOutput<String>('policyId');
    preconfiguredWafConfig = registerOutput<OrganizationSecurityPolicyRulePreconfiguredWafConfig?>('preconfiguredWafConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRulePreconfiguredWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preview = registerOutput<bool?>('preview');
    priority = registerOutput<int>('priority');
    redirectOptions = registerOutput<OrganizationSecurityPolicyRuleRedirectOptions?>('redirectOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return OrganizationSecurityPolicyRuleRedirectOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    targetResources = registerOutput<List<String>?>('targetResources', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    targetServiceAccounts = registerOutput<List<String>?>('targetServiceAccounts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
