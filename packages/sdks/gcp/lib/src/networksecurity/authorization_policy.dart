import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorization_policy_args.dart';
import 'authorization_policy_state.dart';

/// AuthorizationPolicy is a resource that specifies how a server should authorize incoming connections. This resource in itself does not change the configuration unless it's attached to a target https proxy or endpoint config selector resource.
///
/// &gt; **Warning:** This resource is in beta, and should be used with the terraform-provider-google-beta provider.
/// See Provider Versions for more details on beta resources.
///
/// To get more information about AuthorizationPolicy, see:
///
/// * [API documentation](https://cloud.google.com/traffic-director/docs/reference/network-security/rest/v1beta1/projects.locations.authorizationPolicies)
///
/// ## Example Usage
///
/// ### Network Security Authorization Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.AuthorizationPolicy("default", {
///     name: "my-authorization-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     action: "ALLOW",
///     rules: [{
///         sources: [{
///             principals: ["namespace/*"],
///             ipBlocks: ["1.2.3.0/24"],
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.AuthorizationPolicy("default",
///     name="my-authorization-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     action="ALLOW",
///     rules=[{
///         "sources": [{
///             "principals": ["namespace/*"],
///             "ip_blocks": ["1.2.3.0/24"],
///         }],
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
///     var @default = new Gcp.NetworkSecurity.AuthorizationPolicy("default", new()
///     {
///         Name = "my-authorization-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Action = "ALLOW",
///         Rules = new[]
///         {
///             new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleArgs
///             {
///                 Sources = new[]
///                 {
///                     new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleSourceArgs
///                     {
///                         Principals = new[]
///                         {
///                             "namespace/*",
///                         },
///                         IpBlocks = new[]
///                         {
///                             "1.2.3.0/24",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewAuthorizationPolicy(ctx, "default", &networksecurity.AuthorizationPolicyArgs{
/// 			Name: pulumi.String("my-authorization-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Action:      pulumi.String("ALLOW"),
/// 			Rules: networksecurity.AuthorizationPolicyRuleArray{
/// 				&networksecurity.AuthorizationPolicyRuleArgs{
/// 					Sources: networksecurity.AuthorizationPolicyRuleSourceArray{
/// 						&networksecurity.AuthorizationPolicyRuleSourceArgs{
/// 							Principals: pulumi.StringArray{
/// 								pulumi.String("namespace/*"),
/// 							},
/// 							IpBlocks: pulumi.StringArray{
/// 								pulumi.String("1.2.3.0/24"),
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
/// resource "gcp_networksecurity_authorizationpolicy" "default" {
///   name = "my-authorization-policy"
///   labels = {
///     "foo" = "bar"
///   }
///   description = "my description"
///   action      = "ALLOW"
///   rules {
///     sources {
///       principals = ["namespace/*"]
///       ip_blocks  = ["1.2.3.0/24"]
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
/// import com.pulumi.gcp.networksecurity.AuthorizationPolicy;
/// import com.pulumi.gcp.networksecurity.AuthorizationPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthorizationPolicyRuleArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthorizationPolicyRuleSourceArgs;
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
///         var default_ = new AuthorizationPolicy("default", AuthorizationPolicyArgs.builder()
///             .name("my-authorization-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .action("ALLOW")
///             .rules(AuthorizationPolicyRuleArgs.builder()
///                 .sources(AuthorizationPolicyRuleSourceArgs.builder()
///                     .principals("namespace/*")
///                     .ipBlocks("1.2.3.0/24")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: gcp:networksecurity:AuthorizationPolicy
///     properties:
///       name: my-authorization-policy
///       labels:
///         foo: bar
///       description: my description
///       action: ALLOW
///       rules:
///         - sources:
///             - principals:
///                 - namespace/*
///               ipBlocks:
///                 - 1.2.3.0/24
/// ```
///
/// ### Network Security Authorization Policy Destinations
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const _default = new gcp.networksecurity.AuthorizationPolicy("default", {
///     name: "my-authorization-policy",
///     labels: {
///         foo: "bar",
///     },
///     description: "my description",
///     action: "ALLOW",
///     rules: [{
///         sources: [{
///             principals: ["namespace/*"],
///             ipBlocks: ["1.2.3.0/24"],
///         }],
///         destinations: [{
///             hosts: ["mydomain.*"],
///             ports: [8080],
///             methods: ["GET"],
///             httpHeaderMatch: {
///                 headerName: ":method",
///                 regexMatch: "GET",
///             },
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// default = gcp.networksecurity.AuthorizationPolicy("default",
///     name="my-authorization-policy",
///     labels={
///         "foo": "bar",
///     },
///     description="my description",
///     action="ALLOW",
///     rules=[{
///         "sources": [{
///             "principals": ["namespace/*"],
///             "ip_blocks": ["1.2.3.0/24"],
///         }],
///         "destinations": [{
///             "hosts": ["mydomain.*"],
///             "ports": [8080],
///             "methods": ["GET"],
///             "http_header_match": {
///                 "header_name": ":method",
///                 "regex_match": "GET",
///             },
///         }],
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
///     var @default = new Gcp.NetworkSecurity.AuthorizationPolicy("default", new()
///     {
///         Name = "my-authorization-policy",
///         Labels =
///         {
///             { "foo", "bar" },
///         },
///         Description = "my description",
///         Action = "ALLOW",
///         Rules = new[]
///         {
///             new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleArgs
///             {
///                 Sources = new[]
///                 {
///                     new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleSourceArgs
///                     {
///                         Principals = new[]
///                         {
///                             "namespace/*",
///                         },
///                         IpBlocks = new[]
///                         {
///                             "1.2.3.0/24",
///                         },
///                     },
///                 },
///                 Destinations = new[]
///                 {
///                     new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleDestinationArgs
///                     {
///                         Hosts = new[]
///                         {
///                             "mydomain.*",
///                         },
///                         Ports = new[]
///                         {
///                             8080,
///                         },
///                         Methods = new[]
///                         {
///                             "GET",
///                         },
///                         HttpHeaderMatch = new Gcp.NetworkSecurity.Inputs.AuthorizationPolicyRuleDestinationHttpHeaderMatchArgs
///                         {
///                             HeaderName = ":method",
///                             RegexMatch = "GET",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/networksecurity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networksecurity.NewAuthorizationPolicy(ctx, "default", &networksecurity.AuthorizationPolicyArgs{
/// 			Name: pulumi.String("my-authorization-policy"),
/// 			Labels: pulumi.StringMap{
/// 				"foo": pulumi.String("bar"),
/// 			},
/// 			Description: pulumi.String("my description"),
/// 			Action:      pulumi.String("ALLOW"),
/// 			Rules: networksecurity.AuthorizationPolicyRuleArray{
/// 				&networksecurity.AuthorizationPolicyRuleArgs{
/// 					Sources: networksecurity.AuthorizationPolicyRuleSourceArray{
/// 						&networksecurity.AuthorizationPolicyRuleSourceArgs{
/// 							Principals: pulumi.StringArray{
/// 								pulumi.String("namespace/*"),
/// 							},
/// 							IpBlocks: pulumi.StringArray{
/// 								pulumi.String("1.2.3.0/24"),
/// 							},
/// 						},
/// 					},
/// 					Destinations: networksecurity.AuthorizationPolicyRuleDestinationArray{
/// 						&networksecurity.AuthorizationPolicyRuleDestinationArgs{
/// 							Hosts: pulumi.StringArray{
/// 								pulumi.String("mydomain.*"),
/// 							},
/// 							Ports: pulumi.IntArray{
/// 								pulumi.Int(8080),
/// 							},
/// 							Methods: pulumi.StringArray{
/// 								pulumi.String("GET"),
/// 							},
/// 							HttpHeaderMatch: &networksecurity.AuthorizationPolicyRuleDestinationHttpHeaderMatchArgs{
/// 								HeaderName: pulumi.String(":method"),
/// 								RegexMatch: pulumi.String("GET"),
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
/// resource "gcp_networksecurity_authorizationpolicy" "default" {
///   name = "my-authorization-policy"
///   labels = {
///     "foo" = "bar"
///   }
///   description = "my description"
///   action      = "ALLOW"
///   rules {
///     sources {
///       principals = ["namespace/*"]
///       ip_blocks  = ["1.2.3.0/24"]
///     }
///     destinations {
///       hosts   = ["mydomain.*"]
///       ports   = [8080]
///       methods = ["GET"]
///       http_header_match = {
///         header_name = ":method"
///         regex_match = "GET"
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
/// import com.pulumi.gcp.networksecurity.AuthorizationPolicy;
/// import com.pulumi.gcp.networksecurity.AuthorizationPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthorizationPolicyRuleArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthorizationPolicyRuleSourceArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthorizationPolicyRuleDestinationArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthorizationPolicyRuleDestinationHttpHeaderMatchArgs;
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
///         var default_ = new AuthorizationPolicy("default", AuthorizationPolicyArgs.builder()
///             .name("my-authorization-policy")
///             .labels(Map.of("foo", "bar"))
///             .description("my description")
///             .action("ALLOW")
///             .rules(AuthorizationPolicyRuleArgs.builder()
///                 .sources(AuthorizationPolicyRuleSourceArgs.builder()
///                     .principals("namespace/*")
///                     .ipBlocks("1.2.3.0/24")
///                     .build())
///                 .destinations(AuthorizationPolicyRuleDestinationArgs.builder()
///                     .hosts("mydomain.*")
///                     .ports(8080)
///                     .methods("GET")
///                     .httpHeaderMatch(AuthorizationPolicyRuleDestinationHttpHeaderMatchArgs.builder()
///                         .headerName(":method")
///                         .regexMatch("GET")
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
///   default:
///     type: gcp:networksecurity:AuthorizationPolicy
///     properties:
///       name: my-authorization-policy
///       labels:
///         foo: bar
///       description: my description
///       action: ALLOW
///       rules:
///         - sources:
///             - principals:
///                 - namespace/*
///               ipBlocks:
///                 - 1.2.3.0/24
///           destinations:
///             - hosts:
///                 - mydomain.*
///               ports:
///                 - 8080
///               methods:
///                 - GET
///               httpHeaderMatch:
///                 headerName: :method
///                 regexMatch: GET
/// ```
///
///
/// ## Import
///
/// AuthorizationPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/authorizationPolicies/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
///
///
/// When using the `pulumi import` command, AuthorizationPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authorizationPolicy:AuthorizationPolicy default projects/{{project}}/locations/{{location}}/authorizationPolicies/{{name}}
/// $ pulumi import gcp:networksecurity/authorizationPolicy:AuthorizationPolicy default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networksecurity/authorizationPolicy:AuthorizationPolicy default {{location}}/{{name}}
/// ```
class AuthorizationPolicy extends pulumi.CustomResource {
  /// The action to take when a rule match is found. Possible values are "ALLOW" or "DENY".
  /// Possible values are: `ALLOW`, `DENY`.
  late final pulumi.Output<String> action;
  /// Time the AuthorizationPolicy was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A free-text description of the resource. Max length 1024 characters.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// Set of label tags associated with the AuthorizationPolicy resource.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the authorization policy.
  /// The default value is `global`.
  late final pulumi.Output<String?> location;
  /// Name of the AuthorizationPolicy resource.
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// List of rules to match. Note that at least one of the rules must match in order for the action specified in the 'action' field to be taken.
  /// A rule is a match if there is a matching source and destination. If left blank, the action specified in the action field will be applied on every request.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> rules;
  /// Time the AuthorizationPolicy was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AuthorizationPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthorizationPolicy]. {@macro pulumi_networksecurity_authorization_policy_authorization_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthorizationPolicy(
    String name, {
    AuthorizationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/authorizationPolicy:AuthorizationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AuthorizationPolicy] resource's state with the given [name] and [id].
  static AuthorizationPolicy get(
    String name,
    pulumi.Input<String> id, {
    AuthorizationPolicyState? state,
  }) {
    return AuthorizationPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AuthorizationPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/authorizationPolicy:AuthorizationPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    rules = registerOutput<List<Map<String, dynamic>>?>('rules');
    updateTime = registerOutput<String>('updateTime');
  }
}
