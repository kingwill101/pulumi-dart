import 'package:pulumi/pulumi.dart' as pulumi;
import 'security_policy_adaptive_protection_config.dart';
import 'security_policy_advanced_options_config.dart';
import 'security_policy_args.dart';
import 'security_policy_recaptcha_options_config.dart';
import 'security_policy_rule.dart';
import 'security_policy_state.dart';

/// A Security Policy defines an IP blacklist or whitelist that protects load balanced Google Cloud services by denying or permitting traffic from specified IP ranges. For more information
/// see the [official documentation](https://cloud.google.com/armor/docs/configure-security-policies)
/// and the [API](https://cloud.google.com/compute/docs/reference/rest/beta/securityPolicies).
///
/// Security Policy is used by google_compute_backend_service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.SecurityPolicy("policy", {
///     name: "my-policy",
///     rules: [
///         {
///             action: "deny(403)",
///             priority: 1000,
///             match: {
///                 versionedExpr: "SRC_IPS_V1",
///                 config: {
///                     srcIpRanges: ["9.9.9.0/24"],
///                 },
///             },
///             description: "Deny access to IPs in 9.9.9.0/24",
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
/// policy = gcp.compute.SecurityPolicy("policy",
///     name="my-policy",
///     rules=[
///         {
///             "action": "deny(403)",
///             "priority": 1000,
///             "match": {
///                 "versioned_expr": "SRC_IPS_V1",
///                 "config": {
///                     "src_ip_ranges": ["9.9.9.0/24"],
///                 },
///             },
///             "description": "Deny access to IPs in 9.9.9.0/24",
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
///     var policy = new Gcp.Compute.SecurityPolicy("policy", new()
///     {
///         Name = "my-policy",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.SecurityPolicyRuleArgs
///             {
///                 Action = "deny(403)",
///                 Priority = 1000,
///                 Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///                 {
///                     VersionedExpr = "SRC_IPS_V1",
///                     Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///                     {
///                         SrcIpRanges = new[]
///                         {
///                             "9.9.9.0/24",
///                         },
///                     },
///                 },
///                 Description = "Deny access to IPs in 9.9.9.0/24",
///             },
///             new Gcp.Compute.Inputs.SecurityPolicyRuleArgs
///             {
///                 Action = "allow",
///                 Priority = 2147483647,
///                 Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///                 {
///                     VersionedExpr = "SRC_IPS_V1",
///                     Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
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
/// 		_, err := compute.NewSecurityPolicy(ctx, "policy", &compute.SecurityPolicyArgs{
/// 			Name: pulumi.String("my-policy"),
/// 			Rules: compute.SecurityPolicyRuleTypeArray{
/// 				&compute.SecurityPolicyRuleTypeArgs{
/// 					Action:   pulumi.String("deny(403)"),
/// 					Priority: pulumi.Int(1000),
/// 					Match: &compute.SecurityPolicyRuleMatchArgs{
/// 						VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 						Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 							SrcIpRanges: pulumi.StringArray{
/// 								pulumi.String("9.9.9.0/24"),
/// 							},
/// 						},
/// 					},
/// 					Description: pulumi.String("Deny access to IPs in 9.9.9.0/24"),
/// 				},
/// 				&compute.SecurityPolicyRuleTypeArgs{
/// 					Action:   pulumi.String("allow"),
/// 					Priority: pulumi.Int(2147483647),
/// 					Match: &compute.SecurityPolicyRuleMatchArgs{
/// 						VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 						Config: &compute.SecurityPolicyRuleMatchConfigArgs{
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
/// resource "gcp_compute_securitypolicy" "policy" {
///   name = "my-policy"
///   rules {
///     action   = "deny(403)"
///     priority = "1000"
///     match = {
///       versioned_expr = "SRC_IPS_V1"
///       config = {
///         src_ip_ranges = ["9.9.9.0/24"]
///       }
///     }
///     description = "Deny access to IPs in 9.9.9.0/24"
///   }
///   rules {
///     action   = "allow"
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
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleArgs;
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
///         var policy = new SecurityPolicy("policy", SecurityPolicyArgs.builder()
///             .name("my-policy")
///             .rules(
///                 SecurityPolicyRuleArgs.builder()
///                     .action("deny(403)")
///                     .priority(1000)
///                     .match(SecurityPolicyRuleMatchArgs.builder()
///                         .versionedExpr("SRC_IPS_V1")
///                         .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                             .srcIpRanges("9.9.9.0/24")
///                             .build())
///                         .build())
///                     .description("Deny access to IPs in 9.9.9.0/24")
///                     .build(),
///                 SecurityPolicyRuleArgs.builder()
///                     .action("allow")
///                     .priority(2147483647)
///                     .match(SecurityPolicyRuleMatchArgs.builder()
///                         .versionedExpr("SRC_IPS_V1")
///                         .config(SecurityPolicyRuleMatchConfigArgs.builder()
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
///   policy:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: my-policy
///       rules:
///         - action: deny(403)
///           priority: '1000'
///           match:
///             versionedExpr: SRC_IPS_V1
///             config:
///               srcIpRanges:
///                 - 9.9.9.0/24
///           description: Deny access to IPs in 9.9.9.0/24
///         - action: allow
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
/// ### With ReCAPTCHA Configuration Options
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const primary = new gcp.recaptcha.EnterpriseKey("primary", {
///     displayName: "display-name",
///     labels: {
///         "label-one": "value-one",
///     },
///     project: "my-project-name",
///     webSettings: {
///         integrationType: "INVISIBLE",
///         allowAllDomains: true,
///         allowedDomains: ["localhost"],
///     },
/// });
/// const policy = new gcp.compute.SecurityPolicy("policy", {
///     name: "my-policy",
///     description: "basic security policy",
///     type: "CLOUD_ARMOR",
///     recaptchaOptionsConfig: {
///         redirectSiteKey: primary.name,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// primary = gcp.recaptcha.EnterpriseKey("primary",
///     display_name="display-name",
///     labels={
///         "label-one": "value-one",
///     },
///     project="my-project-name",
///     web_settings={
///         "integration_type": "INVISIBLE",
///         "allow_all_domains": True,
///         "allowed_domains": ["localhost"],
///     })
/// policy = gcp.compute.SecurityPolicy("policy",
///     name="my-policy",
///     description="basic security policy",
///     type="CLOUD_ARMOR",
///     recaptcha_options_config={
///         "redirect_site_key": primary.name,
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
///     var primary = new Gcp.Recaptcha.EnterpriseKey("primary", new()
///     {
///         DisplayName = "display-name",
///         Labels =
///         {
///             { "label-one", "value-one" },
///         },
///         Project = "my-project-name",
///         WebSettings = new Gcp.Recaptcha.Inputs.EnterpriseKeyWebSettingsArgs
///         {
///             IntegrationType = "INVISIBLE",
///             AllowAllDomains = true,
///             AllowedDomains = new[]
///             {
///                 "localhost",
///             },
///         },
///     });
///
///     var policy = new Gcp.Compute.SecurityPolicy("policy", new()
///     {
///         Name = "my-policy",
///         Description = "basic security policy",
///         Type = "CLOUD_ARMOR",
///         RecaptchaOptionsConfig = new Gcp.Compute.Inputs.SecurityPolicyRecaptchaOptionsConfigArgs
///         {
///             RedirectSiteKey = primary.Name,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/recaptcha"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		primary, err := recaptcha.NewEnterpriseKey(ctx, "primary", &recaptcha.EnterpriseKeyArgs{
/// 			DisplayName: pulumi.String("display-name"),
/// 			Labels: pulumi.StringMap{
/// 				"label-one": pulumi.String("value-one"),
/// 			},
/// 			Project: pulumi.String("my-project-name"),
/// 			WebSettings: &recaptcha.EnterpriseKeyWebSettingsArgs{
/// 				IntegrationType: pulumi.String("INVISIBLE"),
/// 				AllowAllDomains: pulumi.Bool(true),
/// 				AllowedDomains: pulumi.StringArray{
/// 					pulumi.String("localhost"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = compute.NewSecurityPolicy(ctx, "policy", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("my-policy"),
/// 			Description: pulumi.String("basic security policy"),
/// 			Type:        pulumi.String("CLOUD_ARMOR"),
/// 			RecaptchaOptionsConfig: &compute.SecurityPolicyRecaptchaOptionsConfigArgs{
/// 				RedirectSiteKey: primary.Name,
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
/// resource "gcp_recaptcha_enterprisekey" "primary" {
///   display_name = "display-name"
///   labels = {
///     "label-one" = "value-one"
///   }
///   project = "my-project-name"
///   web_settings = {
///     integration_type  = "INVISIBLE"
///     allow_all_domains = true
///     allowed_domains   = ["localhost"]
///   }
/// }
/// resource "gcp_compute_securitypolicy" "policy" {
///   name        = "my-policy"
///   description = "basic security policy"
///   type        = "CLOUD_ARMOR"
///   recaptcha_options_config = {
///     redirect_site_key = gcp_recaptcha_enterprisekey.primary.name
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.recaptcha.EnterpriseKey;
/// import com.pulumi.gcp.recaptcha.EnterpriseKeyArgs;
/// import com.pulumi.gcp.recaptcha.inputs.EnterpriseKeyWebSettingsArgs;
/// import com.pulumi.gcp.compute.SecurityPolicy;
/// import com.pulumi.gcp.compute.SecurityPolicyArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRecaptchaOptionsConfigArgs;
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
///         var primary = new EnterpriseKey("primary", EnterpriseKeyArgs.builder()
///             .displayName("display-name")
///             .labels(Map.of("label-one", "value-one"))
///             .project("my-project-name")
///             .webSettings(EnterpriseKeyWebSettingsArgs.builder()
///                 .integrationType("INVISIBLE")
///                 .allowAllDomains(true)
///                 .allowedDomains("localhost")
///                 .build())
///             .build());
///
///         var policy = new SecurityPolicy("policy", SecurityPolicyArgs.builder()
///             .name("my-policy")
///             .description("basic security policy")
///             .type("CLOUD_ARMOR")
///             .recaptchaOptionsConfig(SecurityPolicyRecaptchaOptionsConfigArgs.builder()
///                 .redirectSiteKey(primary.name())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   primary:
///     type: gcp:recaptcha:EnterpriseKey
///     properties:
///       displayName: display-name
///       labels:
///         label-one: value-one
///       project: my-project-name
///       webSettings:
///         integrationType: INVISIBLE
///         allowAllDomains: true
///         allowedDomains:
///           - localhost
///   policy:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: my-policy
///       description: basic security policy
///       type: CLOUD_ARMOR
///       recaptchaOptionsConfig:
///         redirectSiteKey: ${primary.name}
/// ```
///
///
/// ### With Header Actions
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.SecurityPolicy("policy", {
///     name: "my-policy",
///     rules: [
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
///         {
///             action: "allow",
///             priority: 1000,
///             match: {
///                 expr: {
///                     expression: "request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2",
///                 },
///             },
///             headerAction: {
///                 requestHeadersToAdds: [
///                     {
///                         headerName: "reCAPTCHA-Warning",
///                         headerValue: "high",
///                     },
///                     {
///                         headerName: "X-Resource",
///                         headerValue: "test",
///                     },
///                 ],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.SecurityPolicy("policy",
///     name="my-policy",
///     rules=[
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
///         {
///             "action": "allow",
///             "priority": 1000,
///             "match": {
///                 "expr": {
///                     "expression": "request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2",
///                 },
///             },
///             "header_action": {
///                 "request_headers_to_adds": [
///                     {
///                         "header_name": "reCAPTCHA-Warning",
///                         "header_value": "high",
///                     },
///                     {
///                         "header_name": "X-Resource",
///                         "header_value": "test",
///                     },
///                 ],
///             },
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
///     var policy = new Gcp.Compute.SecurityPolicy("policy", new()
///     {
///         Name = "my-policy",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.SecurityPolicyRuleArgs
///             {
///                 Action = "allow",
///                 Priority = 2147483647,
///                 Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///                 {
///                     VersionedExpr = "SRC_IPS_V1",
///                     Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///                     {
///                         SrcIpRanges = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Description = "default rule",
///             },
///             new Gcp.Compute.Inputs.SecurityPolicyRuleArgs
///             {
///                 Action = "allow",
///                 Priority = 1000,
///                 Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///                 {
///                     Expr = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchExprArgs
///                     {
///                         Expression = "request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2",
///                     },
///                 },
///                 HeaderAction = new Gcp.Compute.Inputs.SecurityPolicyRuleHeaderActionArgs
///                 {
///                     RequestHeadersToAdds = new[]
///                     {
///                         new Gcp.Compute.Inputs.SecurityPolicyRuleHeaderActionRequestHeadersToAddArgs
///                         {
///                             HeaderName = "reCAPTCHA-Warning",
///                             HeaderValue = "high",
///                         },
///                         new Gcp.Compute.Inputs.SecurityPolicyRuleHeaderActionRequestHeadersToAddArgs
///                         {
///                             HeaderName = "X-Resource",
///                             HeaderValue = "test",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSecurityPolicy(ctx, "policy", &compute.SecurityPolicyArgs{
/// 			Name: pulumi.String("my-policy"),
/// 			Rules: compute.SecurityPolicyRuleTypeArray{
/// 				&compute.SecurityPolicyRuleTypeArgs{
/// 					Action:   pulumi.String("allow"),
/// 					Priority: pulumi.Int(2147483647),
/// 					Match: &compute.SecurityPolicyRuleMatchArgs{
/// 						VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 						Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 							SrcIpRanges: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Description: pulumi.String("default rule"),
/// 				},
/// 				&compute.SecurityPolicyRuleTypeArgs{
/// 					Action:   pulumi.String("allow"),
/// 					Priority: pulumi.Int(1000),
/// 					Match: &compute.SecurityPolicyRuleMatchArgs{
/// 						Expr: &compute.SecurityPolicyRuleMatchExprArgs{
/// 							Expression: pulumi.String("request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2"),
/// 						},
/// 					},
/// 					HeaderAction: &compute.SecurityPolicyRuleHeaderActionArgs{
/// 						RequestHeadersToAdds: compute.SecurityPolicyRuleHeaderActionRequestHeadersToAddArray{
/// 							&compute.SecurityPolicyRuleHeaderActionRequestHeadersToAddArgs{
/// 								HeaderName:  pulumi.String("reCAPTCHA-Warning"),
/// 								HeaderValue: pulumi.String("high"),
/// 							},
/// 							&compute.SecurityPolicyRuleHeaderActionRequestHeadersToAddArgs{
/// 								HeaderName:  pulumi.String("X-Resource"),
/// 								HeaderValue: pulumi.String("test"),
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
///   name = "my-policy"
///   rules {
///     action   = "allow"
///     priority = "2147483647"
///     match = {
///       versioned_expr = "SRC_IPS_V1"
///       config = {
///         src_ip_ranges = ["*"]
///       }
///     }
///     description = "default rule"
///   }
///   rules {
///     action   = "allow"
///     priority = "1000"
///     match = {
///       expr = {
///         expression = "request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2"
///       }
///     }
///     header_action = {
///       request_headers_to_adds = [{
///         "headerName"  = "reCAPTCHA-Warning"
///         "headerValue" = "high"
///         }, {
///         "headerName"  = "X-Resource"
///         "headerValue" = "test"
///       }]
///     }
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
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchConfigArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchExprArgs;
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
///             .name("my-policy")
///             .rules(
///                 SecurityPolicyRuleArgs.builder()
///                     .action("allow")
///                     .priority(2147483647)
///                     .match(SecurityPolicyRuleMatchArgs.builder()
///                         .versionedExpr("SRC_IPS_V1")
///                         .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                             .srcIpRanges("*")
///                             .build())
///                         .build())
///                     .description("default rule")
///                     .build(),
///                 SecurityPolicyRuleArgs.builder()
///                     .action("allow")
///                     .priority(1000)
///                     .match(SecurityPolicyRuleMatchArgs.builder()
///                         .expr(SecurityPolicyRuleMatchExprArgs.builder()
///                             .expression("request.path.matches(\"/login.html\") && token.recaptcha_session.score < 0.2")
///                             .build())
///                         .build())
///                     .headerAction(SecurityPolicyRuleHeaderActionArgs.builder()
///                         .requestHeadersToAdds(
///                             SecurityPolicyRuleHeaderActionRequestHeadersToAddArgs.builder()
///                                 .headerName("reCAPTCHA-Warning")
///                                 .headerValue("high")
///                                 .build(),
///                             SecurityPolicyRuleHeaderActionRequestHeadersToAddArgs.builder()
///                                 .headerName("X-Resource")
///                                 .headerValue("test")
///                                 .build())
///                         .build())
///                     .build())
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
///       name: my-policy
///       rules:
///         - action: allow
///           priority: '2147483647'
///           match:
///             versionedExpr: SRC_IPS_V1
///             config:
///               srcIpRanges:
///                 - '*'
///           description: default rule
///         - action: allow
///           priority: '1000'
///           match:
///             expr:
///               expression: request.path.matches("/login.html") && token.recaptcha_session.score < 0.2
///           headerAction:
///             requestHeadersToAdds:
///               - headerName: reCAPTCHA-Warning
///                 headerValue: high
///               - headerName: X-Resource
///                 headerValue: test
/// ```
///
///
/// ### With EnforceOnKey Value As Empty String
/// A scenario example that won't cause any conflict between `enforceOnKey` and `enforceOnKeyConfigs`, because `enforceOnKey` was specified as an empty string:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.SecurityPolicy("policy", {
///     name: "%s",
///     description: "throttle rule with enforce_on_key_configs",
///     rules: [{
///         action: "throttle",
///         priority: 2147483647,
///         match: {
///             versionedExpr: "SRC_IPS_V1",
///             config: {
///                 srcIpRanges: ["*"],
///             },
///         },
///         description: "default rule",
///         rateLimitOptions: {
///             conformAction: "allow",
///             exceedAction: "redirect",
///             enforceOnKey: "",
///             enforceOnKeyConfigs: [{
///                 enforceOnKeyType: "IP",
///             }],
///             exceedRedirectOptions: {
///                 type: "EXTERNAL_302",
///                 target: "<https://www.example.com>",
///             },
///             rateLimitThreshold: {
///                 count: 10,
///                 intervalSec: 60,
///             },
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.SecurityPolicy("policy",
///     name="%s",
///     description="throttle rule with enforce_on_key_configs",
///     rules=[{
///         "action": "throttle",
///         "priority": 2147483647,
///         "match": {
///             "versioned_expr": "SRC_IPS_V1",
///             "config": {
///                 "src_ip_ranges": ["*"],
///             },
///         },
///         "description": "default rule",
///         "rate_limit_options": {
///             "conform_action": "allow",
///             "exceed_action": "redirect",
///             "enforce_on_key": "",
///             "enforce_on_key_configs": [{
///                 "enforce_on_key_type": "IP",
///             }],
///             "exceed_redirect_options": {
///                 "type": "EXTERNAL_302",
///                 "target": "<https://www.example.com>",
///             },
///             "rate_limit_threshold": {
///                 "count": 10,
///                 "interval_sec": 60,
///             },
///         },
///     }])
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
///         Name = "%s",
///         Description = "throttle rule with enforce_on_key_configs",
///         Rules = new[]
///         {
///             new Gcp.Compute.Inputs.SecurityPolicyRuleArgs
///             {
///                 Action = "throttle",
///                 Priority = 2147483647,
///                 Match = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchArgs
///                 {
///                     VersionedExpr = "SRC_IPS_V1",
///                     Config = new Gcp.Compute.Inputs.SecurityPolicyRuleMatchConfigArgs
///                     {
///                         SrcIpRanges = new[]
///                         {
///                             "*",
///                         },
///                     },
///                 },
///                 Description = "default rule",
///                 RateLimitOptions = new Gcp.Compute.Inputs.SecurityPolicyRuleRateLimitOptionsArgs
///                 {
///                     ConformAction = "allow",
///                     ExceedAction = "redirect",
///                     EnforceOnKey = "",
///                     EnforceOnKeyConfigs = new[]
///                     {
///                         new Gcp.Compute.Inputs.SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigArgs
///                         {
///                             EnforceOnKeyType = "IP",
///                         },
///                     },
///                     ExceedRedirectOptions = new Gcp.Compute.Inputs.SecurityPolicyRuleRateLimitOptionsExceedRedirectOptionsArgs
///                     {
///                         Type = "EXTERNAL_302",
///                         Target = "<https://www.example.com>",
///                     },
///                     RateLimitThreshold = new Gcp.Compute.Inputs.SecurityPolicyRuleRateLimitOptionsRateLimitThresholdArgs
///                     {
///                         Count = 10,
///                         IntervalSec = 60,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewSecurityPolicy(ctx, "policy", &compute.SecurityPolicyArgs{
/// 			Name:        pulumi.String("%s"),
/// 			Description: pulumi.String("throttle rule with enforce_on_key_configs"),
/// 			Rules: compute.SecurityPolicyRuleTypeArray{
/// 				&compute.SecurityPolicyRuleTypeArgs{
/// 					Action:   pulumi.String("throttle"),
/// 					Priority: pulumi.Int(2147483647),
/// 					Match: &compute.SecurityPolicyRuleMatchArgs{
/// 						VersionedExpr: pulumi.String("SRC_IPS_V1"),
/// 						Config: &compute.SecurityPolicyRuleMatchConfigArgs{
/// 							SrcIpRanges: pulumi.StringArray{
/// 								pulumi.String("*"),
/// 							},
/// 						},
/// 					},
/// 					Description: pulumi.String("default rule"),
/// 					RateLimitOptions: &compute.SecurityPolicyRuleRateLimitOptionsArgs{
/// 						ConformAction: pulumi.String("allow"),
/// 						ExceedAction:  pulumi.String("redirect"),
/// 						EnforceOnKey:  pulumi.String(""),
/// 						EnforceOnKeyConfigs: compute.SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigArray{
/// 							&compute.SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigArgs{
/// 								EnforceOnKeyType: pulumi.String("IP"),
/// 							},
/// 						},
/// 						ExceedRedirectOptions: &compute.SecurityPolicyRuleRateLimitOptionsExceedRedirectOptionsArgs{
/// 							Type:   pulumi.String("EXTERNAL_302"),
/// 							Target: pulumi.String("<https://www.example.com>"),
/// 						},
/// 						RateLimitThreshold: &compute.SecurityPolicyRuleRateLimitOptionsRateLimitThresholdArgs{
/// 							Count:       pulumi.Int(10),
/// 							IntervalSec: pulumi.Int(60),
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
///   name        = "%s"
///   description = "throttle rule with enforce_on_key_configs"
///   rules {
///     action   = "throttle"
///     priority = "2147483647"
///     match = {
///       versioned_expr = "SRC_IPS_V1"
///       config = {
///         src_ip_ranges = ["*"]
///       }
///     }
///     description = "default rule"
///     rate_limit_options = {
///       conform_action = "allow"
///       exceed_action  = "redirect"
///       enforce_on_key = ""
///       enforce_on_key_configs = [{
///         "enforceOnKeyType" = "IP"
///       }]
///       exceed_redirect_options = {
///         type   = "EXTERNAL_302"
///         target = "<https://www.example.com>"
///       }
///       rate_limit_threshold = {
///         count        = 10
///         interval_sec = 60
///       }
///     }
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
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleMatchConfigArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleRateLimitOptionsArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleRateLimitOptionsExceedRedirectOptionsArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyRuleRateLimitOptionsRateLimitThresholdArgs;
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
///             .name("%s")
///             .description("throttle rule with enforce_on_key_configs")
///             .rules(SecurityPolicyRuleArgs.builder()
///                 .action("throttle")
///                 .priority(2147483647)
///                 .match(SecurityPolicyRuleMatchArgs.builder()
///                     .versionedExpr("SRC_IPS_V1")
///                     .config(SecurityPolicyRuleMatchConfigArgs.builder()
///                         .srcIpRanges("*")
///                         .build())
///                     .build())
///                 .description("default rule")
///                 .rateLimitOptions(SecurityPolicyRuleRateLimitOptionsArgs.builder()
///                     .conformAction("allow")
///                     .exceedAction("redirect")
///                     .enforceOnKey("")
///                     .enforceOnKeyConfigs(SecurityPolicyRuleRateLimitOptionsEnforceOnKeyConfigArgs.builder()
///                         .enforceOnKeyType("IP")
///                         .build())
///                     .exceedRedirectOptions(SecurityPolicyRuleRateLimitOptionsExceedRedirectOptionsArgs.builder()
///                         .type("EXTERNAL_302")
///                         .target("<https://www.example.com>")
///                         .build())
///                     .rateLimitThreshold(SecurityPolicyRuleRateLimitOptionsRateLimitThresholdArgs.builder()
///                         .count(10)
///                         .intervalSec(60)
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
///   policy:
///     type: gcp:compute:SecurityPolicy
///     properties:
///       name: '%s'
///       description: throttle rule with enforce_on_key_configs
///       rules:
///         - action: throttle
///           priority: '2147483647'
///           match:
///             versionedExpr: SRC_IPS_V1
///             config:
///               srcIpRanges:
///                 - '*'
///           description: default rule
///           rateLimitOptions:
///             conformAction: allow
///             exceedAction: redirect
///             enforceOnKey: ""
///             enforceOnKeyConfigs:
///               - enforceOnKeyType: IP
///             exceedRedirectOptions:
///               type: EXTERNAL_302
///               target: <https://www.example.com>
///             rateLimitThreshold:
///               count: 10
///               intervalSec: 60
/// ```
///
///
/// ### With Advanced Options Config
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = new gcp.compute.SecurityPolicy("policy", {
///     name: "my-policy",
///     advancedOptionsConfig: {
///         jsonParsing: "STANDARD",
///         jsonCustomConfig: {
///             contentTypes: [
///                 "application/json",
///                 "application/vnd.api+json",
///                 "application/vnd.collection+json",
///                 "application/vnd.hyper+json",
///             ],
///         },
///         logLevel: "VERBOSE",
///         userIpRequestHeaders: [
///             "True-Client-IP",
///             "x-custom-ip",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.compute.SecurityPolicy("policy",
///     name="my-policy",
///     advanced_options_config={
///         "json_parsing": "STANDARD",
///         "json_custom_config": {
///             "content_types": [
///                 "application/json",
///                 "application/vnd.api+json",
///                 "application/vnd.collection+json",
///                 "application/vnd.hyper+json",
///             ],
///         },
///         "log_level": "VERBOSE",
///         "user_ip_request_headers": [
///             "True-Client-IP",
///             "x-custom-ip",
///         ],
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
///         Name = "my-policy",
///         AdvancedOptionsConfig = new Gcp.Compute.Inputs.SecurityPolicyAdvancedOptionsConfigArgs
///         {
///             JsonParsing = "STANDARD",
///             JsonCustomConfig = new Gcp.Compute.Inputs.SecurityPolicyAdvancedOptionsConfigJsonCustomConfigArgs
///             {
///                 ContentTypes = new[]
///                 {
///                     "application/json",
///                     "application/vnd.api+json",
///                     "application/vnd.collection+json",
///                     "application/vnd.hyper+json",
///                 },
///             },
///             LogLevel = "VERBOSE",
///             UserIpRequestHeaders = new[]
///             {
///                 "True-Client-IP",
///                 "x-custom-ip",
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
/// 		_, err := compute.NewSecurityPolicy(ctx, "policy", &compute.SecurityPolicyArgs{
/// 			Name: pulumi.String("my-policy"),
/// 			AdvancedOptionsConfig: &compute.SecurityPolicyAdvancedOptionsConfigArgs{
/// 				JsonParsing: pulumi.String("STANDARD"),
/// 				JsonCustomConfig: &compute.SecurityPolicyAdvancedOptionsConfigJsonCustomConfigArgs{
/// 					ContentTypes: pulumi.StringArray{
/// 						pulumi.String("application/json"),
/// 						pulumi.String("application/vnd.api+json"),
/// 						pulumi.String("application/vnd.collection+json"),
/// 						pulumi.String("application/vnd.hyper+json"),
/// 					},
/// 				},
/// 				LogLevel: pulumi.String("VERBOSE"),
/// 				UserIpRequestHeaders: pulumi.StringArray{
/// 					pulumi.String("True-Client-IP"),
/// 					pulumi.String("x-custom-ip"),
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
///   name = "my-policy"
///   advanced_options_config = {
///     json_parsing = "STANDARD"
///     json_custom_config = {
///       content_types = ["application/json", "application/vnd.api+json", "application/vnd.collection+json", "application/vnd.hyper+json"]
///     }
///     log_level               = "VERBOSE"
///     user_ip_request_headers = ["True-Client-IP", "x-custom-ip"]
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
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyAdvancedOptionsConfigArgs;
/// import com.pulumi.gcp.compute.inputs.SecurityPolicyAdvancedOptionsConfigJsonCustomConfigArgs;
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
///             .name("my-policy")
///             .advancedOptionsConfig(SecurityPolicyAdvancedOptionsConfigArgs.builder()
///                 .jsonParsing("STANDARD")
///                 .jsonCustomConfig(SecurityPolicyAdvancedOptionsConfigJsonCustomConfigArgs.builder()
///                     .contentTypes(
///                         "application/json",
///                         "application/vnd.api+json",
///                         "application/vnd.collection+json",
///                         "application/vnd.hyper+json")
///                     .build())
///                 .logLevel("VERBOSE")
///                 .userIpRequestHeaders(
///                     "True-Client-IP",
///                     "x-custom-ip")
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
///       name: my-policy
///       advancedOptionsConfig:
///         jsonParsing: STANDARD
///         jsonCustomConfig:
///           contentTypes:
///             - application/json
///             - application/vnd.api+json
///             - application/vnd.collection+json
///             - application/vnd.hyper+json
///         logLevel: VERBOSE
///         userIpRequestHeaders:
///           - True-Client-IP
///           - x-custom-ip
/// ```
///
///
/// ## Import
///
/// Security policies can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/securityPolicies/{{name}}`
/// * `{{project}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, security policies can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/securityPolicy:SecurityPolicy default projects/{{project}}/global/securityPolicies/{{name}}
/// $ pulumi import gcp:compute/securityPolicy:SecurityPolicy default {{project}}/{{name}}
/// $ pulumi import gcp:compute/securityPolicy:SecurityPolicy default {{name}}
/// ```
class SecurityPolicy extends pulumi.CustomResource {
  /// Configuration for [Google Cloud Armor Adaptive Protection](https://cloud.google.com/armor/docs/adaptive-protection-overview?hl=en). Structure is documented below.
  late final pulumi.Output<SecurityPolicyAdaptiveProtectionConfig?> adaptiveProtectionConfig;
  /// [Advanced Configuration Options](https://cloud.google.com/armor/docs/security-policy-overview#json-parsing).
  /// Structure is documented below.
  late final pulumi.Output<SecurityPolicyAdvancedOptionsConfig> advancedOptionsConfig;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// An optional description of this security policy. Max size is 2048.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Fingerprint of this resource.
  late final pulumi.Output<String> fingerprint;
  /// The unique fingerprint of the labels.
  late final pulumi.Output<String> labelFingerprint;
  /// Labels to apply to this address. A list of key-&gt;value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The name of the security policy.
  ///
  /// - - -
  late final pulumi.Output<String> name;
  /// The project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// [reCAPTCHA Configuration Options](https://cloud.google.com/armor/docs/configure-security-policies?hl=en#use_a_manual_challenge_to_distinguish_between_human_or_automated_clients). Structure is documented below.
  late final pulumi.Output<SecurityPolicyRecaptchaOptionsConfig?> recaptchaOptionsConfig;
  /// The set of rules that belong to this policy. There must always be a default
  /// rule (rule with priority 2147483647 and match "\*"). If no rules are provided when creating a
  /// security policy, a default rule with action "allow" will be added. Structure is documented below.
  late final pulumi.Output<List<SecurityPolicyRule>> rules;
  /// The URI of the created resource.
  late final pulumi.Output<String> selfLink;
  /// The type indicates the intended use of the security policy. This field can be set only at resource creation time.
  /// * `CLOUD_ARMOR` - Cloud Armor backend security policies can be configured to filter incoming HTTP requests targeting backend services.
  /// They filter requests before they hit the origin servers.
  /// * `CLOUD_ARMOR_EDGE` - Cloud Armor edge security policies can be configured to filter incoming HTTP requests targeting backend services
  /// (including Cloud CDN-enabled) as well as backend buckets (Cloud Storage).
  /// They filter requests before the request is served from Google's cache.
  /// * `CLOUD_ARMOR_INTERNAL_SERVICE` - Cloud Armor internal service policies can be configured to filter HTTP requests targeting services
  /// managed by Traffic Director in a service mesh. They filter requests before the request is served from the application.
  late final pulumi.Output<String> type;

  /// Creates a new [SecurityPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SecurityPolicy]. {@macro pulumi_compute_security_policy_security_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SecurityPolicy(
    String name, {
    SecurityPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/securityPolicy:SecurityPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        ) {
    adaptiveProtectionConfig = registerOutput<SecurityPolicyAdaptiveProtectionConfig?>('adaptiveProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyAdaptiveProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    advancedOptionsConfig = registerOutput<SecurityPolicyAdvancedOptionsConfig>('advancedOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyAdvancedOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    fingerprint = registerOutput<String>('fingerprint');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    recaptchaOptionsConfig = registerOutput<SecurityPolicyRecaptchaOptionsConfig?>('recaptchaOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRecaptchaOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<SecurityPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityPolicyRule>(guardedValue, (value) => SecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    type = registerOutput<String>('type');
  }

  /// Gets an existing [SecurityPolicy] resource's state with the given [name] and [id].
  static SecurityPolicy get(
    String name,
    pulumi.Input<String> id, {
    SecurityPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SecurityPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SecurityPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:compute/securityPolicy:SecurityPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    adaptiveProtectionConfig = registerOutput<SecurityPolicyAdaptiveProtectionConfig?>('adaptiveProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyAdaptiveProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    advancedOptionsConfig = registerOutput<SecurityPolicyAdvancedOptionsConfig>('advancedOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyAdvancedOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    fingerprint = registerOutput<String>('fingerprint');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    recaptchaOptionsConfig = registerOutput<SecurityPolicyRecaptchaOptionsConfig?>('recaptchaOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRecaptchaOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<SecurityPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityPolicyRule>(guardedValue, (value) => SecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [SecurityPolicy] resource.
  SecurityPolicy.reference(String urn)
    : super(
        'gcp:compute/securityPolicy:SecurityPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['effectiveLabels', 'pulumiLabels'],
        isResourceReference: true,
      ) {
    adaptiveProtectionConfig = registerOutput<SecurityPolicyAdaptiveProtectionConfig?>('adaptiveProtectionConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyAdaptiveProtectionConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    advancedOptionsConfig = registerOutput<SecurityPolicyAdvancedOptionsConfig>('advancedOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyAdvancedOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    fingerprint = registerOutput<String>('fingerprint');
    labelFingerprint = registerOutput<String>('labelFingerprint');
    labels = registerOutput<Map<String, String>?>('labels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); }, isSecret: true);
    recaptchaOptionsConfig = registerOutput<SecurityPolicyRecaptchaOptionsConfig?>('recaptchaOptionsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SecurityPolicyRecaptchaOptionsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rules = registerOutput<List<SecurityPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<SecurityPolicyRule>(guardedValue, (value) => SecurityPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
    selfLink = registerOutput<String>('selfLink');
    type = registerOutput<String>('type');
  }
}
