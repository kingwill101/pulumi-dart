import 'package:pulumi/pulumi.dart' as pulumi;
import 'deny_policy_args.dart';
import 'deny_policy_rule.dart';
import 'deny_policy_state.dart';

/// Represents a collection of denial policies to apply to a given resource.
///
///
/// To get more information about DenyPolicy, see:
///
/// * [API documentation](https://cloud.google.com/iam/docs/reference/rest/v2/policies)
/// * How-to Guides
/// * [Permissions supported in deny policies](https://cloud.google.com/iam/docs/deny-permissions-support)
///
/// ## Example Usage
///
/// ### Iam Deny Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "my-project",
///     name: "my-project",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const test_account = new gcp.serviceaccount.Account("test-account", {
///     accountId: "svc-acc",
///     displayName: "Test Service Account",
///     project: project.projectId,
/// });
/// const example = new gcp.iam.DenyPolicy("example", {
///     parent: std.urlencodeOutput({
///         input: pulumi.interpolate`cloudresourcemanager.googleapis.com/projects/${project.projectId}`,
///     }).result,
///     name: "my-deny-policy",
///     displayName: "A deny rule",
///     rules: [
///         {
///             description: "First rule",
///             denyRule: {
///                 deniedPrincipals: ["principalSet://goog/public:all"],
///                 denialCondition: {
///                     title: "Some expr",
///                     expression: "!resource.matchTag('12345678/env', 'test')",
///                 },
///                 deniedPermissions: ["cloudresourcemanager.googleapis.com/projects.update"],
///             },
///         },
///         {
///             description: "Second rule",
///             denyRule: {
///                 deniedPrincipals: ["principalSet://goog/public:all"],
///                 denialCondition: {
///                     title: "Some expr",
///                     expression: "!resource.matchTag('12345678/env', 'test')",
///                 },
///                 deniedPermissions: ["cloudresourcemanager.googleapis.com/projects.update"],
///                 exceptionPrincipals: [pulumi.interpolate`principal://iam.googleapis.com/projects/-/serviceAccounts/${test_account.email}`],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// project = gcp.organizations.Project("project",
///     project_id="my-project",
///     name="my-project",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// test_account = gcp.serviceaccount.Account("test-account",
///     account_id="svc-acc",
///     display_name="Test Service Account",
///     project=project.project_id)
/// example = gcp.iam.DenyPolicy("example",
///     parent=std.urlencode_output(input=project.project_id.apply(lambda project_id: f"cloudresourcemanager.googleapis.com/projects/{project_id}")).result,
///     name="my-deny-policy",
///     display_name="A deny rule",
///     rules=[
///         {
///             "description": "First rule",
///             "deny_rule": {
///                 "denied_principals": ["principalSet://goog/public:all"],
///                 "denial_condition": {
///                     "title": "Some expr",
///                     "expression": "!resource.matchTag('12345678/env', 'test')",
///                 },
///                 "denied_permissions": ["cloudresourcemanager.googleapis.com/projects.update"],
///             },
///         },
///         {
///             "description": "Second rule",
///             "deny_rule": {
///                 "denied_principals": ["principalSet://goog/public:all"],
///                 "denial_condition": {
///                     "title": "Some expr",
///                     "expression": "!resource.matchTag('12345678/env', 'test')",
///                 },
///                 "denied_permissions": ["cloudresourcemanager.googleapis.com/projects.update"],
///                 "exception_principals": [test_account.email.apply(lambda email: f"principal://iam.googleapis.com/projects/-/serviceAccounts/{email}")],
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "my-project",
///         Name = "my-project",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var test_account = new Gcp.ServiceAccount.Account("test-account", new()
///     {
///         AccountId = "svc-acc",
///         DisplayName = "Test Service Account",
///         Project = project.ProjectId,
///     });
///
///     var example = new Gcp.Iam.DenyPolicy("example", new()
///     {
///         Parent = Std.Urlencode.Invoke(new()
///         {
///             Input = project.ProjectId.Apply(projectId => $"cloudresourcemanager.googleapis.com/projects/{projectId}"),
///         }).Apply(invoke => invoke.Result),
///         Name = "my-deny-policy",
///         DisplayName = "A deny rule",
///         Rules = new[]
///         {
///             new Gcp.Iam.Inputs.DenyPolicyRuleArgs
///             {
///                 Description = "First rule",
///                 DenyRule = new Gcp.Iam.Inputs.DenyPolicyRuleDenyRuleArgs
///                 {
///                     DeniedPrincipals = new[]
///                     {
///                         "principalSet://goog/public:all",
///                     },
///                     DenialCondition = new Gcp.Iam.Inputs.DenyPolicyRuleDenyRuleDenialConditionArgs
///                     {
///                         Title = "Some expr",
///                         Expression = "!resource.matchTag('12345678/env', 'test')",
///                     },
///                     DeniedPermissions = new[]
///                     {
///                         "cloudresourcemanager.googleapis.com/projects.update",
///                     },
///                 },
///             },
///             new Gcp.Iam.Inputs.DenyPolicyRuleArgs
///             {
///                 Description = "Second rule",
///                 DenyRule = new Gcp.Iam.Inputs.DenyPolicyRuleDenyRuleArgs
///                 {
///                     DeniedPrincipals = new[]
///                     {
///                         "principalSet://goog/public:all",
///                     },
///                     DenialCondition = new Gcp.Iam.Inputs.DenyPolicyRuleDenyRuleDenialConditionArgs
///                     {
///                         Title = "Some expr",
///                         Expression = "!resource.matchTag('12345678/env', 'test')",
///                     },
///                     DeniedPermissions = new[]
///                     {
///                         "cloudresourcemanager.googleapis.com/projects.update",
///                     },
///                     ExceptionPrincipals = new[]
///                     {
///                         test_account.Email.Apply(email => $"principal://iam.googleapis.com/projects/-/serviceAccounts/{email}"),
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/iam"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project"),
/// 			Name:           pulumi.String("my-project"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test_account, err := serviceaccount.NewAccount(ctx, "test-account", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("svc-acc"),
/// 			DisplayName: pulumi.String("Test Service Account"),
/// 			Project:     project.ProjectId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = iam.NewDenyPolicy(ctx, "example", &iam.DenyPolicyArgs{
/// 			Parent: std.UrlencodeOutput(ctx, std.UrlencodeOutputArgs{
/// 				Input: project.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 					return fmt.Sprintf("cloudresourcemanager.googleapis.com/projects/%v", projectId), nil
/// 				}).(pulumi.StringOutput),
/// 			}, nil).Result(),
/// 			Name:        pulumi.String("my-deny-policy"),
/// 			DisplayName: pulumi.String("A deny rule"),
/// 			Rules: iam.DenyPolicyRuleArray{
/// 				&iam.DenyPolicyRuleArgs{
/// 					Description: pulumi.String("First rule"),
/// 					DenyRule: &iam.DenyPolicyRuleDenyRuleArgs{
/// 						DeniedPrincipals: pulumi.StringArray{
/// 							pulumi.String("principalSet://goog/public:all"),
/// 						},
/// 						DenialCondition: &iam.DenyPolicyRuleDenyRuleDenialConditionArgs{
/// 							Title:      pulumi.String("Some expr"),
/// 							Expression: pulumi.String("!resource.matchTag('12345678/env', 'test')"),
/// 						},
/// 						DeniedPermissions: pulumi.StringArray{
/// 							pulumi.String("cloudresourcemanager.googleapis.com/projects.update"),
/// 						},
/// 					},
/// 				},
/// 				&iam.DenyPolicyRuleArgs{
/// 					Description: pulumi.String("Second rule"),
/// 					DenyRule: &iam.DenyPolicyRuleDenyRuleArgs{
/// 						DeniedPrincipals: pulumi.StringArray{
/// 							pulumi.String("principalSet://goog/public:all"),
/// 						},
/// 						DenialCondition: &iam.DenyPolicyRuleDenyRuleDenialConditionArgs{
/// 							Title:      pulumi.String("Some expr"),
/// 							Expression: pulumi.String("!resource.matchTag('12345678/env', 'test')"),
/// 						},
/// 						DeniedPermissions: pulumi.StringArray{
/// 							pulumi.String("cloudresourcemanager.googleapis.com/projects.update"),
/// 						},
/// 						ExceptionPrincipals: pulumi.StringArray{
/// 							test_account.Email.ApplyT(func(email string) (string, error) {
/// 								return fmt.Sprintf("principal://iam.googleapis.com/projects/-/serviceAccounts/%v", email), nil
/// 							}).(pulumi.StringOutput),
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
///     std = {
///       source = "pulumi/std"
///     }
///   }
/// }
///
/// resource "gcp_organizations_project" "project" {
///   project_id      = "my-project"
///   name            = "my-project"
///   org_id          = "123456789"
///   billing_account = "000000-0000000-0000000-000000"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_iam_denypolicy" "example" {
///   parent       = urlencode("cloudresourcemanager.googleapis.com/projects/${gcp_organizations_project.project.project_id}")
///   name         = "my-deny-policy"
///   display_name = "A deny rule"
///   rules {
///     description = "First rule"
///     deny_rule = {
///       denied_principals = ["principalSet://goog/public:all"]
///       denial_condition = {
///         title      = "Some expr"
///         expression = "!resource.matchTag('12345678/env', 'test')"
///       }
///       denied_permissions = ["cloudresourcemanager.googleapis.com/projects.update"]
///     }
///   }
///   rules {
///     description = "Second rule"
///     deny_rule = {
///       denied_principals = ["principalSet://goog/public:all"]
///       denial_condition = {
///         title      = "Some expr"
///         expression = "!resource.matchTag('12345678/env', 'test')"
///       }
///       denied_permissions   = ["cloudresourcemanager.googleapis.com/projects.update"]
///       exception_principals = ["principal://iam.googleapis.com/projects/-/serviceAccounts/${gcp_serviceaccount_account.test-account.email}"]
///     }
///   }
/// }
/// resource "gcp_serviceaccount_account" "test-account" {
///   account_id   = "svc-acc"
///   display_name = "Test Service Account"
///   project      = gcp_organizations_project.project.project_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.iam.DenyPolicy;
/// import com.pulumi.gcp.iam.DenyPolicyArgs;
/// import com.pulumi.gcp.iam.inputs.DenyPolicyRuleArgs;
/// import com.pulumi.gcp.iam.inputs.DenyPolicyRuleDenyRuleArgs;
/// import com.pulumi.gcp.iam.inputs.DenyPolicyRuleDenyRuleDenialConditionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.UrlencodeArgs;
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
///         var project = new Project("project", ProjectArgs.builder()
///             .projectId("my-project")
///             .name("my-project")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var test_account = new Account("test-account", AccountArgs.builder()
///             .accountId("svc-acc")
///             .displayName("Test Service Account")
///             .project(project.projectId())
///             .build());
///
///         var example = new DenyPolicy("example", DenyPolicyArgs.builder()
///             .parent(StdFunctions.urlencode(UrlencodeArgs.builder()
///                 .input(project.projectId().applyValue(_projectId -> String.format("cloudresourcemanager.googleapis.com/projects/%s", _projectId)))
///                 .build()).applyValue(_invoke -> _invoke.result()))
///             .name("my-deny-policy")
///             .displayName("A deny rule")
///             .rules(
///                 DenyPolicyRuleArgs.builder()
///                     .description("First rule")
///                     .denyRule(DenyPolicyRuleDenyRuleArgs.builder()
///                         .deniedPrincipals("principalSet://goog/public:all")
///                         .denialCondition(DenyPolicyRuleDenyRuleDenialConditionArgs.builder()
///                             .title("Some expr")
///                             .expression("!resource.matchTag('12345678/env', 'test')")
///                             .build())
///                         .deniedPermissions("cloudresourcemanager.googleapis.com/projects.update")
///                         .build())
///                     .build(),
///                 DenyPolicyRuleArgs.builder()
///                     .description("Second rule")
///                     .denyRule(DenyPolicyRuleDenyRuleArgs.builder()
///                         .deniedPrincipals("principalSet://goog/public:all")
///                         .denialCondition(DenyPolicyRuleDenyRuleDenialConditionArgs.builder()
///                             .title("Some expr")
///                             .expression("!resource.matchTag('12345678/env', 'test')")
///                             .build())
///                         .deniedPermissions("cloudresourcemanager.googleapis.com/projects.update")
///                         .exceptionPrincipals(test_account.email().applyValue(_email -> String.format("principal://iam.googleapis.com/projects/-/serviceAccounts/%s", _email)))
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:organizations:Project
///     properties:
///       projectId: my-project
///       name: my-project
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   example:
///     type: gcp:iam:DenyPolicy
///     properties:
///       parent:
///         fn::invoke:
///           function: std:urlencode
///           arguments:
///             input: cloudresourcemanager.googleapis.com/projects/${project.projectId}
///           return: result
///       name: my-deny-policy
///       displayName: A deny rule
///       rules:
///         - description: First rule
///           denyRule:
///             deniedPrincipals:
///               - principalSet://goog/public:all
///             denialCondition:
///               title: Some expr
///               expression: '!resource.matchTag(''12345678/env'', ''test'')'
///             deniedPermissions:
///               - cloudresourcemanager.googleapis.com/projects.update
///         - description: Second rule
///           denyRule:
///             deniedPrincipals:
///               - principalSet://goog/public:all
///             denialCondition:
///               title: Some expr
///               expression: '!resource.matchTag(''12345678/env'', ''test'')'
///             deniedPermissions:
///               - cloudresourcemanager.googleapis.com/projects.update
///             exceptionPrincipals:
///               - principal://iam.googleapis.com/projects/-/serviceAccounts/${["test-account"].email}
///   test-account:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: svc-acc
///       displayName: Test Service Account
///       project: ${project.projectId}
/// ```
///
///
/// ## Import
///
/// DenyPolicy can be imported using any of these accepted formats:
///
/// * `{{parent}}/{{name}}`
///
///
/// When using the `pulumi import` command, DenyPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:iam/denyPolicy:DenyPolicy default {{parent}}/{{name}}
/// ```
class DenyPolicy extends pulumi.CustomResource {
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The display name of the rule.
  late final pulumi.Output<String?> displayName;
  /// The hash of the resource. Used internally during updates.
  late final pulumi.Output<String> etag;
  /// The name of the policy.
  late final pulumi.Output<String> name;
  /// The attachment point is identified by its URL-encoded full resource name.
  late final pulumi.Output<String> parent;
  /// Rules to be applied.
  /// Structure is documented below.
  late final pulumi.Output<List<DenyPolicyRule>> rules;

  /// Creates a new [DenyPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DenyPolicy]. {@macro pulumi_iam_deny_policy_deny_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DenyPolicy(
    String name, {
    DenyPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/denyPolicy:DenyPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.36.1').merge(options),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    rules = registerOutput<List<DenyPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyPolicyRule>(guardedValue, (value) => DenyPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [DenyPolicy] resource's state with the given [name] and [id].
  static DenyPolicy get(
    String name,
    pulumi.Input<String> id, {
    DenyPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DenyPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DenyPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:iam/denyPolicy:DenyPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    rules = registerOutput<List<DenyPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyPolicyRule>(guardedValue, (value) => DenyPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [DenyPolicy] resource.
  DenyPolicy.reference(String urn)
    : super(
        'gcp:iam/denyPolicy:DenyPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    deletionPolicy = registerOutput<String>('deletionPolicy');
    displayName = registerOutput<String?>('displayName');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    rules = registerOutput<List<DenyPolicyRule>>('rules', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<DenyPolicyRule>(guardedValue, (value) => DenyPolicyRule.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
