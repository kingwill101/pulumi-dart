import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_policy_args.dart';
import 'access_policy_state.dart';

/// AccessPolicy is a container for AccessLevels (which define the necessary
/// attributes to use GCP services) and ServicePerimeters (which define
/// regions of services able to freely pass data within a perimeter). An
/// access policy is globally visible within an organization, and the
/// restrictions it specifies apply to all projects within an organization.
///
///
/// To get more information about AccessPolicy, see:
///
/// * [API documentation](https://cloud.google.com/access-context-manager/docs/reference/rest/v1/accessPolicies)
/// * How-to Guides
/// * [Access Policy Quickstart](https://cloud.google.com/access-context-manager/docs/quickstart)
///
/// &gt; **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billingProject` and set `userProjectOverride` to true
/// in the provider configuration. Otherwise the ACM API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billingProject` you defined.
///
/// &gt; **Note:** When importing this resource by ID, use only the numeric access policy ID
/// (for example, `123456789`) and omit the `accessPolicies/` prefix.
///
/// ## Example Usage
///
/// ### Access Context Manager Access Policy Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
///     parent: "organizations/123456789",
///     title: "Org Access Policy",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
///     parent="organizations/123456789",
///     title="Org Access Policy")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
///     {
///         Parent = "organizations/123456789",
///         Title = "Org Access Policy",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// 			Parent: pulumi.String("organizations/123456789"),
/// 			Title:  pulumi.String("Org Access Policy"),
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
/// resource "gcp_accesscontextmanager_accesspolicy" "access-policy" {
///   parent = "organizations/123456789"
///   title  = "Org Access Policy"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
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
///         var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
///             .parent("organizations/123456789")
///             .title("Org Access Policy")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   access-policy:
///     type: gcp:accesscontextmanager:AccessPolicy
///     properties:
///       parent: organizations/123456789
///       title: Org Access Policy
/// ```
///
/// ### Access Context Manager Access Policy Scoped
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = new gcp.organizations.Project("project", {
///     projectId: "my-project-name",
///     name: "my-project-name",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const access_policy = new gcp.accesscontextmanager.AccessPolicy("access-policy", {
///     parent: "organizations/123456789",
///     title: "Scoped Access Policy",
///     scopes: pulumi.interpolate`projects/${project.number}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.Project("project",
///     project_id="my-project-name",
///     name="my-project-name",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// access_policy = gcp.accesscontextmanager.AccessPolicy("access-policy",
///     parent="organizations/123456789",
///     title="Scoped Access Policy",
///     scopes=project.number.apply(lambda number: f"projects/{number}"))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = new Gcp.Organizations.Project("project", new()
///     {
///         ProjectId = "my-project-name",
///         Name = "my-project-name",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var access_policy = new Gcp.AccessContextManager.AccessPolicy("access-policy", new()
///     {
///         Parent = "organizations/123456789",
///         Title = "Scoped Access Policy",
///         Scopes = project.Number.Apply(number => $"projects/{number}"),
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/accesscontextmanager"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.NewProject(ctx, "project", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("my-project-name"),
/// 			Name:           pulumi.String("my-project-name"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = accesscontextmanager.NewAccessPolicy(ctx, "access-policy", &accesscontextmanager.AccessPolicyArgs{
/// 			Parent: pulumi.String("organizations/123456789"),
/// 			Title:  pulumi.String("Scoped Access Policy"),
/// 			Scopes: project.Number.ApplyT(func(number string) (string, error) {
/// 				return fmt.Sprintf("projects/%v", number), nil
/// 			}).(pulumi.StringOutput),
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
/// resource "gcp_organizations_project" "project" {
///   project_id      = "my-project-name"
///   name            = "my-project-name"
///   org_id          = "123456789"
///   deletion_policy = "DELETE"
/// }
/// resource "gcp_accesscontextmanager_accesspolicy" "access-policy" {
///   parent = "organizations/123456789"
///   title  = "Scoped Access Policy"
///   scopes ="projects/${gcp_organizations_project.project.number}"
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
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicy;
/// import com.pulumi.gcp.accesscontextmanager.AccessPolicyArgs;
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
///             .projectId("my-project-name")
///             .name("my-project-name")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var access_policy = new AccessPolicy("access-policy", AccessPolicyArgs.builder()
///             .parent("organizations/123456789")
///             .title("Scoped Access Policy")
///             .scopes(project.number().applyValue(_number -> String.format("projects/%s", _number)))
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
///       projectId: my-project-name
///       name: my-project-name
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   access-policy:
///     type: gcp:accesscontextmanager:AccessPolicy
///     properties:
///       parent: organizations/123456789
///       title: Scoped Access Policy
///       scopes: projects/${project.number}
/// ```
///
///
/// ## Import
///
/// AccessPolicy can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, AccessPolicy can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:accesscontextmanager/accessPolicy:AccessPolicy default {{name}}
/// ```
class AccessPolicy extends pulumi.CustomResource {
  /// Time the AccessPolicy was created in UTC.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// Resource name of the AccessPolicy. Format: '{{policy_id}}'
  late final pulumi.Output<String> name;
  /// The parent of this AccessPolicy in the Cloud Resource Hierarchy.
  /// Format: 'organizations/{{organization_id}}'
  late final pulumi.Output<String> parent;
  /// Folder or project on which this policy is applicable.
  /// Format: 'folders/{{folder_id}}' or 'projects/{{project_number}}'
  late final pulumi.Output<String?> scopes;
  /// Human readable title. Does not affect behavior.
  late final pulumi.Output<String> title;
  /// Time the AccessPolicy was updated in UTC.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [AccessPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccessPolicy]. {@macro pulumi_accesscontextmanager_access_policy_access_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccessPolicy(
    String name, {
    AccessPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/accessPolicy:AccessPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '9.35.1').merge(options),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    scopes = registerOutput<String?>('scopes');
    title = registerOutput<String>('title');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [AccessPolicy] resource's state with the given [name] and [id].
  static AccessPolicy get(
    String name,
    pulumi.Input<String> id, {
    AccessPolicyState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccessPolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccessPolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:accesscontextmanager/accessPolicy:AccessPolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    scopes = registerOutput<String?>('scopes');
    title = registerOutput<String>('title');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Creates a typed reference to an existing [AccessPolicy] resource.
  AccessPolicy.reference(String urn)
    : super(
        'gcp:accesscontextmanager/accessPolicy:AccessPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    this.name = registerOutput<String>('name');
    parent = registerOutput<String>('parent');
    scopes = registerOutput<String?>('scopes');
    title = registerOutput<String>('title');
    updateTime = registerOutput<String>('updateTime');
  }
}
