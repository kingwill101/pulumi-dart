import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_rule_args.dart';
import 'security_policy_rule_header_action.dart';
import 'security_policy_rule_match.dart';
import 'security_policy_rule_preconfigured_waf_config.dart';
import 'security_policy_rule_rate_limit_options.dart';
import 'security_policy_rule_redirect_options.dart';
import 'security_policy_rule_state.dart';

/// A rule for the SecurityPolicy.
///
///
/// To get more information about SecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/securityPolicies/addRule)
/// * How-to Guides
/// * [Creating global security policy rules](https://cloud.google.com/armor/docs/configure-security-policies)
///
/// ## Example Usage
///
/// ### Security Policy Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.SecurityPolicy("default", {
///     name: "policyruletest",
///     description: "basic global security policy",
///     type: "CLOUD_ARMOR",
/// });
/// const policyRule = new gcp.compute.SecurityPolicyRule("policy_rule", {
///     securityPolicy: _default.name,
///     description: "new rule",
///     priority: 100,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: ["10.10.0.0/16"],
///         },
///     },
///     action: "allow",
///     preview: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.SecurityPolicy("default",
///     name="policyruletest",
///     description="basic global security policy",
///     type="CLOUD_ARMOR")
/// policy_rule = gcp.compute.SecurityPolicyRule("policy_rule",
///     security_policy=default.name,
///     description="new rule",
///     priority=100,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": ["10.10.0.0/16"],
///         },
///     },
///     action="allow",
///     preview=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.SecurityPolicy("default", new()
///     {
///         Name = "policyruletest",
///         Description = "basic global security policy",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyRule = new Gcp.Compute.SecurityPolicyRule("policy_rule", new()
///     {
///         SecurityPolicy = @default.Name,
///         Description = "new rule",
///         Priority = 100,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "10.10.0.0/16",
///                 },
///             },
///         },
///         Action = "allow",
///         Preview = true,
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
/// 		_default, err := compute.NewSecurityPolicy(ctx, "default", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("policyruletest"),
/// 			Description: pulumi.String("basic global security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "policy_rule", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule"),
/// 			Priority:       pulumi.Int(100),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("10.10.0.0/16"),
/// 					},
/// 				},
/// 			},
/// 			Action:  pulumi.String("allow"),
/// 			Preview: pulumi.Bool(true),
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
/// resource "gcp_compute_securitypolicy" "default" {
///   name        = "policyruletest"
///   description = "basic global security policy"
///   type        = "CLOUD_ARMOR"
/// }
/// resource "gcp_compute_securitypolicyrule" "policy_rule" {
///   security_policy = gcp_compute_securitypolicy.default.name
///   description     = "new rule"
///   priority        = 100
///   match = {
///     versioned_expr = "SRC_IPS_V1"
///     config = {
///       src_ip_ranges = ["10.10.0.0/16"]
///     }
///   }
///   action  = "allow"
///   preview = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.SecurityPolicyRule;
/// import com.pulumi.gcp.compute.SecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchConfigArgs;
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
///         var default_ = new SecurityPolicy("default", SecurityPolicyArgs.builder()
///             .name("policyruletest")
///             .description("basic global security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyRule = new SecurityPolicyRule("policyRule", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(default_.name())
///             .description("new rule")
///             .priority(100)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("10.10.0.0/16")
///                     .build())
///                 .build())
///             .action("allow")
///             .preview(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: policyruletest
///       description: basic global security policy
///       type: CLOUD_ARMOR
///   policyRule:
///     type: gcp:compute:SecurityPolicyRule
///     name: policy_rule
///     properties:
///       securityPolicy: ${default.name}
///       description: new rule
///       priority: 100
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - 10.10.0.0/16
///       action: allow
///       preview: true
/// ```
///
/// ### Security Policy Rule Default Rule
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.SecurityPolicy("default", {
///     name: "policyruletest",
///     description: "basic global security policy",
///     type: "CLOUD_ARMOR",
/// });
/// const defaultRule = new gcp.compute.SecurityPolicyRule("default_rule", {
///     securityPolicy: _default.name,
///     description: "default rule",
///     action: "deny",
///     priority: 2147483647,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: ["*"],
///         },
///     },
/// });
/// const policyRule = new gcp.compute.SecurityPolicyRule("policy_rule", {
///     securityPolicy: _default.name,
///     description: "new rule",
///     priority: 100,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: ["10.10.0.0/16"],
///         },
///     },
///     action: "allow",
///     preview: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.SecurityPolicy("default",
///     name="policyruletest",
///     description="basic global security policy",
///     type="CLOUD_ARMOR")
/// default_rule = gcp.compute.SecurityPolicyRule("default_rule",
///     security_policy=default.name,
///     description="default rule",
///     action="deny",
///     priority=2147483647,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": ["*"],
///         },
///     })
/// policy_rule = gcp.compute.SecurityPolicyRule("policy_rule",
///     security_policy=default.name,
///     description="new rule",
///     priority=100,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": ["10.10.0.0/16"],
///         },
///     },
///     action="allow",
///     preview=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.SecurityPolicy("default", new()
///     {
///         Name = "policyruletest",
///         Description = "basic global security policy",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var defaultRule = new Gcp.Compute.SecurityPolicyRule("default_rule", new()
///     {
///         SecurityPolicy = @default.Name,
///         Description = "default rule",
///         Action = "deny",
///         Priority = 2147483647,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var policyRule = new Gcp.Compute.SecurityPolicyRule("policy_rule", new()
///     {
///         SecurityPolicy = @default.Name,
///         Description = "new rule",
///         Priority = 100,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "10.10.0.0/16",
///                 },
///             },
///         },
///         Action = "allow",
///         Preview = true,
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
/// 		_default, err := compute.NewSecurityPolicy(ctx, "default", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("policyruletest"),
/// 			Description: pulumi.String("basic global security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "default_rule", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("default rule"),
/// 			Action:         pulumi.String("deny"),
/// 			Priority:       pulumi.Int(2147483647),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "policy_rule", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule"),
/// 			Priority:       pulumi.Int(100),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("10.10.0.0/16"),
/// 					},
/// 				},
/// 			},
/// 			Action:  pulumi.String("allow"),
/// 			Preview: pulumi.Bool(true),
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
/// resource "gcp_compute_securitypolicy" "default" {
///   name        = "policyruletest"
///   description = "basic global security policy"
///   type        = "CLOUD_ARMOR"
/// }
/// resource "gcp_compute_securitypolicyrule" "default_rule" {
///   security_policy = gcp_compute_securitypolicy.default.name
///   description     = "default rule"
///   action          = "deny"
///   priority        = "2147483647"
///   match = {
///     versioned_expr = "SRC_IPS_V1"
///     config = {
///       src_ip_ranges = ["*"]
///     }
///   }
/// }
/// resource "gcp_compute_securitypolicyrule" "policy_rule" {
///   security_policy = gcp_compute_securitypolicy.default.name
///   description     = "new rule"
///   priority        = 100
///   match = {
///     versioned_expr = "SRC_IPS_V1"
///     config = {
///       src_ip_ranges = ["10.10.0.0/16"]
///     }
///   }
///   action  = "allow"
///   preview = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.SecurityPolicyRule;
/// import com.pulumi.gcp.compute.SecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchConfigArgs;
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
///         var default_ = new SecurityPolicy("default", SecurityPolicyArgs.builder()
///             .name("policyruletest")
///             .description("basic global security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var defaultRule = new SecurityPolicyRule("defaultRule", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(default_.name())
///             .description("default rule")
///             .action("deny")
///             .priority(2147483647)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("*")
///                     .build())
///                 .build())
///             .build());
///
///         var policyRule = new SecurityPolicyRule("policyRule", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(default_.name())
///             .description("new rule")
///             .priority(100)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("10.10.0.0/16")
///                     .build())
///                 .build())
///             .action("allow")
///             .preview(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: policyruletest
///       description: basic global security policy
///       type: CLOUD_ARMOR
///   defaultRule:
///     type: gcp:compute:SecurityPolicyRule
///     name: default_rule
///     properties:
///       securityPolicy: ${default.name}
///       description: default rule
///       action: deny
///       priority: '2147483647'
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - '*'
///   policyRule:
///     type: gcp:compute:SecurityPolicyRule
///     name: policy_rule
///     properties:
///       securityPolicy: ${default.name}
///       description: new rule
///       priority: 100
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - 10.10.0.0/16
///       action: allow
///       preview: true
/// ```
///
/// ### Security Policy Rule Multiple Rules
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.SecurityPolicy("default", {
///     name: "policywithmultiplerules",
///     description: "basic global security policy",
///     type: "CLOUD_ARMOR",
/// });
/// const policyRuleOne = new gcp.compute.SecurityPolicyRule("policy_rule_one", {
///     securityPolicy: _default.name,
///     description: "new rule one",
///     priority: 100,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: ["10.10.0.0/16"],
///         },
///     },
///     action: "allow",
///     preview: true,
/// });
/// const policyRuleTwo = new gcp.compute.SecurityPolicyRule("policy_rule_two", {
///     securityPolicy: _default.name,
///     description: "new rule two",
///     priority: 101,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: [
///                 "192.168.0.0/16",
///                 "10.0.0.0/8",
///             ],
///         },
///     },
///     action: "allow",
///     preview: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.SecurityPolicy("default",
///     name="policywithmultiplerules",
///     description="basic global security policy",
///     type="CLOUD_ARMOR")
/// policy_rule_one = gcp.compute.SecurityPolicyRule("policy_rule_one",
///     security_policy=default.name,
///     description="new rule one",
///     priority=100,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": ["10.10.0.0/16"],
///         },
///     },
///     action="allow",
///     preview=True)
/// policy_rule_two = gcp.compute.SecurityPolicyRule("policy_rule_two",
///     security_policy=default.name,
///     description="new rule two",
///     priority=101,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": [
///                 "192.168.0.0/16",
///                 "10.0.0.0/8",
///             ],
///         },
///     },
///     action="allow",
///     preview=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.SecurityPolicy("default", new()
///     {
///         Name = "policywithmultiplerules",
///         Description = "basic global security policy",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyRuleOne = new Gcp.Compute.SecurityPolicyRule("policy_rule_one", new()
///     {
///         SecurityPolicy = @default.Name,
///         Description = "new rule one",
///         Priority = 100,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "10.10.0.0/16",
///                 },
///             },
///         },
///         Action = "allow",
///         Preview = true,
///     });
///
///     var policyRuleTwo = new Gcp.Compute.SecurityPolicyRule("policy_rule_two", new()
///     {
///         SecurityPolicy = @default.Name,
///         Description = "new rule two",
///         Priority = 101,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "192.168.0.0/16",
///                     "10.0.0.0/8",
///                 },
///             },
///         },
///         Action = "allow",
///         Preview = true,
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
/// 		_default, err := compute.NewSecurityPolicy(ctx, "default", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("policywithmultiplerules"),
/// 			Description: pulumi.String("basic global security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "policy_rule_one", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule one"),
/// 			Priority:       pulumi.Int(100),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("10.10.0.0/16"),
/// 					},
/// 				},
/// 			},
/// 			Action:  pulumi.String("allow"),
/// 			Preview: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "policy_rule_two", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule two"),
/// 			Priority:       pulumi.Int(101),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("192.168.0.0/16"),
/// 						pulumi.String("10.0.0.0/8"),
/// 					},
/// 				},
/// 			},
/// 			Action:  pulumi.String("allow"),
/// 			Preview: pulumi.Bool(true),
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
/// resource "gcp_compute_securitypolicy" "default" {
///   name        = "policywithmultiplerules"
///   description = "basic global security policy"
///   type        = "CLOUD_ARMOR"
/// }
/// resource "gcp_compute_securitypolicyrule" "policy_rule_one" {
///   security_policy = gcp_compute_securitypolicy.default.name
///   description     = "new rule one"
///   priority        = 100
///   match = {
///     versioned_expr = "SRC_IPS_V1"
///     config = {
///       src_ip_ranges = ["10.10.0.0/16"]
///     }
///   }
///   action  = "allow"
///   preview = true
/// }
/// resource "gcp_compute_securitypolicyrule" "policy_rule_two" {
///   security_policy = gcp_compute_securitypolicy.default.name
///   description     = "new rule two"
///   priority        = 101
///   match = {
///     versioned_expr = "SRC_IPS_V1"
///     config = {
///       src_ip_ranges = ["192.168.0.0/16", "10.0.0.0/8"]
///     }
///   }
///   action  = "allow"
///   preview = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.SecurityPolicyRule;
/// import com.pulumi.gcp.compute.SecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchConfigArgs;
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
///         var default_ = new SecurityPolicy("default", SecurityPolicyArgs.builder()
///             .name("policywithmultiplerules")
///             .description("basic global security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyRuleOne = new SecurityPolicyRule("policyRuleOne", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(default_.name())
///             .description("new rule one")
///             .priority(100)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("10.10.0.0/16")
///                     .build())
///                 .build())
///             .action("allow")
///             .preview(true)
///             .build());
///
///         var policyRuleTwo = new SecurityPolicyRule("policyRuleTwo", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(default_.name())
///             .description("new rule two")
///             .priority(101)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges(
///                         "192.168.0.0/16",
///                         "10.0.0.0/8")
///                     .build())
///                 .build())
///             .action("allow")
///             .preview(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: policywithmultiplerules
///       description: basic global security policy
///       type: CLOUD_ARMOR
///   policyRuleOne:
///     type: gcp:compute:SecurityPolicyRule
///     name: policy_rule_one
///     properties:
///       securityPolicy: ${default.name}
///       description: new rule one
///       priority: 100
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - 10.10.0.0/16
///       action: allow
///       preview: true
///   policyRuleTwo:
///     type: gcp:compute:SecurityPolicyRule
///     name: policy_rule_two
///     properties:
///       securityPolicy: ${default.name}
///       description: new rule two
///       priority: 101
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - 192.168.0.0/16
///             - 10.0.0.0/8
///       action: allow
///       preview: true
/// ```
///
/// ### Security Policy Rule Advanced Features
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.SecurityPolicy("policy", {
///     name: "policyruletest",
///     description: "Security policy with WAF exclusions, Headers, and Redirect",
/// });
/// const policySecurityPolicyRule = new gcp.compute.SecurityPolicyRule("policy", {
///     securityPolicy: policy.name,
///     description: "Complex rule using advanced features: WAF config, header actions, and redirect options",
///     priority: 100,
///     action: "allow",
///     match: {
///         expr: {
///             expression: "request.path.matches('/api/v1/.*')",
///         },
///     },
///     preconfiguredWafConfig: {
///         exclusions: [{
///             targetRuleSet: "sqli-v33-stable",
///             targetRuleIds: ["owasp-crs-v030301-id942100-sqli"],
///             requestHeaders: [{
///                 operator: "EQUALS",
///                 value: "internal-scan",
///             }],
///         }],
///     },
///     headerAction: {
///         requestHeadersToAdds: [{
///             headerName: "X-Added-By-Armor",
///             headerValue: "Verified-Traffic",
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.SecurityPolicy("policy",
///     name="policyruletest",
///     description="Security policy with WAF exclusions, Headers, and Redirect")
/// policy_security_policy_rule = gcp.compute.SecurityPolicyRule("policy",
///     security_policy=policy.name,
///     description="Complex rule using advanced features: WAF config, header actions, and redirect options",
///     priority=100,
///     action="allow",
///     match={
///         "expr": {
///             "expression": "request.path.matches('/api/v1/.*')",
///         },
///     },
///     preconfigured_waf_config={
///         "exclusions": [{
///             "target_rule_set": "sqli-v33-stable",
///             "target_rule_ids": ["owasp-crs-v030301-id942100-sqli"],
///             "request_headers": [{
///                 "operator": "EQUALS",
///                 "value": "internal-scan",
///             }],
///         }],
///     },
///     header_action={
///         "request_headers_to_adds": [{
///             "header_name": "X-Added-By-Armor",
///             "header_value": "Verified-Traffic",
///         }],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = new Gcp.Compute.SecurityPolicy("policy", new()
///     {
///         Name = "policyruletest",
///         Description = "Security policy with WAF exclusions, Headers, and Redirect",
///     });
///
///     var policySecurityPolicyRule = new Gcp.Compute.SecurityPolicyRule("policy", new()
///     {
///         SecurityPolicy = policy.Name,
///         Description = "Complex rule using advanced features: WAF config, header actions, and redirect options",
///         Priority = 100,
///         Action = "allow",
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             Expr = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchExprArgs
///             {
///                 Expression = "request.path.matches('/api/v1/.*')",
///             },
///         },
///         PreconfiguredWafConfig = new Gcp.Compute.Inputs.SecurityPolicyRulePreconfiguredWafConfigArgs
///         {
///             Exclusions = new[]
///             {
///                 new Gcp.Compute.Inputs.SecurityPolicyRulePreconfiguredWafConfigExclusionArgs
///                 {
///                     TargetRuleSet = "sqli-v33-stable",
///                     TargetRuleIds = new[]
///                     {
///                         "owasp-crs-v030301-id942100-sqli",
///                     },
///                     RequestHeaders = new[]
///                     {
///                         new Gcp.Compute.Inputs.SecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeaderArgs
///                         {
///                             Operator = "EQUALS",
///                             Value = "internal-scan",
///                         },
///                     },
///                 },
///             },
///         },
///         HeaderAction = new Gcp.Compute.Inputs.SecurityPolicyRuleHeaderActionArgs
///         {
///             RequestHeadersToAdds = new[]
///             {
///                 new Gcp.Compute.Inputs.SecurityPolicyRuleHeaderActionRequestHeadersToAddArgs
///                 {
///                     HeaderName = "X-Added-By-Armor",
///                     HeaderValue = "Verified-Traffic",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policy, err := compute.NewSecurityPolicy(ctx, "policy", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("policyruletest"),
/// 			Description: pulumi.String("Security policy with WAF exclusions, Headers, and Redirect"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "policy", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: policy.Name,
/// 			Description:    pulumi.String("Complex rule using advanced features: WAF config, header actions, and redirect options"),
/// 			Priority:       pulumi.Int(100),
/// 			Action:         pulumi.String("allow"),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				Expr: &compute.SecurityPolicyRuleMatchExprArgs{
/// 					Expression: pulumi.String("request.path.matches('/api/v1/.*')"),
/// 				},
/// 			},
/// 			PreconfiguredWafConfig: &compute.SecurityPolicyRulePreconfiguredWafConfigArgs{
/// 				Exclusions: compute.SecurityPolicyRulePreconfiguredWafConfigExclusionArray{
/// 					&compute.SecurityPolicyRulePreconfiguredWafConfigExclusionArgs{
/// 						TargetRuleSet: pulumi.String("sqli-v33-stable"),
/// 						TargetRuleIds: pulumi.StringArray{
/// 							pulumi.String("owasp-crs-v030301-id942100-sqli"),
/// 						},
/// 						RequestHeaders: compute.SecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeaderArray{
/// 							&compute.SecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeaderArgs{
/// 								Operator: pulumi.String("EQUALS"),
/// 								Value:    pulumi.String("internal-scan"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			HeaderAction: &compute.SecurityPolicyRuleHeaderActionArgs{
/// 				RequestHeadersToAdds: compute.SecurityPolicyRuleHeaderActionRequestHeadersToAddArray{
/// 					&compute.SecurityPolicyRuleHeaderActionRequestHeadersToAddArgs{
/// 						HeaderName:  pulumi.String("X-Added-By-Armor"),
/// 						HeaderValue: pulumi.String("Verified-Traffic"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_securitypolicy" "policy" {
///   name        = "policyruletest"
///   description = "Security policy with WAF exclusions, Headers, and Redirect"
/// }
/// resource "gcp_compute_securitypolicyrule" "policy" {
///   security_policy = gcp_compute_securitypolicy.policy.name
///   description     = "Complex rule using advanced features: WAF config, header actions, and redirect options"
///   priority        = 100
///   action          = "allow"
///   match = {
///     expr = {
///       expression = "request.path.matches('/api/v1/.*')"
///     }
///   }
///   preconfigured_waf_config = {
///     exclusions = [{
///       "targetRuleSet" = "sqli-v33-stable"
///       "targetRuleIds" = ["owasp-crs-v030301-id942100-sqli"]
///       "requestHeaders" = [{
///         "operator" = "EQUALS"
///         "value"    = "internal-scan"
///       }]
///     }]
///   }
///   header_action = {
///     request_headers_to_adds = [{
///       "headerName"  = "X-Added-By-Armor"
///       "headerValue" = "Verified-Traffic"
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.SecurityPolicyRule;
/// import com.pulumi.gcp.compute.SecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchExprArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRulePreconfiguredWafConfigArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRulePreconfiguredWafConfigExclusionArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeaderArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleHeaderActionArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleHeaderActionRequestHeadersToAddArgs;
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
///         var policy = new SecurityPolicy("policy", SecurityPolicyArgs.builder()
///             .name("policyruletest")
///             .description("Security policy with WAF exclusions, Headers, and Redirect")
///             .build());
///
///         var policySecurityPolicyRule = new SecurityPolicyRule("policySecurityPolicyRule", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(policy.name())
///             .description("Complex rule using advanced features: WAF config, header actions, and redirect options")
///             .priority(100)
///             .action("allow")
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .expr(SecurityPolicyRuleMatchExprArgs.builder()
///                     .expression("request.path.matches('/api/v1/.*')")
///                     .build())
///                 .build())
///             .preconfiguredWafConfig(SecurityPolicyRulePreconfiguredWafConfigArgs.builder()
///                 .exclusions(SecurityPolicyRulePreconfiguredWafConfigExclusionArgs.builder()
///                     .targetRuleSet("sqli-v33-stable")
///                     .targetRuleIds("owasp-crs-v030301-id942100-sqli")
///                     .requestHeaders(SecurityPolicyRulePreconfiguredWafConfigExclusionRequestHeaderArgs.builder()
///                         .operator("EQUALS")
///                         .value("internal-scan")
///                         .build())
///                     .build())
///                 .build())
///             .headerAction(SecurityPolicyRuleHeaderActionArgs.builder()
///                 .requestHeadersToAdds(SecurityPolicyRuleHeaderActionRequestHeadersToAddArgs.builder()
///                     .headerName("X-Added-By-Armor")
///                     .headerValue("Verified-Traffic")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   policy:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: policyruletest
///       description: Security policy with WAF exclusions, Headers, and Redirect
///   policySecurityPolicyRule:
///     type: gcp:compute:SecurityPolicyRule
///     name: policy
///     properties:
///       securityPolicy: ${policy.name}
///       description: 'Complex rule using advanced features: WAF config, header actions, and redirect options'
///       priority: 100
///       action: allow
///       match:
///         expr:
///           expression: request.path.matches('/api/v1/.*')
///       preconfiguredWafConfig:
///         exclusions:
///           - targetRuleSet: sqli-v33-stable
///             targetRuleIds:
///               - owasp-crs-v030301-id942100-sqli
///             requestHeaders:
///               - operator: EQUALS
///                 value: internal-scan
///       headerAction:
///         requestHeadersToAdds:
///           - headerName: X-Added-By-Armor
///             headerValue: Verified-Traffic
/// ```
///
/// ### Security Policy Rule With Body Exclude
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.Network("default", {
///     name: "test-network",
///     autoCreateSubnetworks: false,
/// });
/// const defaultSubnetwork = new gcp.compute.Subnetwork("default", {
///     name: "test-subnet",
///     region: "us-west2",
///     network: _default.id,
///     ipCidrRange: "10.10.0.0/24",
/// });
/// const defaultHealthCheck = new gcp.compute.HealthCheck("default", {
///     name: "test-health-check",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const defaultSecurityPolicy = new gcp.compute.SecurityPolicy("default", {
///     name: "policyruletest",
///     description: "global security policy with body inspection",
///     type: "CLOUD_ARMOR",
///     advancedOptionsConfig: {
///         jsonParsing: "STANDARD",
///         logLevel: "VERBOSE",
///     },
/// });
/// const defaultInstanceTemplate = new gcp.compute.InstanceTemplate("default", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         subnetwork: defaultSubnetwork.id,
///     }],
///     name: "backendpolicy",
///     machineType: "e2-micro",
///     disks: [{
///         sourceImage: "projects/debian-cloud/global/images/family/debian-11",
///         autoDelete: true,
///         boot: true,
///     }],
/// });
/// const defaultInstanceGroupManager = new gcp.compute.InstanceGroupManager("default", {
///     name: "backendpolicy",
///     baseInstanceName: "backend",
///     zone: "us-west2-a",
///     versions: [{
///         instanceTemplate: defaultInstanceTemplate.id,
///     }],
///     targetSize: 1,
/// });
/// const defaultBackendService = new gcp.compute.BackendService("default", {
///     name: "backendpolicy",
///     protocol: "HTTP",
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     timeoutSec: 30,
///     healthChecks: defaultHealthCheck.id,
///     backends: [{
///         group: defaultInstanceGroupManager.instanceGroup,
///     }],
///     securityPolicy: defaultSecurityPolicy.id,
/// });
/// const policyRuleOne = new gcp.compute.SecurityPolicyRule("policy_rule_one", {
///     securityPolicy: defaultSecurityPolicy.name,
///     description: "waf body rule",
///     action: "deny(403)",
///     priority: 100,
///     preview: true,
///     match: {
///         expr: {
///             expression: "evaluatePreconfiguredWaf('sqli-v33-stable')",
///         },
///     },
///     preconfiguredWafConfig: {
///         exclusions: [{
///             targetRuleSet: "sqli-v33-stable",
///             requestBodies: [{
///                 operator: "EQUALS",
///                 value: "safe-field",
///             }],
///         }],
///     },
/// }, {
///     dependsOn: [defaultBackendService],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.Network("default",
///     name="test-network",
///     auto_create_subnetworks=False)
/// default_subnetwork = gcp.compute.Subnetwork("default",
///     name="test-subnet",
///     region="us-west2",
///     network=default.id,
///     ip_cidr_range="10.10.0.0/24")
/// default_health_check = gcp.compute.HealthCheck("default",
///     name="test-health-check",
///     http_health_check={
///         "port": 80,
///     })
/// default_security_policy = gcp.compute.SecurityPolicy("default",
///     name="policyruletest",
///     description="global security policy with body inspection",
///     type="CLOUD_ARMOR",
///     advanced_options_config={
///         "json_parsing": "STANDARD",
///         "log_level": "VERBOSE",
///     })
/// default_instance_template = gcp.compute.InstanceTemplate("default",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "subnetwork": default_subnetwork.id,
///     }],
///     name="backendpolicy",
///     machine_type="e2-micro",
///     disks=[{
///         "source_image": "projects/debian-cloud/global/images/family/debian-11",
///         "auto_delete": True,
///         "boot": True,
///     }])
/// default_instance_group_manager = gcp.compute.InstanceGroupManager("default",
///     name="backendpolicy",
///     base_instance_name="backend",
///     zone="us-west2-a",
///     versions=[{
///         "instance_template": default_instance_template.id,
///     }],
///     target_size=1)
/// default_backend_service = gcp.compute.BackendService("default",
///     name="backendpolicy",
///     protocol="HTTP",
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     timeout_sec=30,
///     health_checks=default_health_check.id,
///     backends=[{
///         "group": default_instance_group_manager.instance_group,
///     }],
///     security_policy=default_security_policy.id)
/// policy_rule_one = gcp.compute.SecurityPolicyRule("policy_rule_one",
///     security_policy=default_security_policy.name,
///     description="waf body rule",
///     action="deny(403)",
///     priority=100,
///     preview=True,
///     match={
///         "expr": {
///             "expression": "evaluatePreconfiguredWaf('sqli-v33-stable')",
///         },
///     },
///     preconfigured_waf_config={
///         "exclusions": [{
///             "target_rule_set": "sqli-v33-stable",
///             "request_bodies": [{
///                 "operator": "EQUALS",
///                 "value": "safe-field",
///             }],
///         }],
///     },
///     opts = pulumi.ResourceOptions(depends_on=[default_backend_service]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.Compute.Network("default", new()
///     {
///         Name = "test-network",
///         AutoCreateSubnetworks = false,
///     });
///
///     var defaultSubnetwork = new Gcp.Compute.Subnetwork("default", new()
///     {
///         Name = "test-subnet",
///         Region = "us-west2",
///         Network = @default.Id,
///         IpCidrRange = "10.10.0.0/24",
///     });
///
///     var defaultHealthCheck = new Gcp.Compute.HealthCheck("default", new()
///     {
///         Name = "test-health-check",
///         HttpHealthCheck = new Gcp.Compute.Inputs.HealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var defaultSecurityPolicy = new Gcp.Compute.SecurityPolicy("default", new()
///     {
///         Name = "policyruletest",
///         Description = "global security policy with body inspection",
///         Type = "CLOUD_ARMOR",
///         AdvancedOptionsConfig = new Gcp.Compute.Inputs.SecurityPolicyAdvancedOptionsConfigArgs
///         {
///             JsonParsing = "STANDARD",
///             LogLevel = "VERBOSE",
///         },
///     });
///
///     var defaultInstanceTemplate = new Gcp.Compute.InstanceTemplate("default", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Subnetwork = defaultSubnetwork.Id,
///             },
///         },
///         Name = "backendpolicy",
///         MachineType = "e2-micro",
///         Disks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceTemplateDiskArgs
///             {
///                 SourceImage = "projects/debian-cloud/global/images/family/debian-11",
///                 AutoDelete = true,
///                 Boot = true,
///             },
///         },
///     });
///
///     var defaultInstanceGroupManager = new Gcp.Compute.InstanceGroupManager("default", new()
///     {
///         Name = "backendpolicy",
///         BaseInstanceName = "backend",
///         Zone = "us-west2-a",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = defaultInstanceTemplate.Id,
///             },
///         },
///         TargetSize = 1,
///     });
///
///     var defaultBackendService = new Gcp.Compute.BackendService("default", new()
///     {
///         Name = "backendpolicy",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         TimeoutSec = 30,
///         HealthChecks = defaultHealthCheck.Id,
///         Backends = new[]
///         {
///             new Gcp.Compute.Inputs.BackendServiceBackendArgs
///             {
///                 Group = defaultInstanceGroupManager.InstanceGroup,
///             },
///         },
///         SecurityPolicy = defaultSecurityPolicy.Id,
///     });
///
///     var policyRuleOne = new Gcp.Compute.SecurityPolicyRule("policy_rule_one", new()
///     {
///         SecurityPolicy = defaultSecurityPolicy.Name,
///         Description = "waf body rule",
///         Action = "deny(403)",
///         Priority = 100,
///         Preview = true,
///         Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///         {
///             Expr = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchExprArgs
///             {
///                 Expression = "evaluatePreconfiguredWaf('sqli-v33-stable')",
///             },
///         },
///         PreconfiguredWafConfig = new Gcp.Compute.Inputs.SecurityPolicyRulePreconfiguredWafConfigArgs
///         {
///             Exclusions = new[]
///             {
///                 new Gcp.Compute.Inputs.SecurityPolicyRulePreconfiguredWafConfigExclusionArgs
///                 {
///                     TargetRuleSet = "sqli-v33-stable",
///                     RequestBodies = new[]
///                     {
///                         new Gcp.Compute.Inputs.SecurityPolicyRulePreconfiguredWafConfigExclusionRequestBodyArgs
///                         {
///                             Operator = "EQUALS",
///                             Value = "safe-field",
///                         },
///                     },
///                 },
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             defaultBackendService,
///         },
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
/// 		_default, err := compute.NewNetwork(ctx, "default", &compute.NetworkArgs{
/// 			Name:                  pulumi.String("test-network"),
/// 			AutoCreateSubnetworks: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSubnetwork, err := compute.NewSubnetwork(ctx, "default", &compute.SubnetworkArgs{
/// 			Name:        pulumi.String("test-subnet"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.10.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultHealthCheck, err := compute.NewHealthCheck(ctx, "default", &compute.HealthCheckArgs{
/// 			Name: pulumi.String("test-health-check"),
/// 			HttpHealthCheck: &compute.HealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultSecurityPolicy, err := compute.NewSecurityPolicy(ctx, "default", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("policyruletest"),
/// 			Description: pulumi.String("global security policy with body inspection"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 			AdvancedOptionsConfig: &compute.SecurityPolicyAdvancedOptionsConfigArgs{
/// 				JsonParsing: pulumi.String("STANDARD"),
/// 				LogLevel:    pulumi.String("VERBOSE"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstanceTemplate, err := compute.NewInstanceTemplate(ctx, "default", &compute.InstanceTemplateArgs{
/// 			NetworkInterfaces: compute.InstanceTemplateNetworkInterfaceArray{
/// 				&compute.InstanceTemplateNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceTemplateNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceTemplateNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Subnetwork: defaultSubnetwork.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			Name:        pulumi.String("backendpolicy"),
/// 			MachineType: pulumi.String("e2-micro"),
/// 			Disks: compute.InstanceTemplateDiskArray{
/// 				&compute.InstanceTemplateDiskArgs{
/// 					SourceImage: pulumi.String("projects/debian-cloud/global/images/family/debian-11"),
/// 					AutoDelete:  pulumi.Bool(true),
/// 					Boot:        pulumi.Bool(true),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstanceGroupManager, err := compute.NewInstanceGroupManager(ctx, "default", &compute.InstanceGroupManagerArgs{
/// 			Name:             pulumi.String("backendpolicy"),
/// 			BaseInstanceName: pulumi.String("backend"),
/// 			Zone:             pulumi.String("us-west2-a"),
/// 			Versions: compute.InstanceGroupManagerVersionArray{
/// 				&compute.InstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: defaultInstanceTemplate.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			TargetSize: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultBackendService, err := compute.NewBackendService(ctx, "default", &compute.BackendServiceArgs{
/// 			Name:                pulumi.String("backendpolicy"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			TimeoutSec:          pulumi.Int(30),
/// 			HealthChecks:        defaultHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 			Backends: compute.BackendServiceBackendArray{
/// 				&compute.BackendServiceBackendArgs{
/// 					Group: defaultInstanceGroupManager.InstanceGroup,
/// 				},
/// 			},
/// 			SecurityPolicy: defaultSecurityPolicy.ID().ToIDOutput().ToStringOutput(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicyRule(ctx, "policy_rule_one", &compute.SecurityPolicyRuleArgs{
/// 			SecurityPolicy: defaultSecurityPolicy.Name,
/// 			Description:    pulumi.String("waf body rule"),
/// 			Action:         pulumi.String("deny(403)"),
/// 			Priority:       pulumi.Int(100),
/// 			Preview:        pulumi.Bool(true),
/// 			Match: &compute.SecurityPolicyRuleMatchArgs{
/// 				Expr: &compute.SecurityPolicyRuleMatchExprArgs{
/// 					Expression: pulumi.String("evaluatePreconfiguredWaf('sqli-v33-stable')"),
/// 				},
/// 			},
/// 			PreconfiguredWafConfig: &compute.SecurityPolicyRulePreconfiguredWafConfigArgs{
/// 				Exclusions: compute.SecurityPolicyRulePreconfiguredWafConfigExclusionArray{
/// 					&compute.SecurityPolicyRulePreconfiguredWafConfigExclusionArgs{
/// 						TargetRuleSet: pulumi.String("sqli-v33-stable"),
/// 						RequestBodies: compute.SecurityPolicyRulePreconfiguredWafConfigExclusionRequestBodyArray{
/// 							&compute.SecurityPolicyRulePreconfiguredWafConfigExclusionRequestBodyArgs{
/// 								Operator: pulumi.String("EQUALS"),
/// 								Value:    pulumi.String("safe-field"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			defaultBackendService,
/// 		}))
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
/// resource "gcp_compute_network" "default" {
///   name                    = "test-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "test-subnet"
///   region        = "us-west2"
///   network       = gcp_compute_network.default.id
///   ip_cidr_range = "10.10.0.0/24"
/// }
/// resource "gcp_compute_healthcheck" "default" {
///   name = "test-health-check"
///   http_health_check = {
///     port = 80
///   }
/// }
/// resource "gcp_compute_securitypolicy" "default" {
///   name        = "policyruletest"
///   description = "global security policy with body inspection"
///   type        = "CLOUD_ARMOR"
///   advanced_options_config = {
///     json_parsing = "STANDARD"
///     log_level    = "VERBOSE"
///   }
/// }
/// resource "gcp_compute_instancetemplate" "default" {
///   network_interfaces {
///     access_configs {
///     }
///     subnetwork = gcp_compute_subnetwork.default.id
///   }
///   name         = "backendpolicy"
///   machine_type = "e2-micro"
///   disks {
///     source_image = "projects/debian-cloud/global/images/family/debian-11"
///     auto_delete  = true
///     boot         = true
///   }
/// }
/// resource "gcp_compute_instancegroupmanager" "default" {
///   name               = "backendpolicy"
///   base_instance_name = "backend"
///   zone               = "us-west2-a"
///   versions {
///     instance_template = gcp_compute_instancetemplate.default.id
///   }
///   target_size = 1
/// }
/// resource "gcp_compute_backendservice" "default" {
///   name                  = "backendpolicy"
///   protocol              = "HTTP"
///   load_balancing_scheme = "EXTERNAL_MANAGED"
///   timeout_sec           = 30
///   health_checks         = gcp_compute_healthcheck.default.id
///   backends {
///     group = gcp_compute_instancegroupmanager.default.instance_group
///   }
///   security_policy = gcp_compute_securitypolicy.default.id
/// }
/// resource "gcp_compute_securitypolicyrule" "policy_rule_one" {
///   depends_on      = [gcp_compute_backendservice.default]
///   security_policy = gcp_compute_securitypolicy.default.name
///   description     = "waf body rule"
///   action          = "deny(403)"
///   priority        = 100
///   preview         = true
///   match = {
///     expr = {
///       expression = "evaluatePreconfiguredWaf('sqli-v33-stable')"
///     }
///   }
///   preconfigured_waf_config = {
///     exclusions = [{
///       "targetRuleSet" = "sqli-v33-stable"
///       "requestBodies" = [{
///         "operator" = "EQUALS"
///         "value"    = "safe-field"
///       }]
///     }]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.Network;
/// import com.pulumi.gcp.compute.NetworkArgs;
/// import com.pulumi.gcp.compute.Subnetwork;
/// import com.pulumi.gcp.compute.SubnetworkArgs;
/// import com.pulumi.gcp.compute.HealthCheck;
/// import com.pulumi.gcp.compute.HealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.HealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyAdvancedOptionsConfigArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.InstanceGroupManager;
/// import com.pulumi.gcp.compute.InstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.BackendService;
/// import com.pulumi.gcp.compute.BackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.BackendServiceBackendArgs;
/// import com.pulumi.gcp.compute.SecurityPolicyRule;
/// import com.pulumi.gcp.compute.SecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchExprArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRulePreconfiguredWafConfigArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRulePreconfiguredWafConfigExclusionArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRulePreconfiguredWafConfigExclusionRequestBodyArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var default_ = new Network("default", NetworkArgs.builder()
///             .name("test-network")
///             .autoCreateSubnetworks(false)
///             .build());
///
///         var defaultSubnetwork = new Subnetwork("defaultSubnetwork", SubnetworkArgs.builder()
///             .name("test-subnet")
///             .region("us-west2")
///             .network(default_.id())
///             .ipCidrRange("10.10.0.0/24")
///             .build());
///
///         var defaultHealthCheck = new HealthCheck("defaultHealthCheck", HealthCheckArgs.builder()
///             .name("test-health-check")
///             .httpHealthCheck(HealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var defaultSecurityPolicy = new SecurityPolicy("defaultSecurityPolicy", SecurityPolicyArgs.builder()
///             .name("policyruletest")
///             .description("global security policy with body inspection")
///             .type("CLOUD_ARMOR")
///             .advancedOptionsConfig(SecurityPolicyAdvancedOptionsConfigArgs.builder()
///                 .jsonParsing("STANDARD")
///                 .logLevel("VERBOSE")
///                 .build())
///             .build());
///
///         var defaultInstanceTemplate = new InstanceTemplate("defaultInstanceTemplate", InstanceTemplateArgs.builder()
///             .networkInterfaces(InstanceTemplateNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceTemplateNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .subnetwork(defaultSubnetwork.id())
///                 .build())
///             .name("backendpolicy")
///             .machineType("e2-micro")
///             .disks(InstanceTemplateDiskArgs.builder()
///                 .sourceImage("projects/debian-cloud/global/images/family/debian-11")
///                 .autoDelete(true)
///                 .boot(true)
///                 .build())
///             .build());
///
///         var defaultInstanceGroupManager = new InstanceGroupManager("defaultInstanceGroupManager", InstanceGroupManagerArgs.builder()
///             .name("backendpolicy")
///             .baseInstanceName("backend")
///             .zone("us-west2-a")
///             .versions(InstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(defaultInstanceTemplate.id())
///                 .build())
///             .targetSize(1)
///             .build());
///
///         var defaultBackendService = new BackendService("defaultBackendService", BackendServiceArgs.builder()
///             .name("backendpolicy")
///             .protocol("HTTP")
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .timeoutSec(30)
///             .healthChecks(defaultHealthCheck.id())
///             .backends(BackendServiceBackendArgs.builder()
///                 .group(defaultInstanceGroupManager.instanceGroup())
///                 .build())
///             .securityPolicy(defaultSecurityPolicy.id())
///             .build());
///
///         var policyRuleOne = new SecurityPolicyRule("policyRuleOne", SecurityPolicyRuleArgs.builder()
///             .securityPolicy(defaultSecurityPolicy.name())
///             .description("waf body rule")
///             .action("deny(403)")
///             .priority(100)
///             .preview(true)
///             .match(SecurityPolicyRuleMatchArgs.builder()
///                 .expr(SecurityPolicyRuleMatchExprArgs.builder()
///                     .expression("evaluatePreconfiguredWaf('sqli-v33-stable')")
///                     .build())
///                 .build())
///             .preconfiguredWafConfig(SecurityPolicyRulePreconfiguredWafConfigArgs.builder()
///                 .exclusions(SecurityPolicyRulePreconfiguredWafConfigExclusionArgs.builder()
///                     .targetRuleSet("sqli-v33-stable")
///                     .requestBodies(SecurityPolicyRulePreconfiguredWafConfigExclusionRequestBodyArgs.builder()
///                         .operator("EQUALS")
///                         .value("safe-field")
///                         .build())
///                     .build())
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(defaultBackendService)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:compute:Network
///     properties:
///       name: test-network
///       autoCreateSubnetworks: false
///   defaultSubnetwork:
///     type: gcp:compute:Subnetwork
///     name: default
///     properties:
///       name: test-subnet
///       region: us-west2
///       network: ${default.id}
///       ipCidrRange: 10.10.0.0/24
///   defaultHealthCheck:
///     type: gcp:compute:HealthCheck
///     name: default
///     properties:
///       name: test-health-check
///       httpHealthCheck:
///         port: 80
///   defaultSecurityPolicy:
///     type: gcp:compute:SecurityPolicy
///     name: default
///     properties:
///       name: policyruletest
///       description: global security policy with body inspection
///       type: CLOUD_ARMOR
///       advancedOptionsConfig:
///         jsonParsing: STANDARD
///         logLevel: VERBOSE
///   defaultInstanceTemplate:
///     type: gcp:compute:InstanceTemplate
///     name: default
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           subnetwork: ${defaultSubnetwork.id}
///       name: backendpolicy
///       machineType: e2-micro
///       disks:
///         - sourceImage: projects/debian-cloud/global/images/family/debian-11
///           autoDelete: true
///           boot: true
///   defaultInstanceGroupManager:
///     type: gcp:compute:InstanceGroupManager
///     name: default
///     properties:
///       name: backendpolicy
///       baseInstanceName: backend
///       zone: us-west2-a
///       versions:
///         - instanceTemplate: ${defaultInstanceTemplate.id}
///       targetSize: 1
///   defaultBackendService:
///     type: gcp:compute:BackendService
///     name: default
///     properties:
///       name: backendpolicy
///       protocol: HTTP
///       loadBalancingScheme: EXTERNAL_MANAGED
///       timeoutSec: 30
///       healthChecks: ${defaultHealthCheck.id}
///       backends:
///         - group: ${defaultInstanceGroupManager.instanceGroup}
///       securityPolicy: ${defaultSecurityPolicy.id}
///   policyRuleOne:
///     type: gcp:compute:SecurityPolicyRule
///     name: policy_rule_one
///     properties:
///       securityPolicy: ${defaultSecurityPolicy.name}
///       description: waf body rule
///       action: deny(403)
///       priority: 100
///       preview: true
///       match:
///         expr:
///           expression: evaluatePreconfiguredWaf('sqli-v33-stable')
///       preconfiguredWafConfig:
///         exclusions:
///           - targetRuleSet: sqli-v33-stable
///             requestBodies:
///               - operator: EQUALS
///                 value: safe-field
///     options:
///       dependsOn:
///         - ${defaultBackendService}
/// ```
///
///
/// ## Import
///
/// SecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/securityPolicies/{{security_policy}}/priority/{{priority}}`
/// * `{{project}}/{{security_policy}}/{{priority}}`
/// * `{{security_policy}}/{{priority}}`
///
///
/// When using the `pulumi import` command, SecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicyRule:SecurityPolicyRule default projects/{{project}}/global/securityPolicies/{{security_policy}}/priority/{{priority}}
/// $ pulumi import gcp:compute/securityPolicyRule:SecurityPolicyRule default {{project}}/{{security_policy}}/{{priority}}
/// $ pulumi import gcp:compute/securityPolicyRule:SecurityPolicyRule default {{security_policy}}/{{priority}}
/// ```
class SecurityPolicyRuleCompute extends pulumi.CustomResource {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  /// * allow: allow access to target.
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  late final pulumi.Output<String> action;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;
  /// Optional, additional actions that are performed on headers. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyRuleHeaderAction?> headerAction;
  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyRuleMatch?> match;
  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyRulePreconfiguredWafConfig?> preconfiguredWafConfig;
  /// If set to true, the specified action is not enforced.
  late final pulumi.Output<bool?> preview;
  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  late final pulumi.Output<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Must be specified if the action is "rateBasedBan" or "throttle". Cannot be specified for any other actions.
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyRuleRateLimitOptions?> rateLimitOptions;
  /// Parameters defining the redirect action. Cannot be specified for any other actions. This field is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyRuleRedirectOptions?> redirectOptions;
  /// The name of the security policy this rule belongs to.
  late final pulumi.Output<String> securityPolicy;

  /// Creates a new [SecurityPolicyRuleCompute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityPolicyRuleCompute]. {@macro pulumi_compute_security_policy_rule_security_policy_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityPolicyRuleCompute(
    String name, {
    SecurityPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/securityPolicyRule:SecurityPolicyRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    action = registerOutput<String>('action');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    headerAction = registerOutput<SecurityPolicyRuleHeaderAction?>('headerAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    match = registerOutput<SecurityPolicyRuleMatch?>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preconfiguredWafConfig = registerOutput<SecurityPolicyRulePreconfiguredWafConfig?>('preconfiguredWafConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRulePreconfiguredWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preview = registerOutput<bool?>('preview');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    rateLimitOptions = registerOutput<SecurityPolicyRuleRateLimitOptions?>('rateLimitOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleRateLimitOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redirectOptions = registerOutput<SecurityPolicyRuleRedirectOptions?>('redirectOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleRedirectOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityPolicy = registerOutput<String>('securityPolicy');
  }

  /// Gets an existing [SecurityPolicyRuleCompute] resource's state with the given [name] and [id].
  static SecurityPolicyRuleCompute get(
    String name,
    pulumi.Input<String> id, {
    SecurityPolicyRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecurityPolicyRuleCompute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecurityPolicyRuleCompute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/securityPolicyRule:SecurityPolicyRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    headerAction = registerOutput<SecurityPolicyRuleHeaderAction?>('headerAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    match = registerOutput<SecurityPolicyRuleMatch?>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preconfiguredWafConfig = registerOutput<SecurityPolicyRulePreconfiguredWafConfig?>('preconfiguredWafConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRulePreconfiguredWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preview = registerOutput<bool?>('preview');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    rateLimitOptions = registerOutput<SecurityPolicyRuleRateLimitOptions?>('rateLimitOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleRateLimitOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redirectOptions = registerOutput<SecurityPolicyRuleRedirectOptions?>('redirectOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleRedirectOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityPolicy = registerOutput<String>('securityPolicy');
  }

  /// Creates a typed reference to an existing [SecurityPolicyRuleCompute] resource.
  SecurityPolicyRuleCompute.reference(String urn)
    : super(
        'gcp:compute/securityPolicyRule:SecurityPolicyRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    action = registerOutput<String>('action');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    headerAction = registerOutput<SecurityPolicyRuleHeaderAction?>('headerAction', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleHeaderAction.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    match = registerOutput<SecurityPolicyRuleMatch?>('match', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleMatch.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preconfiguredWafConfig = registerOutput<SecurityPolicyRulePreconfiguredWafConfig?>('preconfiguredWafConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRulePreconfiguredWafConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preview = registerOutput<bool?>('preview');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    rateLimitOptions = registerOutput<SecurityPolicyRuleRateLimitOptions?>('rateLimitOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleRateLimitOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    redirectOptions = registerOutput<SecurityPolicyRuleRedirectOptions?>('redirectOptions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRuleRedirectOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    securityPolicy = registerOutput<String>('securityPolicy');
  }
}
