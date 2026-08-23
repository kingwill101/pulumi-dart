import 'package:pulumi/pulumi.dart' as pulumi;
import 'authz_policy_args.dart';
import 'authz_policy_custom_provider.dart';
import 'authz_policy_state.dart';
import 'authz_policy_target.dart';

/// AuthzPolicy is a resource that allows to forward traffic to a callout backend designed to scan the traffic for security purposes.
///
///
/// To get more information about AuthzPolicy, see:
///
/// * [API documentation](https://cloud.google.com/load-balancing/docs/reference/network-security/rest/v1beta1/projects.locations.authzPolicies)
///
/// ## Example Usage
///
/// ### Network Security Authz Policy Mcp
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const _default = new gcp.networksecurity.AuthzPolicy("default", {
///     name: "my-mcp-policy",
///     location: "us-west1",
///     target: {
///         resources: [project.then(project => `projects/${project.projectId}/locations/us-west1/agentGateways/gateway1`)],
///     },
///     policyProfile: "REQUEST_AUTHZ",
///     action: "ALLOW",
///     httpRules: [{
///         to: {
///             operations: [{
///                 mcp: {
///                     baseProtocolMethodsOption: "MATCH_BASE_PROTOCOL_METHODS",
///                     methods: [
///                         {
///                             name: "tools",
///                         },
///                         {
///                             name: "tools/call",
///                             params: [{
///                                 exact: "foo",
///                             }],
///                         },
///                     ],
///                 },
///             }],
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// default = gcp.networksecurity.AuthzPolicy("default",
///     name="my-mcp-policy",
///     location="us-west1",
///     target={
///         "resources": [f"projects/{project.project_id}/locations/us-west1/agentGateways/gateway1"],
///     },
///     policy_profile="REQUEST_AUTHZ",
///     action="ALLOW",
///     http_rules=[{
///         "to": {
///             "operations": [{
///                 "mcp": {
///                     "base_protocol_methods_option": "MATCH_BASE_PROTOCOL_METHODS",
///                     "methods": [
///                         {
///                             "name": "tools",
///                         },
///                         {
///                             "name": "tools/call",
///                             "params": [{
///                                 "exact": "foo",
///                             }],
///                         },
///                     ],
///                 },
///             }],
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
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var @default = new Gcp.NetworkSecurity.AuthzPolicy("default", new()
///     {
///         Name = "my-mcp-policy",
///         Location = "us-west1",
///         Target = new Gcp.NetworkSecurity.Inputs.AuthzPolicyTargetArgs
///         {
///             Resources = new[]
///             {
///                 $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}/locations/us-west1/agentGateways/gateway1",
///             },
///         },
///         PolicyProfile = "REQUEST_AUTHZ",
///         Action = "ALLOW",
///         HttpRules = new[]
///         {
///             new Gcp.NetworkSecurity.Inputs.AuthzPolicyHttpRuleArgs
///             {
///                 To = new Gcp.NetworkSecurity.Inputs.AuthzPolicyHttpRuleToArgs
///                 {
///                     Operations = new[]
///                     {
///                         new Gcp.NetworkSecurity.Inputs.AuthzPolicyHttpRuleToOperationArgs
///                         {
///                             Mcp = new Gcp.NetworkSecurity.Inputs.AuthzPolicyHttpRuleToOperationMcpArgs
///                             {
///                                 BaseProtocolMethodsOption = "MATCH_BASE_PROTOCOL_METHODS",
///                                 Methods = new[]
///                                 {
///                                     new Gcp.NetworkSecurity.Inputs.AuthzPolicyHttpRuleToOperationMcpMethodArgs
///                                     {
///                                         Name = "tools",
///                                     },
///                                     new Gcp.NetworkSecurity.Inputs.AuthzPolicyHttpRuleToOperationMcpMethodArgs
///                                     {
///                                         Name = "tools/call",
///                                         Params = new[]
///                                         {
///                                             new Gcp.NetworkSecurity.Inputs.AuthzPolicyHttpRuleToOperationMcpMethodParamArgs
///                                             {
///                                                 Exact = "foo",
///                                             },
///                                         },
///                                     },
///                                 },
///                             },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networksecurity.NewAuthzPolicy(ctx, "default", &networksecurity.AuthzPolicyArgs{
/// 			Name:     pulumi.String("my-mcp-policy"),
/// 			Location: pulumi.String("us-west1"),
/// 			Target: &networksecurity.AuthzPolicyTargetArgs{
/// 				Resources: pulumi.StringArray{
/// 					pulumi.Sprintf("projects/%v/locations/us-west1/agentGateways/gateway1", project.ProjectId),
/// 				},
/// 			},
/// 			PolicyProfile: pulumi.String("REQUEST_AUTHZ"),
/// 			Action:        pulumi.String("ALLOW"),
/// 			HttpRules: networksecurity.AuthzPolicyHttpRuleArray{
/// 				&networksecurity.AuthzPolicyHttpRuleArgs{
/// 					To: &networksecurity.AuthzPolicyHttpRuleToArgs{
/// 						Operations: networksecurity.AuthzPolicyHttpRuleToOperationArray{
/// 							&networksecurity.AuthzPolicyHttpRuleToOperationArgs{
/// 								Mcp: &networksecurity.AuthzPolicyHttpRuleToOperationMcpArgs{
/// 									BaseProtocolMethodsOption: pulumi.String("MATCH_BASE_PROTOCOL_METHODS"),
/// 									Methods: networksecurity.AuthzPolicyHttpRuleToOperationMcpMethodArray{
/// 										&networksecurity.AuthzPolicyHttpRuleToOperationMcpMethodArgs{
/// 											Name: pulumi.String("tools"),
/// 										},
/// 										&networksecurity.AuthzPolicyHttpRuleToOperationMcpMethodArgs{
/// 											Name: pulumi.String("tools/call"),
/// 											Params: networksecurity.AuthzPolicyHttpRuleToOperationMcpMethodParamArray{
/// 												&networksecurity.AuthzPolicyHttpRuleToOperationMcpMethodParamArgs{
/// 													Exact: pulumi.String("foo"),
/// 												},
/// 											},
/// 										},
/// 									},
/// 								},
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
/// data "gcp_organizations_getproject" "project" {
/// }
///
/// resource "gcp_networksecurity_authzpolicy" "default" {
///   name     = "my-mcp-policy"
///   location = "us-west1"
///   target = {
///     resources = ["projects/${data.gcp_organizations_getproject.project.project_id}/locations/us-west1/agentGateways/gateway1"]
///   }
///   policy_profile = "REQUEST_AUTHZ"
///   action         = "ALLOW"
///   http_rules {
///     to = {
///       operations = [{
///         "mcp" = {
///           "baseProtocolMethodsOption" = "MATCH_BASE_PROTOCOL_METHODS"
///           "methods" = [{
///             "name" = "tools"
///             }, {
///             "name" = "tools/call"
///             "params" = [{
///               "exact" = "foo"
///             }]
///           }]
///         }
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.networksecurity.AuthzPolicy;
/// import com.pulumi.gcp.networksecurity.AuthzPolicyArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthzPolicyTargetArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthzPolicyHttpRuleArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthzPolicyHttpRuleToArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthzPolicyHttpRuleToOperationArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthzPolicyHttpRuleToOperationMcpArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthzPolicyHttpRuleToOperationMcpMethodArgs;
/// import com.pulumi.gcp.networksecurity.inputs.AuthzPolicyHttpRuleToOperationMcpMethodParamArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var default_ = new AuthzPolicy("default", AuthzPolicyArgs.builder()
///             .name("my-mcp-policy")
///             .location("us-west1")
///             .target(AuthzPolicyTargetArgs.builder()
///                 .resources(String.format("projects/%s/locations/us-west1/agentGateways/gateway1", project.projectId()))
///                 .build())
///             .policyProfile("REQUEST_AUTHZ")
///             .action("ALLOW")
///             .httpRules(AuthzPolicyHttpRuleArgs.builder()
///                 .to(AuthzPolicyHttpRuleToArgs.builder()
///                     .operations(AuthzPolicyHttpRuleToOperationArgs.builder()
///                         .mcp(AuthzPolicyHttpRuleToOperationMcpArgs.builder()
///                             .baseProtocolMethodsOption("MATCH_BASE_PROTOCOL_METHODS")
///                             .methods(
///                                 AuthzPolicyHttpRuleToOperationMcpMethodArgs.builder()
///                                     .name("tools")
///                                     .build(),
///                                 AuthzPolicyHttpRuleToOperationMcpMethodArgs.builder()
///                                     .name("tools/call")
///                                     .params(AuthzPolicyHttpRuleToOperationMcpMethodParamArgs.builder()
///                                         .exact("foo")
///                                         .build())
///                                     .build())
///                             .build())
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
///     type: gcp:networksecurity:AuthzPolicy
///     properties:
///       name: my-mcp-policy
///       location: us-west1
///       target:
///         resources:
///           - projects/${project.projectId}/locations/us-west1/agentGateways/gateway1
///       policyProfile: REQUEST_AUTHZ
///       action: ALLOW
///       httpRules:
///         - to:
///             operations:
///               - mcp:
///                   baseProtocolMethodsOption: MATCH_BASE_PROTOCOL_METHODS
///                   methods:
///                     - name: tools
///                     - name: tools/call
///                       params:
///                         - exact: foo
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
/// ## Import
///
/// AuthzPolicy can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/authzPolicies/{{name}}`
/// * `{{project}}/{{location}}/{{name}}`
/// * `{{location}}/{{name}}`
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, AuthzPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networksecurity/authzPolicy:AuthzPolicy default projects/{{project}}/locations/{{location}}/authzPolicies/{{name}}
/// $ pulumi import gcp:networksecurity/authzPolicy:AuthzPolicy default {{project}}/{{location}}/{{name}}
/// $ pulumi import gcp:networksecurity/authzPolicy:AuthzPolicy default {{location}}/{{name}}
/// $ pulumi import gcp:networksecurity/authzPolicy:AuthzPolicy default {{name}}
/// ```
class AuthzPolicy extends pulumi.CustomResource {
  /// When the action is CUSTOM, customProvider must be specified.
  /// When the action is ALLOW, only requests matching the policy will be allowed.
  /// When the action is DENY, only requests matching the policy will be denied.
  /// When a request arrives, the policies are evaluated in the following order:
  /// 1. If there is a CUSTOM policy that matches the request, the CUSTOM policy is evaluated using the custom authorization providers and the request is denied if the provider rejects the request.
  /// 2. If there are any DENY policies that match the request, the request is denied.
  /// 3. If there are no ALLOW policies for the resource or if any of the ALLOW policies match the request, the request is allowed.
  /// 4. Else the request is denied by default if none of the configured AuthzPolicies with ALLOW action match the request.
  /// Possible values are: `ALLOW`, `DENY`, `CUSTOM`.
  late final pulumi.Output<String> action;
  /// The timestamp when the resource was created.
  late final pulumi.Output<String> createTime;
  /// Required if the action is CUSTOM. Allows delegating authorization decisions to Cloud IAP or to Service Extensions. One of cloudIap or authzExtension must be specified.
  /// Structure is documented below.
  late final pulumi.Output<AuthzPolicyCustomProvider?> customProvider;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A human-readable description of the resource.
  late final pulumi.Output<String?> description;
  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;
  /// A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// Limited to 5 rules.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> httpRules;
  /// Set of labels associated with the AuthzExtension resource.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effectiveLabels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;
  /// The location of the resource.
  late final pulumi.Output<String> location;
  /// Identifier. Name of the AuthzPolicy resource.
  late final pulumi.Output<String> name;
  /// A list of authorization HTTP rules to match against the incoming request.A policy match occurs when at least one HTTP rule matches the request or when no HTTP rules are specified in the policy. At least one HTTP Rule is required for Allow or Deny Action.
  /// Limited to 5 rules.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>?> networkRules;
  /// Defines the type of authorization being performed. `REQUEST_AUTHZ` applies to request authorization. CUSTOM
  /// authorization policies with Authz extensions will be allowed with extAuthz or extProc protocols. Extensions are
  /// invoked only once when the request headers arrive. `CONTENT_AUTHZ` applies to content security, sanitization, etc.
  /// Only CUSTOM action is allowed in this policy profile. AuthzExtensions in the custom provider must support extProc
  /// protocol and be capable of receiving all extProc events (REQUEST_HEADERS, REQUEST_BODY, REQUEST_TRAILERS,
  /// RESPONSE_HEADERS, RESPONSE_BODY, RESPONSE_TRAILERS) with FULL_DUPLEX_STREAMED body send mode.
  /// Possible values are: `REQUEST_AUTHZ`, `CONTENT_AUTHZ`.
  late final pulumi.Output<String> policyProfile;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;
  /// Specifies the set of resources to which this policy should be applied to.
  /// Structure is documented below.
  late final pulumi.Output<AuthzPolicyTarget> target;
  /// The timestamp when the resource was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AuthzPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AuthzPolicy]. {@macro pulumi_networksecurity_authz_policy_authz_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AuthzPolicy(
    String name, {
    AuthzPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/authzPolicy:AuthzPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    customProvider = registerOutput<AuthzPolicyCustomProvider?>('customProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthzPolicyCustomProvider.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    httpRules = registerOutput<List<Map<String, dynamic>>?>('httpRules');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkRules = registerOutput<List<Map<String, dynamic>>?>('networkRules');
    policyProfile = registerOutput<String>('policyProfile');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    target = registerOutput<AuthzPolicyTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthzPolicyTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AuthzPolicy] resource's state with the given [name] and [id].
  static AuthzPolicy get(
    String name,
    pulumi.Input<String> id, {
    AuthzPolicyState? state,
  }) {
    return AuthzPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AuthzPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networksecurity/authzPolicy:AuthzPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    action = registerOutput<String>('action');
    createTime = registerOutput<String>('createTime');
    customProvider = registerOutput<AuthzPolicyCustomProvider?>('customProvider', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthzPolicyCustomProvider.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    effectiveLabels = registerOutput<Map<String, String>>('effectiveLabels');
    httpRules = registerOutput<List<Map<String, dynamic>>?>('httpRules');
    labels = registerOutput<Map<String, String>?>('labels');
    location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    networkRules = registerOutput<List<Map<String, dynamic>>?>('networkRules');
    policyProfile = registerOutput<String>('policyProfile');
    project = registerOutput<String>('project');
    pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    target = registerOutput<AuthzPolicyTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AuthzPolicyTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    updateTime = registerOutput<String>('updateTime');
  }
}
