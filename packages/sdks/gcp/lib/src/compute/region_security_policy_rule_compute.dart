import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_rule_args.dart';
import 'region_security_policy_rule_match.dart';
import 'region_security_policy_rule_network_match.dart';
import 'region_security_policy_rule_preconfigured_waf_config.dart';
import 'region_security_policy_rule_rate_limit_options.dart';
import 'region_security_policy_rule_state.dart';

/// A rule for the RegionSecurityPolicy.
///
///
/// To get more information about RegionSecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/beta/regionSecurityPolicies/addRule)
/// * How-to Guides
/// * [Creating region security policy rules](https://cloud.google.com/armor/docs/configure-security-policies)
///
/// ## Example Usage
///
/// ### Region Security Policy Rule Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionSecurityPolicy("default", {
///     region: "us-west2",
///     name: "policyruletest",
///     description: "basic region security policy",
///     type: "CLOUD_ARMOR",
/// });
/// const policyRule = new gcp.compute.RegionSecurityPolicyRule("policy_rule", {
///     region: "us-west2",
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
/// default = gcp.compute.RegionSecurityPolicy("default",
///     region="us-west2",
///     name="policyruletest",
///     description="basic region security policy",
///     type="CLOUD_ARMOR")
/// policy_rule = gcp.compute.RegionSecurityPolicyRule("policy_rule",
///     region="us-west2",
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
///     var @default = new Gcp.Compute.RegionSecurityPolicy("default", new()
///     {
///         Region = "us-west2",
///         Name = "policyruletest",
///         Description = "basic region security policy",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyRule = new Gcp.Compute.RegionSecurityPolicyRule("policy_rule", new()
///     {
///         Region = "us-west2",
///         SecurityPolicy = @default.Name,
///         Description = "new rule",
///         Priority = 100,
///         Match = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchConfigArgs
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
/// 		_default, err := compute.NewRegionSecurityPolicy(ctx, "default", &compute.RegionSecurityPolicyArgs{
/// 			Region:      pulumi.String("us-west2"),
/// 			Name:        pulumi.String("policyruletest"),
/// 			Description: pulumi.String("basic region security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionSecurityPolicyRule(ctx, "policy_rule", &compute.RegionSecurityPolicyRuleArgs{
/// 			Region:         pulumi.String("us-west2"),
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule"),
/// 			Priority:       pulumi.Int(100),
/// 			Match: &compute.RegionSecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.RegionSecurityPolicyRuleMatchConfigArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionSecurityPolicy;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyRule;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchConfigArgs;
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
///         var default_ = new RegionSecurityPolicy("default", RegionSecurityPolicyArgs.builder()
///             .region("us-west2")
///             .name("policyruletest")
///             .description("basic region security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyRule = new RegionSecurityPolicyRule("policyRule", RegionSecurityPolicyRuleArgs.builder()
///             .region("us-west2")
///             .securityPolicy(default_.name())
///             .description("new rule")
///             .priority(100)
///             .match(RegionSecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(RegionSecurityPolicyRuleMatchConfigArgs.builder()
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
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       region: us-west2
///       name: policyruletest
///       description: basic region security policy
///       type: CLOUD_ARMOR
///   policyRule:
///     type: gcp:compute:RegionSecurityPolicyRule
///     name: policy_rule
///     properties:
///       region: us-west2
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
/// ### Region Security Policy Rule Multiple Rules
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionSecurityPolicy("default", {
///     region: "us-west2",
///     name: "policywithmultiplerules",
///     description: "basic region security policy",
///     type: "CLOUD_ARMOR",
/// });
/// const policyRuleOne = new gcp.compute.RegionSecurityPolicyRule("policy_rule_one", {
///     region: "us-west2",
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
/// const policyRuleTwo = new gcp.compute.RegionSecurityPolicyRule("policy_rule_two", {
///     region: "us-west2",
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
/// default = gcp.compute.RegionSecurityPolicy("default",
///     region="us-west2",
///     name="policywithmultiplerules",
///     description="basic region security policy",
///     type="CLOUD_ARMOR")
/// policy_rule_one = gcp.compute.RegionSecurityPolicyRule("policy_rule_one",
///     region="us-west2",
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
/// policy_rule_two = gcp.compute.RegionSecurityPolicyRule("policy_rule_two",
///     region="us-west2",
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
///     var @default = new Gcp.Compute.RegionSecurityPolicy("default", new()
///     {
///         Region = "us-west2",
///         Name = "policywithmultiplerules",
///         Description = "basic region security policy",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyRuleOne = new Gcp.Compute.RegionSecurityPolicyRule("policy_rule_one", new()
///     {
///         Region = "us-west2",
///         SecurityPolicy = @default.Name,
///         Description = "new rule one",
///         Priority = 100,
///         Match = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchConfigArgs
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
///     var policyRuleTwo = new Gcp.Compute.RegionSecurityPolicyRule("policy_rule_two", new()
///     {
///         Region = "us-west2",
///         SecurityPolicy = @default.Name,
///         Description = "new rule two",
///         Priority = 101,
///         Match = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchConfigArgs
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
/// 		_default, err := compute.NewRegionSecurityPolicy(ctx, "default", &compute.RegionSecurityPolicyArgs{
/// 			Region:      pulumi.String("us-west2"),
/// 			Name:        pulumi.String("policywithmultiplerules"),
/// 			Description: pulumi.String("basic region security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionSecurityPolicyRule(ctx, "policy_rule_one", &compute.RegionSecurityPolicyRuleArgs{
/// 			Region:         pulumi.String("us-west2"),
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule one"),
/// 			Priority:       pulumi.Int(100),
/// 			Match: &compute.RegionSecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.RegionSecurityPolicyRuleMatchConfigArgs{
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
/// 		_, err = compute.NewRegionSecurityPolicyRule(ctx, "policy_rule_two", &compute.RegionSecurityPolicyRuleArgs{
/// 			Region:         pulumi.String("us-west2"),
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule two"),
/// 			Priority:       pulumi.Int(101),
/// 			Match: &compute.RegionSecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.RegionSecurityPolicyRuleMatchConfigArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionSecurityPolicy;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyRule;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchConfigArgs;
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
///         var default_ = new RegionSecurityPolicy("default", RegionSecurityPolicyArgs.builder()
///             .region("us-west2")
///             .name("policywithmultiplerules")
///             .description("basic region security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyRuleOne = new RegionSecurityPolicyRule("policyRuleOne", RegionSecurityPolicyRuleArgs.builder()
///             .region("us-west2")
///             .securityPolicy(default_.name())
///             .description("new rule one")
///             .priority(100)
///             .match(RegionSecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(RegionSecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("10.10.0.0/16")
///                     .build())
///                 .build())
///             .action("allow")
///             .preview(true)
///             .build());
///
///         var policyRuleTwo = new RegionSecurityPolicyRule("policyRuleTwo", RegionSecurityPolicyRuleArgs.builder()
///             .region("us-west2")
///             .securityPolicy(default_.name())
///             .description("new rule two")
///             .priority(101)
///             .match(RegionSecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(RegionSecurityPolicyRuleMatchConfigArgs.builder()
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
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       region: us-west2
///       name: policywithmultiplerules
///       description: basic region security policy
///       type: CLOUD_ARMOR
///   policyRuleOne:
///     type: gcp:compute:RegionSecurityPolicyRule
///     name: policy_rule_one
///     properties:
///       region: us-west2
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
///     type: gcp:compute:RegionSecurityPolicyRule
///     name: policy_rule_two
///     properties:
///       region: us-west2
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
/// ### Region Security Policy Rule Default Rule
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionSecurityPolicy("default", {
///     region: "us-west2",
///     name: "policywithdefaultrule",
///     description: "basic region security policy",
///     type: "CLOUD_ARMOR",
/// });
/// const defaultRule = new gcp.compute.RegionSecurityPolicyRule("default_rule", {
///     region: "us-west2",
///     securityPolicy: _default.name,
///     description: "new rule",
///     action: "deny",
///     priority: 2147483647,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: ["*"],
///         },
///     },
/// });
/// const policyRule = new gcp.compute.RegionSecurityPolicyRule("policy_rule", {
///     region: "us-west2",
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
/// default = gcp.compute.RegionSecurityPolicy("default",
///     region="us-west2",
///     name="policywithdefaultrule",
///     description="basic region security policy",
///     type="CLOUD_ARMOR")
/// default_rule = gcp.compute.RegionSecurityPolicyRule("default_rule",
///     region="us-west2",
///     security_policy=default.name,
///     description="new rule",
///     action="deny",
///     priority=2147483647,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": ["*"],
///         },
///     })
/// policy_rule = gcp.compute.RegionSecurityPolicyRule("policy_rule",
///     region="us-west2",
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
///     var @default = new Gcp.Compute.RegionSecurityPolicy("default", new()
///     {
///         Region = "us-west2",
///         Name = "policywithdefaultrule",
///         Description = "basic region security policy",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var defaultRule = new Gcp.Compute.RegionSecurityPolicyRule("default_rule", new()
///     {
///         Region = "us-west2",
///         SecurityPolicy = @default.Name,
///         Description = "new rule",
///         Action = "deny",
///         Priority = 2147483647,
///         Match = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "*",
///                 },
///             },
///         },
///     });
///
///     var policyRule = new Gcp.Compute.RegionSecurityPolicyRule("policy_rule", new()
///     {
///         Region = "us-west2",
///         SecurityPolicy = @default.Name,
///         Description = "new rule",
///         Priority = 100,
///         Match = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchConfigArgs
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
/// 		_default, err := compute.NewRegionSecurityPolicy(ctx, "default", &compute.RegionSecurityPolicyArgs{
/// 			Region:      pulumi.String("us-west2"),
/// 			Name:        pulumi.String("policywithdefaultrule"),
/// 			Description: pulumi.String("basic region security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionSecurityPolicyRule(ctx, "default_rule", &compute.RegionSecurityPolicyRuleArgs{
/// 			Region:         pulumi.String("us-west2"),
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule"),
/// 			Action:         pulumi.String("deny"),
/// 			Priority:       pulumi.Int(2147483647),
/// 			Match: &compute.RegionSecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.RegionSecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("*"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionSecurityPolicyRule(ctx, "policy_rule", &compute.RegionSecurityPolicyRuleArgs{
/// 			Region:         pulumi.String("us-west2"),
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule"),
/// 			Priority:       pulumi.Int(100),
/// 			Match: &compute.RegionSecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.RegionSecurityPolicyRuleMatchConfigArgs{
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionSecurityPolicy;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyRule;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchConfigArgs;
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
///         var default_ = new RegionSecurityPolicy("default", RegionSecurityPolicyArgs.builder()
///             .region("us-west2")
///             .name("policywithdefaultrule")
///             .description("basic region security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var defaultRule = new RegionSecurityPolicyRule("defaultRule", RegionSecurityPolicyRuleArgs.builder()
///             .region("us-west2")
///             .securityPolicy(default_.name())
///             .description("new rule")
///             .action("deny")
///             .priority(2147483647)
///             .match(RegionSecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(RegionSecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("*")
///                     .build())
///                 .build())
///             .build());
///
///         var policyRule = new RegionSecurityPolicyRule("policyRule", RegionSecurityPolicyRuleArgs.builder()
///             .region("us-west2")
///             .securityPolicy(default_.name())
///             .description("new rule")
///             .priority(100)
///             .match(RegionSecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(RegionSecurityPolicyRuleMatchConfigArgs.builder()
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
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       region: us-west2
///       name: policywithdefaultrule
///       description: basic region security policy
///       type: CLOUD_ARMOR
///   defaultRule:
///     type: gcp:compute:RegionSecurityPolicyRule
///     name: default_rule
///     properties:
///       region: us-west2
///       securityPolicy: ${default.name}
///       description: new rule
///       action: deny
///       priority: '2147483647'
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - '*'
///   policyRule:
///     type: gcp:compute:RegionSecurityPolicyRule
///     name: policy_rule
///     properties:
///       region: us-west2
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
/// ### Region Security Policy Rule With Preconfigured Waf Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.compute.RegionSecurityPolicy("default", {
///     region: "asia-southeast1",
///     name: "policyruletest",
///     description: "basic region security policy",
///     type: "CLOUD_ARMOR",
/// });
/// const policyRule = new gcp.compute.RegionSecurityPolicyRule("policy_rule", {
///     region: "asia-southeast1",
///     securityPolicy: _default.name,
///     description: "new rule",
///     priority: 100,
///     match: {
///         versionedExpr: "SRC_IPS_V1",
///         config: {
///             srcIpRanges: ["10.10.0.0/16"],
///         },
///     },
///     preconfiguredWafConfig: {
///         exclusions: [
///             {
///                 requestUris: [{
///                     operator: "STARTS_WITH",
///                     value: "/admin",
///                 }],
///                 targetRuleSet: "rce-stable",
///             },
///             {
///                 requestQueryParams: [
///                     {
///                         operator: "CONTAINS",
///                         value: "password",
///                     },
///                     {
///                         operator: "STARTS_WITH",
///                         value: "freeform",
///                     },
///                     {
///                         operator: "EQUALS",
///                         value: "description",
///                     },
///                 ],
///                 targetRuleSet: "xss-stable",
///                 targetRuleIds: [
///                     "owasp-crs-v030001-id941330-xss",
///                     "owasp-crs-v030001-id941340-xss",
///                 ],
///             },
///         ],
///     },
///     action: "allow",
///     preview: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.compute.RegionSecurityPolicy("default",
///     region="asia-southeast1",
///     name="policyruletest",
///     description="basic region security policy",
///     type="CLOUD_ARMOR")
/// policy_rule = gcp.compute.RegionSecurityPolicyRule("policy_rule",
///     region="asia-southeast1",
///     security_policy=default.name,
///     description="new rule",
///     priority=100,
///     match={
///         "versioned_expr": "SRC_IPS_V1",
///         "config": {
///             "src_ip_ranges": ["10.10.0.0/16"],
///         },
///     },
///     preconfigured_waf_config={
///         "exclusions": [
///             {
///                 "request_uris": [{
///                     "operator": "STARTS_WITH",
///                     "value": "/admin",
///                 }],
///                 "target_rule_set": "rce-stable",
///             },
///             {
///                 "request_query_params": [
///                     {
///                         "operator": "CONTAINS",
///                         "value": "password",
///                     },
///                     {
///                         "operator": "STARTS_WITH",
///                         "value": "freeform",
///                     },
///                     {
///                         "operator": "EQUALS",
///                         "value": "description",
///                     },
///                 ],
///                 "target_rule_set": "xss-stable",
///                 "target_rule_ids": [
///                     "owasp-crs-v030001-id941330-xss",
///                     "owasp-crs-v030001-id941340-xss",
///                 ],
///             },
///         ],
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
///     var @default = new Gcp.Compute.RegionSecurityPolicy("default", new()
///     {
///         Region = "asia-southeast1",
///         Name = "policyruletest",
///         Description = "basic region security policy",
///         Type = "CLOUD_ARMOR",
///     });
///
///     var policyRule = new Gcp.Compute.RegionSecurityPolicyRule("policy_rule", new()
///     {
///         Region = "asia-southeast1",
///         SecurityPolicy = @default.Name,
///         Description = "new rule",
///         Priority = 100,
///         Match = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchArgs
///         {
///             VersionedExpr = "SRC_IPS_V1",
///             Config = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchConfigArgs
///             {
///                 SrcIpRanges = new[]
///                 {
///                     "10.10.0.0/16",
///                 },
///             },
///         },
///         PreconfiguredWafConfig = new Gcp.Compute.Inputs.RegionSecurityPolicyRulePreconfiguredWafConfigArgs
///         {
///             Exclusions = new[]
///             {
///                 new Gcp.Compute.Inputs.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArgs
///                 {
///                     RequestUris = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUriArgs
///                         {
///                             Operator = "STARTS_WITH",
///                             Value = "/admin",
///                         },
///                     },
///                     TargetRuleSet = "rce-stable",
///                 },
///                 new Gcp.Compute.Inputs.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArgs
///                 {
///                     RequestQueryParams = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs
///                         {
///                             Operator = "CONTAINS",
///                             Value = "password",
///                         },
///                         new Gcp.Compute.Inputs.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs
///                         {
///                             Operator = "STARTS_WITH",
///                             Value = "freeform",
///                         },
///                         new Gcp.Compute.Inputs.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs
///                         {
///                             Operator = "EQUALS",
///                             Value = "description",
///                         },
///                     },
///                     TargetRuleSet = "xss-stable",
///                     TargetRuleIds = new[]
///                     {
///                         "owasp-crs-v030001-id941330-xss",
///                         "owasp-crs-v030001-id941340-xss",
///                     },
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
/// 		_default, err := compute.NewRegionSecurityPolicy(ctx, "default", &compute.RegionSecurityPolicyArgs{
/// 			Region:      pulumi.String("asia-southeast1"),
/// 			Name:        pulumi.String("policyruletest"),
/// 			Description: pulumi.String("basic region security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionSecurityPolicyRule(ctx, "policy_rule", &compute.RegionSecurityPolicyRuleArgs{
/// 			Region:         pulumi.String("asia-southeast1"),
/// 			SecurityPolicy: _default.Name,
/// 			Description:    pulumi.String("new rule"),
/// 			Priority:       pulumi.Int(100),
/// 			Match: &compute.RegionSecurityPolicyRuleMatchArgs{
/// 				VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 				Config: &compute.RegionSecurityPolicyRuleMatchConfigArgs{
/// 					SrcIpRanges: pulumi.StringArray{
/// 						pulumi.String("10.10.0.0/16"),
/// 					},
/// 				},
/// 			},
/// 			PreconfiguredWafConfig: &compute.RegionSecurityPolicyRulePreconfiguredWafConfigArgs{
/// 				Exclusions: compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArray{
/// 					&compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArgs{
/// 						RequestUris: compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUriArray{
/// 							&compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUriArgs{
/// 								Operator: pulumi.String("STARTS_WITH"),
/// 								Value:    pulumi.String("/admin"),
/// 							},
/// 						},
/// 						TargetRuleSet: pulumi.String("rce-stable"),
/// 					},
/// 					&compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArgs{
/// 						RequestQueryParams: compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArray{
/// 							&compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs{
/// 								Operator: pulumi.String("CONTAINS"),
/// 								Value:    pulumi.String("password"),
/// 							},
/// 							&compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs{
/// 								Operator: pulumi.String("STARTS_WITH"),
/// 								Value:    pulumi.String("freeform"),
/// 							},
/// 							&compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs{
/// 								Operator: pulumi.String("EQUALS"),
/// 								Value:    pulumi.String("description"),
/// 							},
/// 						},
/// 						TargetRuleSet: pulumi.String("xss-stable"),
/// 						TargetRuleIds: pulumi.StringArray{
/// 							pulumi.String("owasp-crs-v030001-id941330-xss"),
/// 							pulumi.String("owasp-crs-v030001-id941340-xss"),
/// 						},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionSecurityPolicy;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyRule;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchConfigArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRulePreconfiguredWafConfigArgs;
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
///         var default_ = new RegionSecurityPolicy("default", RegionSecurityPolicyArgs.builder()
///             .region("asia-southeast1")
///             .name("policyruletest")
///             .description("basic region security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///         var policyRule = new RegionSecurityPolicyRule("policyRule", RegionSecurityPolicyRuleArgs.builder()
///             .region("asia-southeast1")
///             .securityPolicy(default_.name())
///             .description("new rule")
///             .priority(100)
///             .match(RegionSecurityPolicyRuleMatchArgs.builder()
///                 .versionedExpr("SRC_IPS_V1")
///                 .config(RegionSecurityPolicyRuleMatchConfigArgs.builder()
///                     .srcIpRanges("10.10.0.0/16")
///                     .build())
///                 .build())
///             .preconfiguredWafConfig(RegionSecurityPolicyRulePreconfiguredWafConfigArgs.builder()
///                 .exclusions(
///                     RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArgs.builder()
///                         .requestUris(RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestUriArgs.builder()
///                             .operator("STARTS_WITH")
///                             .value("/admin")
///                             .build())
///                         .targetRuleSet("rce-stable")
///                         .build(),
///                     RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArgs.builder()
///                         .requestQueryParams(
///                             RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs.builder()
///                                 .operator("CONTAINS")
///                                 .value("password")
///                                 .build(),
///                             RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs.builder()
///                                 .operator("STARTS_WITH")
///                                 .value("freeform")
///                                 .build(),
///                             RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestQueryParamArgs.builder()
///                                 .operator("EQUALS")
///                                 .value("description")
///                                 .build())
///                         .targetRuleSet("xss-stable")
///                         .targetRuleIds(
///                             "owasp-crs-v030001-id941330-xss",
///                             "owasp-crs-v030001-id941340-xss")
///                         .build())
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
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       region: asia-southeast1
///       name: policyruletest
///       description: basic region security policy
///       type: CLOUD_ARMOR
///   policyRule:
///     type: gcp:compute:RegionSecurityPolicyRule
///     name: policy_rule
///     properties:
///       region: asia-southeast1
///       securityPolicy: ${default.name}
///       description: new rule
///       priority: 100
///       match:
///         versionedExpr: SRC_IPS_V1
///         config:
///           srcIpRanges:
///             - 10.10.0.0/16
///       preconfiguredWafConfig:
///         exclusions:
///           - requestUris:
///               - operator: STARTS_WITH
///                 value: /admin
///             targetRuleSet: rce-stable
///           - requestQueryParams:
///               - operator: CONTAINS
///                 value: password
///               - operator: STARTS_WITH
///                 value: freeform
///               - operator: EQUALS
///                 value: description
///             targetRuleSet: xss-stable
///             targetRuleIds:
///               - owasp-crs-v030001-id941330-xss
///               - owasp-crs-v030001-id941340-xss
///       action: allow
///       preview: true
/// ```
///
/// ### Region Security Policy Rule With Network Match
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// // First activate advanced network DDoS protection for the desired region
/// const policyddosprotection = new gcp.compute.RegionSecurityPolicy("policyddosprotection", {
///     region: "us-west2",
///     name: "policyddosprotection",
///     description: "policy for activating network DDoS protection for the desired region",
///     type: "CLOUD_ARMOR_NETWORK",
///     ddosProtectionConfig: {
///         ddosProtection: "ADVANCED_PREVIEW",
///     },
/// });
/// const edgeSecService = new gcp.compute.NetworkEdgeSecurityService("edge_sec_service", {
///     region: "us-west2",
///     name: "edgesecservice",
///     description: "linking policy to edge security service",
///     securityPolicy: policyddosprotection.selfLink,
/// });
/// // Add the desired policy and custom rule.
/// const policynetworkmatch = new gcp.compute.RegionSecurityPolicy("policynetworkmatch", {
///     region: "us-west2",
///     name: "policyfornetworkmatch",
///     description: "region security policy for network match",
///     type: "CLOUD_ARMOR_NETWORK",
///     userDefinedFields: [{
///         name: "SIG1_AT_0",
///         base: "TCP",
///         offset: 8,
///         size: 2,
///         mask: "0x8F00",
///     }],
/// }, {
///     dependsOn: [edgeSecService],
/// });
/// const policyRuleNetworkMatch = new gcp.compute.RegionSecurityPolicyRule("policy_rule_network_match", {
///     region: "us-west2",
///     securityPolicy: policynetworkmatch.name,
///     description: "custom rule for network match",
///     priority: 100,
///     networkMatch: {
///         srcIpRanges: ["10.10.0.0/16"],
///         userDefinedFields: [{
///             name: "SIG1_AT_0",
///             values: ["0x8F00"],
///         }],
///     },
///     action: "allow",
///     preview: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// # First activate advanced network DDoS protection for the desired region
/// policyddosprotection = gcp.compute.RegionSecurityPolicy("policyddosprotection",
///     region="us-west2",
///     name="policyddosprotection",
///     description="policy for activating network DDoS protection for the desired region",
///     type="CLOUD_ARMOR_NETWORK",
///     ddos_protection_config={
///         "ddos_protection": "ADVANCED_PREVIEW",
///     })
/// edge_sec_service = gcp.compute.NetworkEdgeSecurityService("edge_sec_service",
///     region="us-west2",
///     name="edgesecservice",
///     description="linking policy to edge security service",
///     security_policy=policyddosprotection.self_link)
/// # Add the desired policy and custom rule.
/// policynetworkmatch = gcp.compute.RegionSecurityPolicy("policynetworkmatch",
///     region="us-west2",
///     name="policyfornetworkmatch",
///     description="region security policy for network match",
///     type="CLOUD_ARMOR_NETWORK",
///     user_defined_fields=[{
///         "name": "SIG1_AT_0",
///         "base": "TCP",
///         "offset": 8,
///         "size": 2,
///         "mask": "0x8F00",
///     }],
///     opts = pulumi.ResourceOptions(depends_on=[edge_sec_service]))
/// policy_rule_network_match = gcp.compute.RegionSecurityPolicyRule("policy_rule_network_match",
///     region="us-west2",
///     security_policy=policynetworkmatch.name,
///     description="custom rule for network match",
///     priority=100,
///     network_match={
///         "src_ip_ranges": ["10.10.0.0/16"],
///         "user_defined_fields": [{
///             "name": "SIG1_AT_0",
///             "values": ["0x8F00"],
///         }],
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
///     // First activate advanced network DDoS protection for the desired region
///     var policyddosprotection = new Gcp.Compute.RegionSecurityPolicy("policyddosprotection", new()
///     {
///         Region = "us-west2",
///         Name = "policyddosprotection",
///         Description = "policy for activating network DDoS protection for the desired region",
///         Type = "CLOUD_ARMOR_NETWORK",
///         DdosProtectionConfig = new Gcp.Compute.Inputs.RegionSecurityPolicyDdosProtectionConfigArgs
///         {
///             DdosProtection = "ADVANCED_PREVIEW",
///         },
///     });
///
///     var edgeSecService = new Gcp.Compute.NetworkEdgeSecurityService("edge_sec_service", new()
///     {
///         Region = "us-west2",
///         Name = "edgesecservice",
///         Description = "linking policy to edge security service",
///         SecurityPolicy = policyddosprotection.SelfLink,
///     });
///
///     // Add the desired policy and custom rule.
///     var policynetworkmatch = new Gcp.Compute.RegionSecurityPolicy("policynetworkmatch", new()
///     {
///         Region = "us-west2",
///         Name = "policyfornetworkmatch",
///         Description = "region security policy for network match",
///         Type = "CLOUD_ARMOR_NETWORK",
///         UserDefinedFields = new[]
///         {
///             new Gcp.Compute.Inputs.RegionSecurityPolicyUserDefinedFieldArgs
///             {
///                 Name = "SIG1_AT_0",
///                 Base = "TCP",
///                 Offset = 8,
///                 Size = 2,
///                 Mask = "0x8F00",
///             },
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             edgeSecService,
///         },
///     });
///
///     var policyRuleNetworkMatch = new Gcp.Compute.RegionSecurityPolicyRule("policy_rule_network_match", new()
///     {
///         Region = "us-west2",
///         SecurityPolicy = policynetworkmatch.Name,
///         Description = "custom rule for network match",
///         Priority = 100,
///         NetworkMatch = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleNetworkMatchArgs
///         {
///             SrcIpRanges = new[]
///             {
///                 "10.10.0.0/16",
///             },
///             UserDefinedFields = new[]
///             {
///                 new Gcp.Compute.Inputs.RegionSecurityPolicyRuleNetworkMatchUserDefinedFieldArgs
///                 {
///                     Name = "SIG1_AT_0",
///                     Values = new[]
///                     {
///                         "0x8F00",
///                     },
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
/// 		// First activate advanced network DDoS protection for the desired region
/// 		policyddosprotection, err := compute.NewRegionSecurityPolicy(ctx, "policyddosprotection", &compute.RegionSecurityPolicyArgs{
/// 			Region:      pulumi.String("us-west2"),
/// 			Name:        pulumi.String("policyddosprotection"),
/// 			Description: pulumi.String("policy for activating network DDoS protection for the desired region"),
/// 			Type:        pulumi.String("CLOUD_ARMOR_NETWORK"),
/// 			DdosProtectionConfig: &compute.RegionSecurityPolicyDdosProtectionConfigArgs{
/// 				DdosProtection: pulumi.String("ADVANCED_PREVIEW"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		edgeSecService, err := compute.NewNetworkEdgeSecurityService(ctx, "edge_sec_service", &compute.NetworkEdgeSecurityServiceArgs{
/// 			Region:         pulumi.String("us-west2"),
/// 			Name:           pulumi.String("edgesecservice"),
/// 			Description:    pulumi.String("linking policy to edge security service"),
/// 			SecurityPolicy: policyddosprotection.SelfLink,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		// Add the desired policy and custom rule.
/// 		policynetworkmatch, err := compute.NewRegionSecurityPolicy(ctx, "policynetworkmatch", &compute.RegionSecurityPolicyArgs{
/// 			Region:      pulumi.String("us-west2"),
/// 			Name:        pulumi.String("policyfornetworkmatch"),
/// 			Description: pulumi.String("region security policy for network match"),
/// 			Type:        pulumi.String("CLOUD_ARMOR_NETWORK"),
/// 			UserDefinedFields: compute.RegionSecurityPolicyUserDefinedFieldArray{
/// 				&compute.RegionSecurityPolicyUserDefinedFieldArgs{
/// 					Name:   pulumi.String("SIG1_AT_0"),
/// 					Base:   pulumi.String("TCP"),
/// 					Offset: pulumi.Int(8),
/// 					Size:   pulumi.Int(2),
/// 					Mask:   pulumi.String("0x8F00"),
/// 				},
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			edgeSecService,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionSecurityPolicyRule(ctx, "policy_rule_network_match", &compute.RegionSecurityPolicyRuleArgs{
/// 			Region:         pulumi.String("us-west2"),
/// 			SecurityPolicy: policynetworkmatch.Name,
/// 			Description:    pulumi.String("custom rule for network match"),
/// 			Priority:       pulumi.Int(100),
/// 			NetworkMatch: &compute.RegionSecurityPolicyRuleNetworkMatchArgs{
/// 				SrcIpRanges: pulumi.StringArray{
/// 					pulumi.String("10.10.0.0/16"),
/// 				},
/// 				UserDefinedFields: compute.RegionSecurityPolicyRuleNetworkMatchUserDefinedFieldArray{
/// 					&compute.RegionSecurityPolicyRuleNetworkMatchUserDefinedFieldArgs{
/// 						Name: pulumi.String("SIG1_AT_0"),
/// 						Values: pulumi.StringArray{
/// 							pulumi.String("0x8F00"),
/// 						},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.compute.RegionSecurityPolicy;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyDdosProtectionConfigArgs;
/// import com.pulumi.gcp.compute.NetworkEdgeSecurityService;
/// import com.pulumi.gcp.compute.NetworkEdgeSecurityServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyUserDefinedFieldArgs;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyRule;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleNetworkMatchArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         // First activate advanced network DDoS protection for the desired region
///         var policyddosprotection = new RegionSecurityPolicy("policyddosprotection", RegionSecurityPolicyArgs.builder()
///             .region("us-west2")
///             .name("policyddosprotection")
///             .description("policy for activating network DDoS protection for the desired region")
///             .type("CLOUD_ARMOR_NETWORK")
///             .ddosProtectionConfig(RegionSecurityPolicyDdosProtectionConfigArgs.builder()
///                 .ddosProtection("ADVANCED_PREVIEW")
///                 .build())
///             .build());
///
///         var edgeSecService = new NetworkEdgeSecurityService("edgeSecService", NetworkEdgeSecurityServiceArgs.builder()
///             .region("us-west2")
///             .name("edgesecservice")
///             .description("linking policy to edge security service")
///             .securityPolicy(policyddosprotection.selfLink())
///             .build());
///
///         // Add the desired policy and custom rule.
///         var policynetworkmatch = new RegionSecurityPolicy("policynetworkmatch", RegionSecurityPolicyArgs.builder()
///             .region("us-west2")
///             .name("policyfornetworkmatch")
///             .description("region security policy for network match")
///             .type("CLOUD_ARMOR_NETWORK")
///             .userDefinedFields(RegionSecurityPolicyUserDefinedFieldArgs.builder()
///                 .name("SIG1_AT_0")
///                 .base("TCP")
///                 .offset(8)
///                 .size(2)
///                 .mask("0x8F00")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(edgeSecService)
///                 .build());
///
///         var policyRuleNetworkMatch = new RegionSecurityPolicyRule("policyRuleNetworkMatch", RegionSecurityPolicyRuleArgs.builder()
///             .region("us-west2")
///             .securityPolicy(policynetworkmatch.name())
///             .description("custom rule for network match")
///             .priority(100)
///             .networkMatch(RegionSecurityPolicyRuleNetworkMatchArgs.builder()
///                 .srcIpRanges("10.10.0.0/16")
///                 .userDefinedFields(RegionSecurityPolicyRuleNetworkMatchUserDefinedFieldArgs.builder()
///                     .name("SIG1_AT_0")
///                     .values("0x8F00")
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
///   # First activate advanced network DDoS protection for the desired region
///   policyddosprotection:
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       region: us-west2
///       name: policyddosprotection
///       description: policy for activating network DDoS protection for the desired region
///       type: CLOUD_ARMOR_NETWORK
///       ddosProtectionConfig:
///         ddosProtection: ADVANCED_PREVIEW
///   edgeSecService:
///     type: gcp:compute:NetworkEdgeSecurityService
///     name: edge_sec_service
///     properties:
///       region: us-west2
///       name: edgesecservice
///       description: linking policy to edge security service
///       securityPolicy: ${policyddosprotection.selfLink}
///   # Add the desired policy and custom rule.
///   policynetworkmatch:
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       region: us-west2
///       name: policyfornetworkmatch
///       description: region security policy for network match
///       type: CLOUD_ARMOR_NETWORK
///       userDefinedFields:
///         - name: SIG1_AT_0
///           base: TCP
///           offset: 8
///           size: 2
///           mask: 0x8F00
///     options:
///       dependsOn:
///         - ${edgeSecService}
///   policyRuleNetworkMatch:
///     type: gcp:compute:RegionSecurityPolicyRule
///     name: policy_rule_network_match
///     properties:
///       region: us-west2
///       securityPolicy: ${policynetworkmatch.name}
///       description: custom rule for network match
///       priority: 100
///       networkMatch:
///         srcIpRanges:
///           - 10.10.0.0/16
///         userDefinedFields:
///           - name: SIG1_AT_0
///             values:
///               - 0x8F00
///       action: allow
///       preview: true
/// ```
///
///
/// ## Import
///
/// RegionSecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/securityPolicies/{{security_policy}}/priority/{{priority}}`
///
/// * `{{project}}/{{region}}/{{security_policy}}/{{priority}}`
///
/// * `{{region}}/{{security_policy}}/{{priority}}`
///
/// * `{{security_policy}}/{{priority}}`
///
/// When using the `pulumi import` command, RegionSecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule default projects/{{project}}/regions/{{region}}/securityPolicies/{{security_policy}}/priority/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule default {{project}}/{{region}}/{{security_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule default {{region}}/{{security_policy}}/{{priority}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule default {{security_policy}}/{{priority}}
/// ```
class RegionSecurityPolicyRuleCompute extends pulumi.CustomResource {
  /// The Action to perform when the rule is matched. The following are the valid actions:
  /// * allow: allow access to target.
  /// * deny(STATUS): deny access to target, returns the HTTP response code specified. Valid values for STATUS are 403, 404, and 502.
  /// * rate_based_ban: limit client traffic to the configured threshold and ban the client if the traffic exceeds the threshold. Configure parameters for this action in RateLimitOptions. Requires rateLimitOptions to be set.
  /// * redirect: redirect to a different target. This can either be an internal reCAPTCHA redirect, or an external URL-based redirect via a 302 response. Parameters for this action can be configured via redirectOptions. This action is only supported in Global Security Policies of type CLOUD_ARMOR.
  /// * throttle: limit client traffic to the configured threshold. Configure parameters for this action in rateLimitOptions. Requires rateLimitOptions to be set for this.
  late final pulumi.Output<String> action;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;

  /// A match condition that incoming traffic is evaluated against.
  /// If it evaluates to true, the corresponding 'action' is enforced.
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyRuleMatch?> match;

  /// A match condition that incoming packets are evaluated against for CLOUD_ARMOR_NETWORK security policies. If it matches, the corresponding 'action' is enforced.
  /// The match criteria for a rule consists of built-in match fields (like 'srcIpRanges') and potentially multiple user-defined match fields ('userDefinedFields').
  /// Field values may be extracted directly from the packet or derived from it (e.g. 'srcRegionCodes'). Some fields may not be present in every packet (e.g. 'srcPorts'). A user-defined field is only present if the base header is found in the packet and the entire field is in bounds.
  /// Each match field may specify which values can match it, listing one or more ranges, prefixes, or exact values that are considered a match for the field. A field value must be present in order to match a specified match field. If no match values are specified for a match field, then any field value is considered to match it, and it's not required to be present. For strings specifying '*' is also equivalent to match all.
  /// For a packet to match a rule, all specified match fields must match the corresponding field values derived from the packet.
  /// Example:
  /// networkMatch: srcIpRanges: - "192.0.2.0/24" - "198.51.100.0/24" userDefinedFields: - name: "ipv4_fragment_offset" values: - "1-0x1fff"
  /// The above match condition matches packets with a source IP in 192.0.2.0/24 or 198.51.100.0/24 and a user-defined field named "ipv4_fragment_offset" with a value between 1 and 0x1fff inclusive
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyRuleNetworkMatch?> networkMatch;

  /// Preconfigured WAF configuration to be applied for the rule.
  /// If the rule does not evaluate preconfigured WAF rules, i.e., if evaluatePreconfiguredWaf() is not used, this field will have no effect.
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyRulePreconfiguredWafConfig?>
  preconfiguredWafConfig;

  /// If set to true, the specified action is not enforced.
  late final pulumi.Output<bool?> preview;

  /// An integer indicating the priority of a rule in the list.
  /// The priority must be a positive value between 0 and 2147483647.
  /// Rules are evaluated from highest to lowest priority where 0 is the highest priority and 2147483647 is the lowest priority.
  late final pulumi.Output<int> priority;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Must be specified if the action is "rate_based_ban" or "throttle". Cannot be specified for any other actions.
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyRuleRateLimitOptions?>
  rateLimitOptions;

  /// The Region in which the created Region Security Policy rule should reside.
  late final pulumi.Output<String> region;

  /// The name of the security policy this rule belongs to.
  late final pulumi.Output<String> securityPolicy;

  /// Creates a new [RegionSecurityPolicyRuleCompute].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionSecurityPolicyRuleCompute]. {@macro pulumi_compute_region_security_policy_rule_region_security_policy_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionSecurityPolicyRuleCompute(
    String name, {
    RegionSecurityPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    description = registerOutput<String?>('description');
    match = registerOutput<RegionSecurityPolicyRuleMatch?>(
      'match',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegionSecurityPolicyRuleMatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    networkMatch = registerOutput<RegionSecurityPolicyRuleNetworkMatch?>(
      'networkMatch',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegionSecurityPolicyRuleNetworkMatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    preconfiguredWafConfig =
        registerOutput<RegionSecurityPolicyRulePreconfiguredWafConfig?>(
          'preconfiguredWafConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RegionSecurityPolicyRulePreconfiguredWafConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    preview = registerOutput<bool?>('preview');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    rateLimitOptions =
        registerOutput<RegionSecurityPolicyRuleRateLimitOptions?>(
          'rateLimitOptions',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RegionSecurityPolicyRuleRateLimitOptions.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    region = registerOutput<String>('region');
    securityPolicy = registerOutput<String>('securityPolicy');
  }

  /// Gets an existing [RegionSecurityPolicyRuleCompute] resource's state with the given [name] and [id].
  static RegionSecurityPolicyRuleCompute get(
    String name,
    pulumi.Input<String> id, {
    RegionSecurityPolicyRuleState? state,
  }) {
    return RegionSecurityPolicyRuleCompute._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionSecurityPolicyRuleCompute._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/regionSecurityPolicyRule:RegionSecurityPolicyRule',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    action = registerOutput<String>('action');
    description = registerOutput<String?>('description');
    match = registerOutput<RegionSecurityPolicyRuleMatch?>(
      'match',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegionSecurityPolicyRuleMatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    networkMatch = registerOutput<RegionSecurityPolicyRuleNetworkMatch?>(
      'networkMatch',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RegionSecurityPolicyRuleNetworkMatch.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    preconfiguredWafConfig =
        registerOutput<RegionSecurityPolicyRulePreconfiguredWafConfig?>(
          'preconfiguredWafConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RegionSecurityPolicyRulePreconfiguredWafConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    preview = registerOutput<bool?>('preview');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    rateLimitOptions =
        registerOutput<RegionSecurityPolicyRuleRateLimitOptions?>(
          'rateLimitOptions',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RegionSecurityPolicyRuleRateLimitOptions.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    region = registerOutput<String>('region');
    securityPolicy = registerOutput<String>('securityPolicy');
  }
}
