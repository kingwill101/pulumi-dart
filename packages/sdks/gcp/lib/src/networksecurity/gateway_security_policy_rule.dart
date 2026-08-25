import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_security_policy_rule_args.dart';
import 'gateway_security_policy_rule_state.dart';

/// The GatewaySecurityPolicyRule resource is in a nested collection within a GatewaySecurityPolicy and represents
/// a traffic matching condition and associated action to perform.
///
///
/// To get more information about GatewaySecurityPolicyRule, see:
///
/// * [API documentation](https://cloud.google.com/secure-web-proxy/docs/reference/network-security/rest/v1/projects.locations.gatewaySecurityPolicies.rules)
///
/// ## Example Usage
///
/// ### Network Security Gateway Security Policy Rules Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.GatewaySecurityPolicy("default", {
///     name: "my-gateway-security-policy",
///     location: "us-central1",
///     description: "gateway security policy created to be used as reference by the rule.",
/// });
/// const defaultGatewaySecurityPolicyRule = new gcp.networksecurity.GatewaySecurityPolicyRule("default", {
///     name: "my-gateway-security-policy-rule",
///     location: "us-central1",
///     gatewaySecurityPolicy: _default.name,
///     enabled: true,
///     description: "my description",
///     priority: 0,
///     sessionMatcher: "host() == 'example.com'",
///     basicProfile: "ALLOW",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.GatewaySecurityPolicy("default",
///     name="my-gateway-security-policy",
///     location="us-central1",
///     description="gateway security policy created to be used as reference by the rule.")
/// default_gateway_security_policy_rule = gcp.networksecurity.GatewaySecurityPolicyRule("default",
///     name="my-gateway-security-policy-rule",
///     location="us-central1",
///     gateway_security_policy=default.name,
///     enabled=True,
///     description="my description",
///     priority=0,
///     session_matcher="host() == 'example.com'",
///     basic_profile="ALLOW")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.GatewaySecurityPolicy("default", new()
///     {
///         Name = "my-gateway-security-policy",
///         Location = "us-central1",
///         Description = "gateway security policy created to be used as reference by the rule.",
///     });
///
///     var defaultGatewaySecurityPolicyRule = new Gcp.NetworkSecurity.GatewaySecurityPolicyRule("default", new()
///     {
///         Name = "my-gateway-security-policy-rule",
///         Location = "us-central1",
///         GatewaySecurityPolicy = @default.Name,
///         Enabled = true,
///         Description = "my description",
///         Priority = 0,
///         SessionMatcher = "host() == 'example.com'",
///         BasicProfile = "ALLOW",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := networksecurity.NewGatewaySecurityPolicy(ctx, "default", &networksecurity.GatewaySecurityPolicyArgs{
/// 			Name:        pulumi.String("my-gateway-security-policy"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("gateway security policy created to be used as reference by the rule."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewGatewaySecurityPolicyRule(ctx, "default", &networksecurity.GatewaySecurityPolicyRuleArgs{
/// 			Name:                  pulumi.String("my-gateway-security-policy-rule"),
/// 			Location:              pulumi.String("us-central1"),
/// 			GatewaySecurityPolicy: _default.Name,
/// 			Enabled:               pulumi.Bool(true),
/// 			Description:           pulumi.String("my description"),
/// 			Priority:              pulumi.Int(0),
/// 			SessionMatcher:        pulumi.String("host() == 'example.com'"),
/// 			BasicProfile:          pulumi.String("ALLOW"),
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
/// resource "gcp_networksecurity_gatewaysecuritypolicy" "default" {
///   name        = "my-gateway-security-policy"
///   location    = "us-central1"
///   description = "gateway security policy created to be used as reference by the rule."
/// }
/// resource "gcp_networksecurity_gatewaysecuritypolicyrule" "default" {
///   name                    = "my-gateway-security-policy-rule"
///   location                = "us-central1"
///   gateway_security_policy = gcp_networksecurity_gatewaysecuritypolicy.default.name
///   enabled                 = true
///   description             = "my description"
///   priority                = 0
///   session_matcher         = "host() == 'example.com'"
///   basic_profile           = "ALLOW"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicy;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyArgs;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRule;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRuleArgs;
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
///         var default_ = new GatewaySecurityPolicy("default", GatewaySecurityPolicyArgs.builder()
///             .name("my-gateway-security-policy")
///             .location("us-central1")
///             .description("gateway security policy created to be used as reference by the rule.")
///             .build());
///
///         var defaultGatewaySecurityPolicyRule = new GatewaySecurityPolicyRule("defaultGatewaySecurityPolicyRule", GatewaySecurityPolicyRuleArgs.builder()
///             .name("my-gateway-security-policy-rule")
///             .location("us-central1")
///             .gatewaySecurityPolicy(default_.name())
///             .enabled(true)
///             .description("my description")
///             .priority(0)
///             .sessionMatcher("host() == 'example.com'")
///             .basicProfile("ALLOW")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:GatewaySecurityPolicy
///     properties:
///       name: my-gateway-security-policy
///       location: us-central1
///       description: gateway security policy created to be used as reference by the rule.
///   defaultGatewaySecurityPolicyRule:
///     type: gcp:networksecurity:GatewaySecurityPolicyRule
///     name: default
///     properties:
///       name: my-gateway-security-policy-rule
///       location: us-central1
///       gatewaySecurityPolicy: ${default.name}
///       enabled: true
///       description: my description
///       priority: 0
///       sessionMatcher: host() == 'example.com'
///       basicProfile: ALLOW
/// ```
///
/// ### Network Security Gateway Security Policy Rules Advanced
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.GatewaySecurityPolicy("default", {
///     name: "my-gateway-security-policy",
///     location: "us-central1",
///     description: "gateway security policy created to be used as reference by the rule.",
/// });
/// const defaultGatewaySecurityPolicyRule = new gcp.networksecurity.GatewaySecurityPolicyRule("default", {
///     name: "my-gateway-security-policy-rule",
///     location: "us-central1",
///     gatewaySecurityPolicy: _default.name,
///     enabled: true,
///     description: "my description",
///     priority: 0,
///     sessionMatcher: "host() == 'example.com'",
///     applicationMatcher: "request.method == 'POST'",
///     tlsInspectionEnabled: false,
///     basicProfile: "ALLOW",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.GatewaySecurityPolicy("default",
///     name="my-gateway-security-policy",
///     location="us-central1",
///     description="gateway security policy created to be used as reference by the rule.")
/// default_gateway_security_policy_rule = gcp.networksecurity.GatewaySecurityPolicyRule("default",
///     name="my-gateway-security-policy-rule",
///     location="us-central1",
///     gateway_security_policy=default.name,
///     enabled=True,
///     description="my description",
///     priority=0,
///     session_matcher="host() == 'example.com'",
///     application_matcher="request.method == 'POST'",
///     tls_inspection_enabled=False,
///     basic_profile="ALLOW")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Gcp.NetworkSecurity.GatewaySecurityPolicy("default", new()
///     {
///         Name = "my-gateway-security-policy",
///         Location = "us-central1",
///         Description = "gateway security policy created to be used as reference by the rule.",
///     });
///
///     var defaultGatewaySecurityPolicyRule = new Gcp.NetworkSecurity.GatewaySecurityPolicyRule("default", new()
///     {
///         Name = "my-gateway-security-policy-rule",
///         Location = "us-central1",
///         GatewaySecurityPolicy = @default.Name,
///         Enabled = true,
///         Description = "my description",
///         Priority = 0,
///         SessionMatcher = "host() == 'example.com'",
///         ApplicationMatcher = "request.method == 'POST'",
///         TlsInspectionEnabled = false,
///         BasicProfile = "ALLOW",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := networksecurity.NewGatewaySecurityPolicy(ctx, "default", &networksecurity.GatewaySecurityPolicyArgs{
/// 			Name:        pulumi.String("my-gateway-security-policy"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Description: pulumi.String("gateway security policy created to be used as reference by the rule."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewGatewaySecurityPolicyRule(ctx, "default", &networksecurity.GatewaySecurityPolicyRuleArgs{
/// 			Name:                  pulumi.String("my-gateway-security-policy-rule"),
/// 			Location:              pulumi.String("us-central1"),
/// 			GatewaySecurityPolicy: _default.Name,
/// 			Enabled:               pulumi.Bool(true),
/// 			Description:           pulumi.String("my description"),
/// 			Priority:              pulumi.Int(0),
/// 			SessionMatcher:        pulumi.String("host() == 'example.com'"),
/// 			ApplicationMatcher:    pulumi.String("request.method == 'POST'"),
/// 			TlsInspectionEnabled:  pulumi.Bool(false),
/// 			BasicProfile:          pulumi.String("ALLOW"),
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
/// resource "gcp_networksecurity_gatewaysecuritypolicy" "default" {
///   name        = "my-gateway-security-policy"
///   location    = "us-central1"
///   description = "gateway security policy created to be used as reference by the rule."
/// }
/// resource "gcp_networksecurity_gatewaysecuritypolicyrule" "default" {
///   name                    = "my-gateway-security-policy-rule"
///   location                = "us-central1"
///   gateway_security_policy = gcp_networksecurity_gatewaysecuritypolicy.default.name
///   enabled                 = true
///   description             = "my description"
///   priority                = 0
///   session_matcher         = "host() == 'example.com'"
///   application_matcher     = "request.method == 'POST'"
///   tls_inspection_enabled  = false
///   basic_profile           = "ALLOW"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicy;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyArgs;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRule;
/// import com.pulumi.gcp.networksecurity.GatewaySecurityPolicyRuleArgs;
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
///         var default_ = new GatewaySecurityPolicy("default", GatewaySecurityPolicyArgs.builder()
///             .name("my-gateway-security-policy")
///             .location("us-central1")
///             .description("gateway security policy created to be used as reference by the rule.")
///             .build());
///
///         var defaultGatewaySecurityPolicyRule = new GatewaySecurityPolicyRule("defaultGatewaySecurityPolicyRule", GatewaySecurityPolicyRuleArgs.builder()
///             .name("my-gateway-security-policy-rule")
///             .location("us-central1")
///             .gatewaySecurityPolicy(default_.name())
///             .enabled(true)
///             .description("my description")
///             .priority(0)
///             .sessionMatcher("host() == 'example.com'")
///             .applicationMatcher("request.method == 'POST'")
///             .tlsInspectionEnabled(false)
///             .basicProfile("ALLOW")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:GatewaySecurityPolicy
///     properties:
///       name: my-gateway-security-policy
///       location: us-central1
///       description: gateway security policy created to be used as reference by the rule.
///   defaultGatewaySecurityPolicyRule:
///     type: gcp:networksecurity:GatewaySecurityPolicyRule
///     name: default
///     properties:
///       name: my-gateway-security-policy-rule
///       location: us-central1
///       gatewaySecurityPolicy: ${default.name}
///       enabled: true
///       description: my description
///       priority: 0
///       sessionMatcher: host() == 'example.com'
///       applicationMatcher: request.method == 'POST'
///       tlsInspectionEnabled: false
///       basicProfile: ALLOW
/// ```
///
///
/// ## Import
///
/// GatewaySecurityPolicyRule can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/gatewaySecurityPolicies/{{gateway_security_policy}}/rules/{{name}}`
/// * `{{project}}/{{location}}/{{gateway_security_policy}}/{{name}}`
/// * `{{location}}/{{gateway_security_policy}}/{{name}}`
///
///
/// When using the `pulumi import` command, GatewaySecurityPolicyRule can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule default projects/{{project}}/locations/{{location}}/gatewaySecurityPolicies/{{gateway_security_policy}}/rules/{{name}}
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule default {{project}}/{{location}}/{{gateway_security_policy}}/{{name}}
/// $ pulumi import gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule default {{location}}/{{gateway_security_policy}}/{{name}}
/// ```
class GatewaySecurityPolicyRule extends pulumi.CustomResource {
  /// CEL expression for matching on L7/application level criteria.
  late final pulumi.Output<String?> applicationMatcher;
  /// Profile which tells what the primitive action should be. Possible values are: * ALLOW * DENY.
  /// Possible values are: `BASIC_PROFILE_UNSPECIFIED`, `ALLOW`, `DENY`.
  late final pulumi.Output<String> basicProfile;
  /// The timestamp when the resource was created.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z"
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Free-text description of the resource.
  late final pulumi.Output<String?> description;
  /// Whether the rule is enforced.
  late final pulumi.Output<bool> enabled;
  /// The name of the gatewat security policy this rule belongs to.
  late final pulumi.Output<String> gatewaySecurityPolicy;
  /// The location of the gateway security policy.
  late final pulumi.Output<String> location;
  /// Name of the resource. ame is the full resource name so projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy}/rules/{rule}
  /// rule should match the pattern: (^a-z?$).
  late final pulumi.Output<String> name;
  /// Priority of the rule. Lower number corresponds to higher precedence.
  late final pulumi.Output<int> priority;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Server-defined URL of this resource.
  late final pulumi.Output<String> selfLink;
  /// CEL expression for matching on session criteria.
  late final pulumi.Output<String> sessionMatcher;
  /// Flag to enable TLS inspection of traffic matching on. Can only be true if the
  /// parent GatewaySecurityPolicy references a TLSInspectionConfig.
  late final pulumi.Output<bool?> tlsInspectionEnabled;
  /// The timestamp when the resource was updated.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GatewaySecurityPolicyRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GatewaySecurityPolicyRule]. {@macro pulumi_networksecurity_gateway_security_policy_rule_gateway_security_policy_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GatewaySecurityPolicyRule(
    String name, {
    GatewaySecurityPolicyRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    applicationMatcher = registerOutput<String?>('applicationMatcher');
    basicProfile = registerOutput<String>('basicProfile');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    gatewaySecurityPolicy = registerOutput<String>('gatewaySecurityPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sessionMatcher = registerOutput<String>('sessionMatcher');
    tlsInspectionEnabled = registerOutput<bool?>('tlsInspectionEnabled');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GatewaySecurityPolicyRule] resource's state with the given [name] and [id].
  static GatewaySecurityPolicyRule get(
    String name,
    pulumi.Input<String> id, {
    GatewaySecurityPolicyRuleState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return GatewaySecurityPolicyRule._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  GatewaySecurityPolicyRule._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationMatcher = registerOutput<String?>('applicationMatcher');
    basicProfile = registerOutput<String>('basicProfile');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    gatewaySecurityPolicy = registerOutput<String>('gatewaySecurityPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sessionMatcher = registerOutput<String>('sessionMatcher');
    tlsInspectionEnabled = registerOutput<bool?>('tlsInspectionEnabled');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [GatewaySecurityPolicyRule] resource.
  GatewaySecurityPolicyRule.reference(String urn)
    : super(
        'gcp:networksecurity/gatewaySecurityPolicyRule:GatewaySecurityPolicyRule',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    applicationMatcher = registerOutput<String?>('applicationMatcher');
    basicProfile = registerOutput<String>('basicProfile');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    enabled = registerOutput<bool>('enabled');
    gatewaySecurityPolicy = registerOutput<String>('gatewaySecurityPolicy');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    priority = registerOutput<int>('priority');
    project = registerOutput<String>('project');
    selfLink = registerOutput<String>('selfLink');
    sessionMatcher = registerOutput<String>('sessionMatcher');
    tlsInspectionEnabled = registerOutput<bool?>('tlsInspectionEnabled');
    updateTime = registerOutput<String>('updateTime');
  }
}
