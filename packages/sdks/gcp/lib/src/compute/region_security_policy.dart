import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_advanced_options_config.dart';
import 'region_security_policy_args.dart';
import 'region_security_policy_ddos_protection_config.dart';
import 'region_security_policy_state.dart';

/// Represents a Region Cloud Armor Security Policy resource.
///
///
/// To get more information about RegionSecurityPolicy, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/regionSecurityPolicies)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/armor/docs/security-policy-concepts)
///
/// ## Example Usage
///
/// ### Region Security Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const region_sec_policy_basic = new gcp.compute.RegionSecurityPolicy("region-sec-policy-basic", {
///     name: "my-sec-policy-basic",
///     description: "basic region security policy",
///     type: "CLOUD_ARMOR",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// region_sec_policy_basic = gcp.compute.RegionSecurityPolicy("region-sec-policy-basic",
///     name="my-sec-policy-basic",
///     description="basic region security policy",
///     type="CLOUD_ARMOR")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var region_sec_policy_basic = new Gcp.Compute.RegionSecurityPolicy("region-sec-policy-basic", new()
///     {
///         Name = "my-sec-policy-basic",
///         Description = "basic region security policy",
///         Type = "CLOUD_ARMOR",
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
/// 		_, err := compute.NewRegionSecurityPolicy(ctx, "region-sec-policy-basic", &compute.RegionSecurityPolicyArgs{
/// 			Name:        pulumi.String("my-sec-policy-basic"),
/// 			Description: pulumi.String("basic region security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
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
///         var region_sec_policy_basic = new RegionSecurityPolicy("region-sec-policy-basic", RegionSecurityPolicyArgs.builder()
///             .name("my-sec-policy-basic")
///             .description("basic region security policy")
///             .type("CLOUD_ARMOR")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   region-sec-policy-basic:
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       name: my-sec-policy-basic
///       description: basic region security policy
///       type: CLOUD_ARMOR
/// ```
///
/// ### Region Security Policy With Ddos Protection Config
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const region_sec_policy_ddos_protection = new gcp.compute.RegionSecurityPolicy("region-sec-policy-ddos-protection", {
///     name: "my-sec-policy-ddos-protection",
///     description: "with ddos protection config",
///     type: "CLOUD_ARMOR_NETWORK",
///     ddosProtectionConfig: {
///         ddosProtection: "ADVANCED_PREVIEW",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// region_sec_policy_ddos_protection = gcp.compute.RegionSecurityPolicy("region-sec-policy-ddos-protection",
///     name="my-sec-policy-ddos-protection",
///     description="with ddos protection config",
///     type="CLOUD_ARMOR_NETWORK",
///     ddos_protection_config={
///         "ddos_protection": "ADVANCED_PREVIEW",
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
///     var region_sec_policy_ddos_protection = new Gcp.Compute.RegionSecurityPolicy("region-sec-policy-ddos-protection", new()
///     {
///         Name = "my-sec-policy-ddos-protection",
///         Description = "with ddos protection config",
///         Type = "CLOUD_ARMOR_NETWORK",
///         DdosProtectionConfig = new Gcp.Compute.Inputs.RegionSecurityPolicyDdosProtectionConfigArgs
///         {
///             DdosProtection = "ADVANCED_PREVIEW",
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
/// 		_, err := compute.NewRegionSecurityPolicy(ctx, "region-sec-policy-ddos-protection", &compute.RegionSecurityPolicyArgs{
/// 			Name:        pulumi.String("my-sec-policy-ddos-protection"),
/// 			Description: pulumi.String("with ddos protection config"),
/// 			Type:        pulumi.String("CLOUD_ARMOR_NETWORK"),
/// 			DdosProtectionConfig: &compute.RegionSecurityPolicyDdosProtectionConfigArgs{
/// 				DdosProtection: pulumi.String("ADVANCED_PREVIEW"),
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
/// import com.pulumi.gcp.compute.RegionSecurityPolicy;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyDdosProtectionConfigArgs;
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
///         var region_sec_policy_ddos_protection = new RegionSecurityPolicy("region-sec-policy-ddos-protection", RegionSecurityPolicyArgs.builder()
///             .name("my-sec-policy-ddos-protection")
///             .description("with ddos protection config")
///             .type("CLOUD_ARMOR_NETWORK")
///             .ddosProtectionConfig(RegionSecurityPolicyDdosProtectionConfigArgs.builder()
///                 .ddosProtection("ADVANCED_PREVIEW")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   region-sec-policy-ddos-protection:
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       name: my-sec-policy-ddos-protection
///       description: with ddos protection config
///       type: CLOUD_ARMOR_NETWORK
///       ddosProtectionConfig:
///         ddosProtection: ADVANCED_PREVIEW
/// ```
///
/// ### Region Security Policy With User Defined Fields
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const region_sec_policy_user_defined_fields = new gcp.compute.RegionSecurityPolicy("region-sec-policy-user-defined-fields", {
///     name: "my-sec-policy-user-defined-fields",
///     description: "with user defined fields",
///     type: "CLOUD_ARMOR_NETWORK",
///     userDefinedFields: [
///         {
///             name: "SIG1_AT_0",
///             base: "UDP",
///             offset: 8,
///             size: 2,
///             mask: "0x8F00",
///         },
///         {
///             name: "SIG2_AT_8",
///             base: "UDP",
///             offset: 16,
///             size: 4,
///             mask: "0xFFFFFFFF",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// region_sec_policy_user_defined_fields = gcp.compute.RegionSecurityPolicy("region-sec-policy-user-defined-fields",
///     name="my-sec-policy-user-defined-fields",
///     description="with user defined fields",
///     type="CLOUD_ARMOR_NETWORK",
///     user_defined_fields=[
///         {
///             "name": "SIG1_AT_0",
///             "base": "UDP",
///             "offset": 8,
///             "size": 2,
///             "mask": "0x8F00",
///         },
///         {
///             "name": "SIG2_AT_8",
///             "base": "UDP",
///             "offset": 16,
///             "size": 4,
///             "mask": "0xFFFFFFFF",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var region_sec_policy_user_defined_fields = new Gcp.Compute.RegionSecurityPolicy("region-sec-policy-user-defined-fields", new()
///     {
///         Name = "my-sec-policy-user-defined-fields",
///         Description = "with user defined fields",
///         Type = "CLOUD_ARMOR_NETWORK",
///         UserDefinedFields = new[]
///         {
///             new Gcp.Compute.Inputs.RegionSecurityPolicyUserDefinedFieldArgs
///             {
///                 Name = "SIG1_AT_0",
///                 Base = "UDP",
///                 Offset = 8,
///                 Size = 2,
///                 Mask = "0x8F00",
///             },
///             new Gcp.Compute.Inputs.RegionSecurityPolicyUserDefinedFieldArgs
///             {
///                 Name = "SIG2_AT_8",
///                 Base = "UDP",
///                 Offset = 16,
///                 Size = 4,
///                 Mask = "0xFFFFFFFF",
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
/// 		_, err := compute.NewRegionSecurityPolicy(ctx, "region-sec-policy-user-defined-fields", &compute.RegionSecurityPolicyArgs{
/// 			Name:        pulumi.String("my-sec-policy-user-defined-fields"),
/// 			Description: pulumi.String("with user defined fields"),
/// 			Type:        pulumi.String("CLOUD_ARMOR_NETWORK"),
/// 			UserDefinedFields: compute.RegionSecurityPolicyUserDefinedFieldArray{
/// 				&compute.RegionSecurityPolicyUserDefinedFieldArgs{
/// 					Name:   pulumi.String("SIG1_AT_0"),
/// 					Base:   pulumi.String("UDP"),
/// 					Offset: pulumi.Int(8),
/// 					Size:   pulumi.Int(2),
/// 					Mask:   pulumi.String("0x8F00"),
/// 				},
/// 				&compute.RegionSecurityPolicyUserDefinedFieldArgs{
/// 					Name:   pulumi.String("SIG2_AT_8"),
/// 					Base:   pulumi.String("UDP"),
/// 					Offset: pulumi.Int(16),
/// 					Size:   pulumi.Int(4),
/// 					Mask:   pulumi.String("0xFFFFFFFF"),
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
/// import com.pulumi.gcp.compute.RegionSecurityPolicy;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyUserDefinedFieldArgs;
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
///         var region_sec_policy_user_defined_fields = new RegionSecurityPolicy("region-sec-policy-user-defined-fields", RegionSecurityPolicyArgs.builder()
///             .name("my-sec-policy-user-defined-fields")
///             .description("with user defined fields")
///             .type("CLOUD_ARMOR_NETWORK")
///             .userDefinedFields(
///                 RegionSecurityPolicyUserDefinedFieldArgs.builder()
///                     .name("SIG1_AT_0")
///                     .base("UDP")
///                     .offset(8)
///                     .size(2)
///                     .mask("0x8F00")
///                     .build(),
///                 RegionSecurityPolicyUserDefinedFieldArgs.builder()
///                     .name("SIG2_AT_8")
///                     .base("UDP")
///                     .offset(16)
///                     .size(4)
///                     .mask("0xFFFFFFFF")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   region-sec-policy-user-defined-fields:
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       name: my-sec-policy-user-defined-fields
///       description: with user defined fields
///       type: CLOUD_ARMOR_NETWORK
///       userDefinedFields:
///         - name: SIG1_AT_0
///           base: UDP
///           offset: 8
///           size: 2
///           mask: 0x8F00
///         - name: SIG2_AT_8
///           base: UDP
///           offset: 16
///           size: 4
///           mask: 0xFFFFFFFF
/// ```
///
/// ### Region Security Policy With Rules
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const region_sec_policy_with_rules = new gcp.compute.RegionSecurityPolicy("region-sec-policy-with-rules", {
///     name: "my-sec-policy-with-rules",
///     description: "basic region security policy with multiple rules",
///     type: "CLOUD_ARMOR",
///     rules: [
///         {
///             action: "deny",
///             priority: 1000,
///             match: {
///                 expr: {
///                     expression: "request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2",
///                 },
///             },
///         },
///         {
///             action: "deny",
///             priority: 2147483647,
///             match: {
///                 versionedExpr: "SRC_IPS_V1",
///                 config: {
///                     srcIpRanges: ["*"],
///                 },
///             },
///             description: "default rule",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// region_sec_policy_with_rules = gcp.compute.RegionSecurityPolicy("region-sec-policy-with-rules",
///     name="my-sec-policy-with-rules",
///     description="basic region security policy with multiple rules",
///     type="CLOUD_ARMOR",
///     rules=[
///         {
///             "action": "deny",
///             "priority": 1000,
///             "match": {
///                 "expr": {
///                     "expression": "request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2",
///                 },
///             },
///         },
///         {
///             "action": "deny",
///             "priority": 2147483647,
///             "match": {
///                 "versioned_expr": "SRC_IPS_V1",
///                 "config": {
///                     "src_ip_ranges": ["*"],
///                 },
///             },
///             "description": "default rule",
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var region_sec_policy_with_rules = new Gcp.Compute.RegionSecurityPolicy("region-sec-policy-with-rules", new()
///     {
///         Name = "my-sec-policy-with-rules",
///         Description = "basic region security policy with multiple rules",
///         Type = "CLOUD_ARMOR",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.RegionSecurityPolicyRuleArgs
///             {
///                 Action = "deny",
///                 Priority = 1000,
///                 Match = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchArgs
///                 {
///                     Expr = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchExprArgs
///                     {
///                         Expression = "request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2",
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.RegionSecurityPolicyRuleArgs
///             {
///                 Action = "deny",
///                 Priority = 2147483647,
///                 Match = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchArgs
///                 {
///                     VersionedExpr = "SRC_IPS_V1",
///                     Config = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchConfigArgs
///                     {
///                         SrcIpRanges = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Description = "default rule",
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
/// 		_, err := compute.NewRegionSecurityPolicy(ctx, "region-sec-policy-with-rules", &compute.RegionSecurityPolicyArgs{
/// 			Name:        pulumi.String("my-sec-policy-with-rules"),
/// 			Description: pulumi.String("basic region security policy with multiple rules"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 			Rules: compute.RegionSecurityPolicyRuleTypeArray{
/// 				&compute.RegionSecurityPolicyRuleTypeArgs{
/// 					Action:   pulumi.String("deny"),
/// 					Priority: pulumi.Int(1000),
/// 					Match: &compute.RegionSecurityPolicyRuleMatchArgs{
/// 						Expr: &compute.RegionSecurityPolicyRuleMatchExprArgs{
/// 							Expression: pulumi.String("request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2"),
/// 						},
/// 					},
/// 				},
/// 				&compute.RegionSecurityPolicyRuleTypeArgs{
/// 					Action:   pulumi.String("deny"),
/// 					Priority: pulumi.Int(2147483647),
/// 					Match: &compute.RegionSecurityPolicyRuleMatchArgs{
/// 						VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 						Config: &compute.RegionSecurityPolicyRuleMatchConfigArgs{
/// 							SrcIpRanges: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Description: pulumi.String("default rule"),
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
/// import com.pulumi.gcp.compute.RegionSecurityPolicy;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchExprArgs;
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
///         var region_sec_policy_with_rules = new RegionSecurityPolicy("region-sec-policy-with-rules", RegionSecurityPolicyArgs.builder()
///             .name("my-sec-policy-with-rules")
///             .description("basic region security policy with multiple rules")
///             .type("CLOUD_ARMOR")
///             .rules(
///                 RegionSecurityPolicyRuleArgs.builder()
///                     .action("deny")
///                     .priority(1000)
///                     .match(RegionSecurityPolicyRuleMatchArgs.builder()
///                         .expr(RegionSecurityPolicyRuleMatchExprArgs.builder()
///                             .expression("request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2")
///                             .build())
///                         .build())
///                     .build(),
///                 RegionSecurityPolicyRuleArgs.builder()
///                     .action("deny")
///                     .priority(2147483647)
///                     .match(RegionSecurityPolicyRuleMatchArgs.builder()
///                         .versionedExpr("SRC_IPS_V1")
///                         .config(RegionSecurityPolicyRuleMatchConfigArgs.builder()
///                             .srcIpRanges("*")
///                             .build())
///                         .build())
///                     .description("default rule")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   region-sec-policy-with-rules:
///     type: gcp:compute:RegionSecurityPolicy
///     properties:
///       name: my-sec-policy-with-rules
///       description: basic region security policy with multiple rules
///       type: CLOUD_ARMOR
///       rules:
///         - action: deny
///           priority: '1000'
///           match:
///             expr:
///               expression: request.path.matches("/login.html") && token.recaptcha_session.score < 0.2
///         - action: deny
///           priority: '2147483647'
///           match:
///             versionedExpr: SRC_IPS_V1
///             config:
///               srcIpRanges:
///                 - '*'
///           description: default rule
/// ```
///
///
/// ## Import
///
/// RegionSecurityPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/securityPolicies/{{name}}`
///
/// * `{{project}}/{{region}}/{{name}}`
///
/// * `{{region}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, RegionSecurityPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default projects/{{project}}/regions/{{region}}/securityPolicies/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default {{project}}/{{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default {{region}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default {{name}}
/// ```
class RegionSecurityPolicy extends pulumi.CustomResource {
  /// Advanced Options Config of this security policy.
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyAdvancedOptionsConfig?>
  advancedOptionsConfig;

  /// Configuration for Google Cloud Armor DDOS Proctection Config.
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyDdosProtectionConfig?>
  ddosProtectionConfig;

  /// An optional description of this resource. Provide this property when you create the resource.
  late final pulumi.Output<String?> description;

  /// Fingerprint of this resource. This field is used internally during
  /// updates of this resource.
  late final pulumi.Output<String> fingerprint;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035.
  /// Specifically, the name must be 1-63 characters long and match the regular expression a-z? which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  late final pulumi.Output<String> name;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final pulumi.Output<String> policyId;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The Region in which the created Region Security Policy should reside.
  /// If it is not provided, the provider region is used.
  late final pulumi.Output<String> region;

  /// The set of rules that belong to this policy. There must always be a default rule (rule with priority 2147483647 and match "*"). If no rules are provided when creating a security policy, a default rule with action "allow" will be added.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> rules;

  /// Server-defined URL for the resource.
  late final pulumi.Output<String> selfLink;

  /// Server-defined URL for this resource with the resource id.
  late final pulumi.Output<String> selfLinkWithPolicyId;

  /// The type indicates the intended use of the security policy.
  /// - CLOUD_ARMOR: Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services. They filter requests before they hit the origin servers.
  /// - CLOUD_ARMOR_EDGE: Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage). They filter requests before the request is served from Google's cache.
  /// - CLOUD_ARMOR_NETWORK: Cloud Armor network policies can be configured to filter packets targeting network load balancing resources such as backend services, target pools, target instances, and instances with external IPs. They filter requests before the request is served from the application.
  /// This field can be set only at resource creation time.
  /// Possible values are: `CLOUD_ARMOR`, `CLOUD_ARMOR_EDGE`, `CLOUD_ARMOR_NETWORK`.
  late final pulumi.Output<String?> type;

  /// Definitions of user-defined fields for CLOUD_ARMOR_NETWORK policies.
  /// A user-defined field consists of up to 4 bytes extracted from a fixed offset in the packet, relative to the IPv4, IPv6, TCP, or UDP header, with an optional mask to select certain bits.
  /// Rules may then specify matching values for these fields.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> userDefinedFields;

  /// Creates a new [RegionSecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionSecurityPolicy]. {@macro pulumi_compute_region_security_policy_region_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionSecurityPolicy(
    String name, {
    RegionSecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/regionSecurityPolicy:RegionSecurityPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    advancedOptionsConfig =
        registerOutput<RegionSecurityPolicyAdvancedOptionsConfig?>(
          'advancedOptionsConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RegionSecurityPolicyAdvancedOptionsConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    ddosProtectionConfig =
        registerOutput<RegionSecurityPolicyDdosProtectionConfig?>(
          'ddosProtectionConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RegionSecurityPolicyDdosProtectionConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithPolicyId = registerOutput<String>('selfLinkWithPolicyId');
    type = registerOutput<String?>('type');
    userDefinedFields = registerOutput<List<Map<String, dynamic>>?>(
      'userDefinedFields',
    );
  }

  /// Gets an existing [RegionSecurityPolicy] resource's state with the given [name] and [id].
  static RegionSecurityPolicy get(
    String name,
    pulumi.Input<String> id, {
    RegionSecurityPolicyState? state,
  }) {
    return RegionSecurityPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  RegionSecurityPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:compute/regionSecurityPolicy:RegionSecurityPolicy',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    advancedOptionsConfig =
        registerOutput<RegionSecurityPolicyAdvancedOptionsConfig?>(
          'advancedOptionsConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RegionSecurityPolicyAdvancedOptionsConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    ddosProtectionConfig =
        registerOutput<RegionSecurityPolicyDdosProtectionConfig?>(
          'ddosProtectionConfig',
          decoder: (raw) {
            final guardedValue = raw;
            if (guardedValue == null) return null;
            return RegionSecurityPolicyDdosProtectionConfig.fromMap(
              (guardedValue as Map).cast<String, dynamic>(),
            );
          },
        );
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    rules = registerOutput<List<Map<String, dynamic>>>('rules');
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithPolicyId = registerOutput<String>('selfLinkWithPolicyId');
    type = registerOutput<String?>('type');
    userDefinedFields = registerOutput<List<Map<String, dynamic>>?>(
      'userDefinedFields',
    );
  }
}
