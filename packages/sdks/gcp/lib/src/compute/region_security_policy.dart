import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_security_policy_advanced_options_config.dart';
import 'region_security_policy_args.dart';
import 'region_security_policy_ddos_protection_config.dart';
import 'region_security_policy_rule.dart';
import 'region_security_policy_state.dart';
import 'region_security_policy_user_defined_field.dart';

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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionsecuritypolicy" "region-sec-policy-basic" {
///   name        = "my-sec-policy-basic"
///   description = "basic region security policy"
///   type        = "CLOUD_ARMOR"
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionsecuritypolicy" "region-sec-policy-ddos-protection" {
///   name        = "my-sec-policy-ddos-protection"
///   description = "with ddos protection config"
///   type        = "CLOUD_ARMOR_NETWORK"
///   ddos_protection_config = {
///     ddos_protection = "ADVANCED_PREVIEW"
///   }
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionsecuritypolicy" "region-sec-policy-user-defined-fields" {
///   name        = "my-sec-policy-user-defined-fields"
///   description = "with user defined fields"
///   type        = "CLOUD_ARMOR_NETWORK"
///   user_defined_fields {
///     name   = "SIG1_AT_0"
///     base   = "UDP"
///     offset = 8
///     size   = 2
///     mask   = "0x8F00"
///   }
///   user_defined_fields {
///     name   = "SIG2_AT_8"
///     base   = "UDP"
///     offset = 16
///     size   = 4
///     mask   = "0xFFFFFFFF"
///   }
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionsecuritypolicy" "region-sec-policy-with-rules" {
///   name        = "my-sec-policy-with-rules"
///   description = "basic region security policy with multiple rules"
///   type        = "CLOUD_ARMOR"
///   rules {
///     action   = "deny"
///     priority = "1000"
///     match = {
///       expr = {
///         expression = "request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2"
///       }
///     }
///   }
///   rules {
///     action   = "deny"
///     priority = "2147483647"
///     match = {
///       versioned_expr = "SRC_IPS_V1"
///       config = {
///         src_ip_ranges = ["*"]
///       }
///     }
///     description = "default rule"
///   }
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
/// ### Region Security Policy With Body Exclude
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
///     name: "test-network-subnet",
///     region: "us-west2",
///     network: _default.id,
///     ipCidrRange: "10.10.0.0/24",
/// });
/// const defaultRegionHealthCheck = new gcp.compute.RegionHealthCheck("default", {
///     name: "test-health-check",
///     region: "us-west2",
///     httpHealthCheck: {
///         port: 80,
///     },
/// });
/// const policyRuleOne = new gcp.compute.RegionSecurityPolicy("policy_rule_one", {
///     name: "policyruletest",
///     description: "regional security policy with body inspection",
///     region: "us-west2",
///     type: "CLOUD_ARMOR",
///     advancedOptionsConfig: {
///         jsonParsing: "STANDARD",
///         logLevel: "VERBOSE",
///     },
///     rules: [
///         {
///             description: "waf body rule",
///             action: "deny(403)",
///             priority: 100,
///             preview: true,
///             match: {
///                 expr: {
///                     expression: "evaluatePreconfiguredWaf('sqli-v33-stable')",
///                 },
///             },
///             preconfiguredWafConfig: {
///                 exclusions: [{
///                     targetRuleSet: "sqli-v33-stable",
///                     requestBodies: [{
///                         operator: "EQUALS",
///                         value: "safe-field",
///                     }],
///                 }],
///             },
///         },
///         {
///             action: "allow",
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
/// const defaultRegionInstanceGroupManager = new gcp.compute.RegionInstanceGroupManager("default", {
///     name: "backendpolicy",
///     region: "us-west2",
///     baseInstanceName: "backend",
///     versions: [{
///         instanceTemplate: defaultInstanceTemplate.id,
///     }],
///     targetSize: 1,
/// });
/// const defaultRegionBackendService = new gcp.compute.RegionBackendService("default", {
///     name: "backendpolicy",
///     region: "us-west2",
///     protocol: "HTTP",
///     loadBalancingScheme: "EXTERNAL_MANAGED",
///     timeoutSec: 30,
///     healthChecks: defaultRegionHealthCheck.id,
///     backends: [{
///         group: defaultRegionInstanceGroupManager.instanceGroup,
///         capacityScaler: 1,
///     }],
///     securityPolicy: policyRuleOne.id,
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
///     name="test-network-subnet",
///     region="us-west2",
///     network=default.id,
///     ip_cidr_range="10.10.0.0/24")
/// default_region_health_check = gcp.compute.RegionHealthCheck("default",
///     name="test-health-check",
///     region="us-west2",
///     http_health_check={
///         "port": 80,
///     })
/// policy_rule_one = gcp.compute.RegionSecurityPolicy("policy_rule_one",
///     name="policyruletest",
///     description="regional security policy with body inspection",
///     region="us-west2",
///     type="CLOUD_ARMOR",
///     advanced_options_config={
///         "json_parsing": "STANDARD",
///         "log_level": "VERBOSE",
///     },
///     rules=[
///         {
///             "description": "waf body rule",
///             "action": "deny(403)",
///             "priority": 100,
///             "preview": True,
///             "match": {
///                 "expr": {
///                     "expression": "evaluatePreconfiguredWaf('sqli-v33-stable')",
///                 },
///             },
///             "preconfigured_waf_config": {
///                 "exclusions": [{
///                     "target_rule_set": "sqli-v33-stable",
///                     "request_bodies": [{
///                         "operator": "EQUALS",
///                         "value": "safe-field",
///                     }],
///                 }],
///             },
///         },
///         {
///             "action": "allow",
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
/// default_region_instance_group_manager = gcp.compute.RegionInstanceGroupManager("default",
///     name="backendpolicy",
///     region="us-west2",
///     base_instance_name="backend",
///     versions=[{
///         "instance_template": default_instance_template.id,
///     }],
///     target_size=1)
/// default_region_backend_service = gcp.compute.RegionBackendService("default",
///     name="backendpolicy",
///     region="us-west2",
///     protocol="HTTP",
///     load_balancing_scheme="EXTERNAL_MANAGED",
///     timeout_sec=30,
///     health_checks=default_region_health_check.id,
///     backends=[{
///         "group": default_region_instance_group_manager.instance_group,
///         "capacity_scaler": float(1),
///     }],
///     security_policy=policy_rule_one.id)
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
///         Name = "test-network-subnet",
///         Region = "us-west2",
///         Network = @default.Id,
///         IpCidrRange = "10.10.0.0/24",
///     });
///
///     var defaultRegionHealthCheck = new Gcp.Compute.RegionHealthCheck("default", new()
///     {
///         Name = "test-health-check",
///         Region = "us-west2",
///         HttpHealthCheck = new Gcp.Compute.Inputs.RegionHealthCheckHttpHealthCheckArgs
///         {
///             Port = 80,
///         },
///     });
///
///     var policyRuleOne = new Gcp.Compute.RegionSecurityPolicy("policy_rule_one", new()
///     {
///         Name = "policyruletest",
///         Description = "regional security policy with body inspection",
///         Region = "us-west2",
///         Type = "CLOUD_ARMOR",
///         AdvancedOptionsConfig = new Gcp.Compute.Inputs.RegionSecurityPolicyAdvancedOptionsConfigArgs
///         {
///             JsonParsing = "STANDARD",
///             LogLevel = "VERBOSE",
///         },
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.RegionSecurityPolicyRuleArgs
///             {
///                 Description = "waf body rule",
///                 Action = "deny(403)",
///                 Priority = 100,
///                 Preview = true,
///                 Match = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchArgs
///                 {
///                     Expr = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchExprArgs
///                     {
///                         Expression = "evaluatePreconfiguredWaf('sqli-v33-stable')",
///                     },
///                 },
///                 PreconfiguredWafConfig = new Gcp.Compute.Inputs.RegionSecurityPolicyRulePreconfiguredWafConfigArgs
///                 {
///                     Exclusions = new[]
///                     {
///                         new Gcp.Compute.Inputs.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArgs
///                         {
///                             TargetRuleSet = "sqli-v33-stable",
///                             RequestBodies = new[]
///                             {
///                                 new Gcp.Compute.Inputs.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestBodyArgs
///                                 {
///                                     Operator = "EQUALS",
///                                     Value = "safe-field",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             new Gcp.Compute.Inputs.RegionSecurityPolicyRuleArgs
///             {
///                 Action = "allow",
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
///     var defaultRegionInstanceGroupManager = new Gcp.Compute.RegionInstanceGroupManager("default", new()
///     {
///         Name = "backendpolicy",
///         Region = "us-west2",
///         BaseInstanceName = "backend",
///         Versions = new[]
///         {
///             new Gcp.Compute.Inputs.RegionInstanceGroupManagerVersionArgs
///             {
///                 InstanceTemplate = defaultInstanceTemplate.Id,
///             },
///         },
///         TargetSize = 1,
///     });
///
///     var defaultRegionBackendService = new Gcp.Compute.RegionBackendService("default", new()
///     {
///         Name = "backendpolicy",
///         Region = "us-west2",
///         Protocol = "HTTP",
///         LoadBalancingScheme = "EXTERNAL_MANAGED",
///         TimeoutSec = 30,
///         HealthChecks = defaultRegionHealthCheck.Id,
///         Backends = new[]
///         {
///             new Gcp.Compute.Inputs.RegionBackendServiceBackendArgs
///             {
///                 Group = defaultRegionInstanceGroupManager.InstanceGroup,
///                 CapacityScaler = 1.0,
///             },
///         },
///         SecurityPolicy = policyRuleOne.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
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
/// 			Name:        pulumi.String("test-network-subnet"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Network:     _default.ID().ToIDOutput().ToStringOutput(),
/// 			IpCidrRange: pulumi.String("10.10.0.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRegionHealthCheck, err := compute.NewRegionHealthCheck(ctx, "default", &compute.RegionHealthCheckArgs{
/// 			Name:   pulumi.String("test-health-check"),
/// 			Region: pulumi.String("us-west2"),
/// 			HttpHealthCheck: &compute.RegionHealthCheckHttpHealthCheckArgs{
/// 				Port: pulumi.Int(80),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		policyRuleOne, err := compute.NewRegionSecurityPolicy(ctx, "policy_rule_one", &compute.RegionSecurityPolicyArgs{
/// 			Name:        pulumi.String("policyruletest"),
/// 			Description: pulumi.String("regional security policy with body inspection"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 			AdvancedOptionsConfig: &compute.RegionSecurityPolicyAdvancedOptionsConfigArgs{
/// 				JsonParsing: pulumi.String("STANDARD"),
/// 				LogLevel:    pulumi.String("VERBOSE"),
/// 			},
/// 			Rules: compute.RegionSecurityPolicyRuleTypeArray{
/// 				&compute.RegionSecurityPolicyRuleTypeArgs{
/// 					Description: pulumi.String("waf body rule"),
/// 					Action:      pulumi.String("deny(403)"),
/// 					Priority:    pulumi.Int(100),
/// 					Preview:     pulumi.Bool(true),
/// 					Match: &compute.RegionSecurityPolicyRuleMatchArgs{
/// 						Expr: &compute.RegionSecurityPolicyRuleMatchExprArgs{
/// 							Expression: pulumi.String("evaluatePreconfiguredWaf('sqli-v33-stable')"),
/// 						},
/// 					},
/// 					PreconfiguredWafConfig: &compute.RegionSecurityPolicyRulePreconfiguredWafConfigArgs{
/// 						Exclusions: compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArray{
/// 							&compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArgs{
/// 								TargetRuleSet: pulumi.String("sqli-v33-stable"),
/// 								RequestBodies: compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestBodyArray{
/// 									&compute.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestBodyArgs{
/// 										Operator: pulumi.String("EQUALS"),
/// 										Value:    pulumi.String("safe-field"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				&compute.RegionSecurityPolicyRuleTypeArgs{
/// 					Action:   pulumi.String("allow"),
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
/// 		defaultRegionInstanceGroupManager, err := compute.NewRegionInstanceGroupManager(ctx, "default", &compute.RegionInstanceGroupManagerArgs{
/// 			Name:             pulumi.String("backendpolicy"),
/// 			Region:           pulumi.String("us-west2"),
/// 			BaseInstanceName: pulumi.String("backend"),
/// 			Versions: compute.RegionInstanceGroupManagerVersionArray{
/// 				&compute.RegionInstanceGroupManagerVersionArgs{
/// 					InstanceTemplate: defaultInstanceTemplate.ID().ToIDOutput().ToStringOutput(),
/// 				},
/// 			},
/// 			TargetSize: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewRegionBackendService(ctx, "default", &compute.RegionBackendServiceArgs{
/// 			Name:                pulumi.String("backendpolicy"),
/// 			Region:              pulumi.String("us-west2"),
/// 			Protocol:            pulumi.String("HTTP"),
/// 			LoadBalancingScheme: pulumi.String("EXTERNAL_MANAGED"),
/// 			TimeoutSec:          pulumi.Int(30),
/// 			HealthChecks:        defaultRegionHealthCheck.ID().ToIDOutput().ToStringOutput(),
/// 			Backends: compute.RegionBackendServiceBackendArray{
/// 				&compute.RegionBackendServiceBackendArgs{
/// 					Group:          defaultRegionInstanceGroupManager.InstanceGroup,
/// 					CapacityScaler: pulumi.Float64(1),
/// 				},
/// 			},
/// 			SecurityPolicy: policyRuleOne.ID().ToIDOutput().ToStringOutput(),
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
/// resource "gcp_compute_network" "default" {
///   name                    = "test-network"
///   auto_create_subnetworks = false
/// }
/// resource "gcp_compute_subnetwork" "default" {
///   name          = "test-network-subnet"
///   region        = "us-west2"
///   network       = gcp_compute_network.default.id
///   ip_cidr_range = "10.10.0.0/24"
/// }
/// resource "gcp_compute_regionhealthcheck" "default" {
///   name   = "test-health-check"
///   region = "us-west2"
///   http_health_check = {
///     port = 80
///   }
/// }
/// resource "gcp_compute_regionsecuritypolicy" "policy_rule_one" {
///   name        = "policyruletest"
///   description = "regional security policy with body inspection"
///   region      = "us-west2"
///   type        = "CLOUD_ARMOR"
///   advanced_options_config = {
///     json_parsing = "STANDARD"
///     log_level    = "VERBOSE"
///   }
///   rules {
///     description = "waf body rule"
///     action      = "deny(403)"
///     priority    = 100
///     preview     = true
///     match = {
///       expr = {
///         expression = "evaluatePreconfiguredWaf('sqli-v33-stable')"
///       }
///     }
///     preconfigured_waf_config = {
///       exclusions = [{
///         "targetRuleSet" = "sqli-v33-stable"
///         "requestBodies" = [{
///           "operator" = "EQUALS"
///           "value"    = "safe-field"
///         }]
///       }]
///     }
///   }
///   rules {
///     action   = "allow"
///     priority = 2147483647
///     match = {
///       versioned_expr = "SRC_IPS_V1"
///       config = {
///         src_ip_ranges = ["*"]
///       }
///     }
///     description = "default rule"
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
/// resource "gcp_compute_regioninstancegroupmanager" "default" {
///   name               = "backendpolicy"
///   region             = "us-west2"
///   base_instance_name = "backend"
///   versions {
///     instance_template = gcp_compute_instancetemplate.default.id
///   }
///   target_size = 1
/// }
/// resource "gcp_compute_regionbackendservice" "default" {
///   name                  = "backendpolicy"
///   region                = "us-west2"
///   protocol              = "HTTP"
///   load_balancing_scheme = "EXTERNAL_MANAGED"
///   timeout_sec           = 30
///   health_checks         = gcp_compute_regionhealthcheck.default.id
///   backends {
///     group           = gcp_compute_regioninstancegroupmanager.default.instance_group
///     capacity_scaler = 1
///   }
///   security_policy = gcp_compute_regionsecuritypolicy.policy_rule_one.id
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
/// import com.pulumi.gcp.compute.RegionHealthCheck;
/// import com.pulumi.gcp.compute.RegionHealthCheckArgs;
/// import com.pulumi.gcp.compute.inputs.RegionHealthCheckHttpHealthCheckArgs;
/// import com.pulumi.gcp.compute.RegionSecurityPolicy;
/// import com.pulumi.gcp.compute.RegionSecurityPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyAdvancedOptionsConfigArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchExprArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRulePreconfiguredWafConfigArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestBodyArgs;
/// import com.pulumi.gcp.compute.inputs.RegionSecurityPolicyRuleMatchConfigArgs;
/// import com.pulumi.gcp.compute.InstanceTemplate;
/// import com.pulumi.gcp.compute.InstanceTemplateArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateNetworkInterfaceAccessConfigArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceTemplateDiskArgs;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManager;
/// import com.pulumi.gcp.compute.RegionInstanceGroupManagerArgs;
/// import com.pulumi.gcp.compute.inputs.RegionInstanceGroupManagerVersionArgs;
/// import com.pulumi.gcp.compute.RegionBackendService;
/// import com.pulumi.gcp.compute.RegionBackendServiceArgs;
/// import com.pulumi.gcp.compute.inputs.RegionBackendServiceBackendArgs;
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
///             .name("test-network-subnet")
///             .region("us-west2")
///             .network(default_.id())
///             .ipCidrRange("10.10.0.0/24")
///             .build());
///
///         var defaultRegionHealthCheck = new RegionHealthCheck("defaultRegionHealthCheck", RegionHealthCheckArgs.builder()
///             .name("test-health-check")
///             .region("us-west2")
///             .httpHealthCheck(RegionHealthCheckHttpHealthCheckArgs.builder()
///                 .port(80)
///                 .build())
///             .build());
///
///         var policyRuleOne = new RegionSecurityPolicy("policyRuleOne", RegionSecurityPolicyArgs.builder()
///             .name("policyruletest")
///             .description("regional security policy with body inspection")
///             .region("us-west2")
///             .type("CLOUD_ARMOR")
///             .advancedOptionsConfig(RegionSecurityPolicyAdvancedOptionsConfigArgs.builder()
///                 .jsonParsing("STANDARD")
///                 .logLevel("VERBOSE")
///                 .build())
///             .rules(
///                 RegionSecurityPolicyRuleArgs.builder()
///                     .description("waf body rule")
///                     .action("deny(403)")
///                     .priority(100)
///                     .preview(true)
///                     .match(RegionSecurityPolicyRuleMatchArgs.builder()
///                         .expr(RegionSecurityPolicyRuleMatchExprArgs.builder()
///                             .expression("evaluatePreconfiguredWaf('sqli-v33-stable')")
///                             .build())
///                         .build())
///                     .preconfiguredWafConfig(RegionSecurityPolicyRulePreconfiguredWafConfigArgs.builder()
///                         .exclusions(RegionSecurityPolicyRulePreconfiguredWafConfigExclusionArgs.builder()
///                             .targetRuleSet("sqli-v33-stable")
///                             .requestBodies(RegionSecurityPolicyRulePreconfiguredWafConfigExclusionRequestBodyArgs.builder()
///                                 .operator("EQUALS")
///                                 .value("safe-field")
///                                 .build())
///                             .build())
///                         .build())
///                     .build(),
///                 RegionSecurityPolicyRuleArgs.builder()
///                     .action("allow")
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
///         var defaultRegionInstanceGroupManager = new RegionInstanceGroupManager("defaultRegionInstanceGroupManager", RegionInstanceGroupManagerArgs.builder()
///             .name("backendpolicy")
///             .region("us-west2")
///             .baseInstanceName("backend")
///             .versions(RegionInstanceGroupManagerVersionArgs.builder()
///                 .instanceTemplate(defaultInstanceTemplate.id())
///                 .build())
///             .targetSize(1)
///             .build());
///
///         var defaultRegionBackendService = new RegionBackendService("defaultRegionBackendService", RegionBackendServiceArgs.builder()
///             .name("backendpolicy")
///             .region("us-west2")
///             .protocol("HTTP")
///             .loadBalancingScheme("EXTERNAL_MANAGED")
///             .timeoutSec(30)
///             .healthChecks(defaultRegionHealthCheck.id())
///             .backends(RegionBackendServiceBackendArgs.builder()
///                 .group(defaultRegionInstanceGroupManager.instanceGroup())
///                 .capacityScaler(1.0)
///                 .build())
///             .securityPolicy(policyRuleOne.id())
///             .build());
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
///       name: test-network-subnet
///       region: us-west2
///       network: ${default.id}
///       ipCidrRange: 10.10.0.0/24
///   defaultRegionHealthCheck:
///     type: gcp:compute:RegionHealthCheck
///     name: default
///     properties:
///       name: test-health-check
///       region: us-west2
///       httpHealthCheck:
///         port: 80
///   policyRuleOne:
///     type: gcp:compute:RegionSecurityPolicy
///     name: policy_rule_one
///     properties:
///       name: policyruletest
///       description: regional security policy with body inspection
///       region: us-west2
///       type: CLOUD_ARMOR
///       advancedOptionsConfig:
///         jsonParsing: STANDARD
///         logLevel: VERBOSE
///       rules:
///         - description: waf body rule
///           action: deny(403)
///           priority: 100
///           preview: true
///           match:
///             expr:
///               expression: evaluatePreconfiguredWaf('sqli-v33-stable')
///           preconfiguredWafConfig:
///             exclusions:
///               - targetRuleSet: sqli-v33-stable
///                 requestBodies:
///                   - operator: EQUALS
///                     value: safe-field
///         - action: allow
///           priority: 2.147483647e+09
///           match:
///             versionedExpr: SRC_IPS_V1
///             config:
///               srcIpRanges:
///                 - '*'
///           description: default rule
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
///   defaultRegionInstanceGroupManager:
///     type: gcp:compute:RegionInstanceGroupManager
///     name: default
///     properties:
///       name: backendpolicy
///       region: us-west2
///       baseInstanceName: backend
///       versions:
///         - instanceTemplate: ${defaultInstanceTemplate.id}
///       targetSize: 1
///   defaultRegionBackendService:
///     type: gcp:compute:RegionBackendService
///     name: default
///     properties:
///       name: backendpolicy
///       region: us-west2
///       protocol: HTTP
///       loadBalancingScheme: EXTERNAL_MANAGED
///       timeoutSec: 30
///       healthChecks: ${defaultRegionHealthCheck.id}
///       backends:
///         - group: ${defaultRegionInstanceGroupManager.instanceGroup}
///           capacityScaler: 1
///       securityPolicy: ${policyRuleOne.id}
/// ```
///
/// ### Region Security Policy Request Body Expression
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policyRule = new gcp.compute.RegionSecurityPolicy("policy_rule", {
///     name: "policyruletest",
///     description: "Policy with Request Body inspection",
///     region: "us-west2",
///     type: "CLOUD_ARMOR",
///     rules: [
///         {
///             action: "deny(403)",
///             priority: 1000,
///             match: {
///                 expr: {
///                     expression: "request.body.contains('my-match-string')",
///                 },
///             },
///             description: "Deny requests containing specific body string",
///         },
///         {
///             action: "allow",
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
/// policy_rule = gcp.compute.RegionSecurityPolicy("policy_rule",
///     name="policyruletest",
///     description="Policy with Request Body inspection",
///     region="us-west2",
///     type="CLOUD_ARMOR",
///     rules=[
///         {
///             "action": "deny(403)",
///             "priority": 1000,
///             "match": {
///                 "expr": {
///                     "expression": "request.body.contains('my-match-string')",
///                 },
///             },
///             "description": "Deny requests containing specific body string",
///         },
///         {
///             "action": "allow",
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
///     var policyRule = new Gcp.Compute.RegionSecurityPolicy("policy_rule", new()
///     {
///         Name = "policyruletest",
///         Description = "Policy with Request Body inspection",
///         Region = "us-west2",
///         Type = "CLOUD_ARMOR",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.RegionSecurityPolicyRuleArgs
///             {
///                 Action = "deny(403)",
///                 Priority = 1000,
///                 Match = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchArgs
///                 {
///                     Expr = new Gcp.Compute.Inputs.RegionSecurityPolicyRuleMatchExprArgs
///                     {
///                         Expression = "request.body.contains('my-match-string')",
///                     },
///                 },
///                 Description = "Deny requests containing specific body string",
///             },
///             new Gcp.Compute.Inputs.RegionSecurityPolicyRuleArgs
///             {
///                 Action = "allow",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v10/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewRegionSecurityPolicy(ctx, "policy_rule", &compute.RegionSecurityPolicyArgs{
/// 			Name:        pulumi.String("policyruletest"),
/// 			Description: pulumi.String("Policy with Request Body inspection"),
/// 			Region:      pulumi.String("us-west2"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 			Rules: compute.RegionSecurityPolicyRuleTypeArray{
/// 				&compute.RegionSecurityPolicyRuleTypeArgs{
/// 					Action:   pulumi.String("deny(403)"),
/// 					Priority: pulumi.Int(1000),
/// 					Match: &compute.RegionSecurityPolicyRuleMatchArgs{
/// 						Expr: &compute.RegionSecurityPolicyRuleMatchExprArgs{
/// 							Expression: pulumi.String("request.body.contains('my-match-string')"),
/// 						},
/// 					},
/// 					Description: pulumi.String("Deny requests containing specific body string"),
/// 				},
/// 				&compute.RegionSecurityPolicyRuleTypeArgs{
/// 					Action:   pulumi.String("allow"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_compute_regionsecuritypolicy" "policy_rule" {
///   name        = "policyruletest"
///   description = "Policy with Request Body inspection"
///   region      = "us-west2"
///   type        = "CLOUD_ARMOR"
///   rules {
///     action   = "deny(403)"
///     priority = 1000
///     match = {
///       expr = {
///         expression = "request.body.contains('my-match-string')"
///       }
///     }
///     description = "Deny requests containing specific body string"
///   }
///   rules {
///     action   = "allow"
///     priority = 2147483647
///     match = {
///       versioned_expr = "SRC_IPS_V1"
///       config = {
///         src_ip_ranges = ["*"]
///       }
///     }
///     description = "default rule"
///   }
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
///         var policyRule = new RegionSecurityPolicy("policyRule", RegionSecurityPolicyArgs.builder()
///             .name("policyruletest")
///             .description("Policy with Request Body inspection")
///             .region("us-west2")
///             .type("CLOUD_ARMOR")
///             .rules(
///                 RegionSecurityPolicyRuleArgs.builder()
///                     .action("deny(403)")
///                     .priority(1000)
///                     .match(RegionSecurityPolicyRuleMatchArgs.builder()
///                         .expr(RegionSecurityPolicyRuleMatchExprArgs.builder()
///                             .expression("request.body.contains('my-match-string')")
///                             .build())
///                         .build())
///                     .description("Deny requests containing specific body string")
///                     .build(),
///                 RegionSecurityPolicyRuleArgs.builder()
///                     .action("allow")
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
///   policyRule:
///     type: gcp:compute:RegionSecurityPolicy
///     name: policy_rule
///     properties:
///       name: policyruletest
///       description: Policy with Request Body inspection
///       region: us-west2
///       type: CLOUD_ARMOR
///       rules:
///         - action: deny(403)
///           priority: 1000
///           match:
///             expr:
///               expression: request.body.contains('my-match-string')
///           description: Deny requests containing specific body string
///         - action: allow
///           priority: 2.147483647e+09
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
/// * `{{project}}/{{region}}/{{name}}`
/// * `{{region}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, RegionSecurityPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default projects/{{project}}/regions/{{region}}/securityPolicies/{{name}}
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default {{project}}/{{region}}/{{name}}
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default {{region}}/{{name}}
/// $ pulumi import gcp:compute/regionSecurityPolicy:RegionSecurityPolicy default {{name}}
/// ```
class RegionSecurityPolicy extends pulumi.CustomResource {
  /// Advanced Options Config of this security policy.
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyAdvancedOptionsConfig?> advancedOptionsConfig;
  /// Configuration for Google Cloud Armor DDOS Proctection Config.
  /// Structure is documented below.
  late final pulumi.Output<RegionSecurityPolicyDdosProtectionConfig?> ddosProtectionConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
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
  late final pulumi.Output<List<RegionSecurityPolicyRule>> rules;
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
  late final pulumi.Output<List<RegionSecurityPolicyUserDefinedField>?> userDefinedFields;

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
          pulumi.CustomResourceOptions(version: '10.1.0').merge(options),
        ) {
    advancedOptionsConfig = registerOutput<RegionSecurityPolicyAdvancedOptionsConfig?>('advancedOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionSecurityPolicyAdvancedOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ddosProtectionConfig = registerOutput<RegionSecurityPolicyDdosProtectionConfig?>('ddosProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionSecurityPolicyDdosProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    rules = registerOutput<List<RegionSecurityPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionSecurityPolicyRule>(guardedValue, (value) => RegionSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithPolicyId = registerOutput<String>('selfLinkWithPolicyId');
    type = registerOutput<String?>('type');
    userDefinedFields = registerOutput<List<RegionSecurityPolicyUserDefinedField>?>('userDefinedFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionSecurityPolicyUserDefinedField>(guardedValue, (value) => RegionSecurityPolicyUserDefinedField.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [RegionSecurityPolicy] resource's state with the given [name] and [id].
  static RegionSecurityPolicy get(
    String name,
    pulumi.Input<String> id, {
    RegionSecurityPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return RegionSecurityPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
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
    advancedOptionsConfig = registerOutput<RegionSecurityPolicyAdvancedOptionsConfig?>('advancedOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionSecurityPolicyAdvancedOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ddosProtectionConfig = registerOutput<RegionSecurityPolicyDdosProtectionConfig?>('ddosProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionSecurityPolicyDdosProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    rules = registerOutput<List<RegionSecurityPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionSecurityPolicyRule>(guardedValue, (value) => RegionSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithPolicyId = registerOutput<String>('selfLinkWithPolicyId');
    type = registerOutput<String?>('type');
    userDefinedFields = registerOutput<List<RegionSecurityPolicyUserDefinedField>?>('userDefinedFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionSecurityPolicyUserDefinedField>(guardedValue, (value) => RegionSecurityPolicyUserDefinedField.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [RegionSecurityPolicy] resource.
  RegionSecurityPolicy.reference(String urn)
    : super(
        'gcp:compute/regionSecurityPolicy:RegionSecurityPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    advancedOptionsConfig = registerOutput<RegionSecurityPolicyAdvancedOptionsConfig?>('advancedOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionSecurityPolicyAdvancedOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ddosProtectionConfig = registerOutput<RegionSecurityPolicyDdosProtectionConfig?>('ddosProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return RegionSecurityPolicyDdosProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    fingerprint = registerOutput<String>('fingerprint');
    this.name = registerOutput<String>('name');
    policyId = registerOutput<String>('policyId');
    project = registerOutput<String>('project');
    region = registerOutput<String>('region');
    rules = registerOutput<List<RegionSecurityPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionSecurityPolicyRule>(guardedValue, (value) => RegionSecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    selfLinkWithPolicyId = registerOutput<String>('selfLinkWithPolicyId');
    type = registerOutput<String?>('type');
    userDefinedFields = registerOutput<List<RegionSecurityPolicyUserDefinedField>?>('userDefinedFields', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<RegionSecurityPolicyUserDefinedField>(guardedValue, (value) => RegionSecurityPolicyUserDefinedField.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
