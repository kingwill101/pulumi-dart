import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_ancestry_args.dart';
import 'get_ancestry_result.dart';
import 'get_iam_custom_role_args.dart';
import 'get_iam_custom_role_result.dart';
import 'get_iam_custom_roles_args.dart';
import 'get_iam_custom_roles_result.dart';
import 'get_iam_policy_args.dart';
import 'get_iam_policy_result.dart';
import 'get_organization_policy_args.dart';
import 'get_organization_policy_result.dart';
import 'get_project_args.dart';
import 'get_project_result.dart';
import 'get_project_service_args.dart';
import 'get_project_service_result.dart';

/// Retrieve the ancestors for a project.
/// See the [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/getAncestry) for more details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.projects.getAncestry({
///     project: "example-project",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.projects.get_ancestry(project="example-project")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.Projects.GetAncestry.Invoke(new()
///     {
///         Project = "example-project",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.GetAncestry(ctx, &projects.GetAncestryArgs{
/// 			Project: pulumi.StringRef("example-project"),
/// 		}, nil)
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
/// data "gcp_projects_getancestry" "example" {
///   project = "example-project"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.projects.inputs.GetAncestryArgs;
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
///         final var example = ProjectsFunctions.getAncestry(GetAncestryArgs.builder()
///             .project("example-project")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:projects:getAncestry
///       arguments:
///         project: example-project
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_projects_get_ancestry_get_ancestry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAncestryResult> getAncestry(
  GetAncestryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getAncestry:getAncestry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAncestryResult.fromMap(result);
}

/// Get information about a Google Cloud Project IAM Custom Role. Note that you must have the `roles/iam.roleViewer` role (or equivalent permissions) at the project level to use this datasource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.projects.getIamCustomRole({
///     project: "your-project-id",
///     roleId: "your-role-id",
/// });
/// const project = new gcp.projects.IAMMember("project", {
///     project: "your-project-id",
///     role: example.then(example => example.name),
///     member: "user:jane@example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.projects.get_iam_custom_role(project="your-project-id",
///     role_id="your-role-id")
/// project = gcp.projects.IAMMember("project",
///     project="your-project-id",
///     role=example.name,
///     member="user:jane@example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.Projects.GetIamCustomRole.Invoke(new()
///     {
///         Project = "your-project-id",
///         RoleId = "your-role-id",
///     });
///
///     var project = new Gcp.Projects.IAMMember("project", new()
///     {
///         Project = "your-project-id",
///         Role = example.Apply(getIamCustomRoleResult => getIamCustomRoleResult.Name),
///         Member = "user:jane@example.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := projects.GetIamCustomRole(ctx, &projects.GetIamCustomRoleArgs{
/// 			Project: pulumi.StringRef("your-project-id"),
/// 			RoleId:  "your-role-id",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "project", &projects.IAMMemberArgs{
/// 			Project: pulumi.String("your-project-id"),
/// 			Role:    pulumi.String(example.Name),
/// 			Member:  pulumi.String("user:jane@example.com"),
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
/// data "gcp_projects_getiamcustomrole" "example" {
///   project = "your-project-id"
///   role_id = "your-role-id"
/// }
///
/// resource "gcp_projects_iammember" "project" {
///   project = "your-project-id"
///   role    = data.gcp_projects_getiamcustomrole.example.name
///   member  = "user:jane@example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.projects.inputs.GetIamCustomRoleArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
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
///         final var example = ProjectsFunctions.getIamCustomRole(GetIamCustomRoleArgs.builder()
///             .project("your-project-id")
///             .roleId("your-role-id")
///             .build());
///
///         var project = new IAMMember("project", IAMMemberArgs.builder()
///             .project("your-project-id")
///             .role(example.name())
///             .member("user:jane@example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project:
///     type: gcp:projects:IAMMember
///     properties:
///       project: your-project-id
///       role: ${example.name}
///       member: user:jane@example.com
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:projects:getIamCustomRole
///       arguments:
///         project: your-project-id
///         roleId: your-role-id
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_projects_get_iam_custom_role_get_iam_custom_role_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamCustomRoleResult> getIamCustomRole(
  GetIamCustomRoleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamCustomRole:getIamCustomRole',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRoleResult.fromMap(result);
}

/// Get information about Google Cloud IAM Custom Roles from a project.
/// Note that you must have the `roles/iam.roleViewer`.
/// See [the official documentation](https://cloud.google.com/iam/docs/creating-custom-roles)
/// and [API](https://cloud.google.com/iam/docs/reference/rest/v1/projects.roles/list).
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = gcp.projects.getIamCustomRoles({
///     project: "your-project-id",
///     showDeleted: true,
///     view: "FULL",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.projects.get_iam_custom_roles(project="your-project-id",
///     show_deleted=True,
///     view="FULL")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Gcp.Projects.GetIamCustomRoles.Invoke(new()
///     {
///         Project = "your-project-id",
///         ShowDeleted = true,
///         View = "FULL",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.GetIamCustomRoles(ctx, &projects.GetIamCustomRolesArgs{
/// 			Project:     pulumi.StringRef("your-project-id"),
/// 			ShowDeleted: pulumi.BoolRef(true),
/// 			View:        pulumi.StringRef("FULL"),
/// 		}, nil)
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
/// data "gcp_projects_getiamcustomroles" "example" {
///   project      = "your-project-id"
///   show_deleted = true
///   view         = "FULL"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.projects.inputs.GetIamCustomRolesArgs;
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
///         final var example = ProjectsFunctions.getIamCustomRoles(GetIamCustomRolesArgs.builder()
///             .project("your-project-id")
///             .showDeleted(true)
///             .view("FULL")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   example:
///     fn::invoke:
///       function: gcp:projects:getIamCustomRoles
///       arguments:
///         project: your-project-id
///         showDeleted: true
///         view: FULL
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_projects_get_iam_custom_roles_get_iam_custom_roles_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamCustomRolesResult> getIamCustomRoles(
  GetIamCustomRolesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamCustomRoles:getIamCustomRoles',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamCustomRolesResult.fromMap(result);
}

/// Retrieves the current IAM policy data for a project.
///
/// ## example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.projects.getIamPolicy({
///     project: "myproject",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.projects.get_iam_policy(project="myproject")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Projects.GetIamPolicy.Invoke(new()
///     {
///         Project = "myproject",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.GetIamPolicy(ctx, &projects.GetIamPolicyArgs{
/// 			Project: "myproject",
/// 		}, nil)
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
/// data "gcp_projects_getiampolicy" "policy" {
///   project = "myproject"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.projects.inputs.GetIamPolicyArgs;
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
///         final var policy = ProjectsFunctions.getIamPolicy(GetIamPolicyArgs.builder()
///             .project("myproject")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:projects:getIamPolicy
///       arguments:
///         project: myproject
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_projects_get_iam_policy_get_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetIamPolicyResult> getIamPolicy(
  GetIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getIamPolicy:getIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetIamPolicyResult.fromMap(result);
}

/// Allows management of Organization policies for a Google Project. For more information see
/// [the official
/// documentation](https://docs.cloud.google.com/resource-manager/docs/organization-policy/overview)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const policy = gcp.projects.getOrganizationPolicy({
///     project: "project-id",
///     constraint: "constraints/serviceuser.services",
/// });
/// export const version = policy.then(policy => policy.version);
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// policy = gcp.projects.get_organization_policy(project="project-id",
///     constraint="constraints/serviceuser.services")
/// pulumi.export("version", policy.version)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var policy = Gcp.Projects.GetOrganizationPolicy.Invoke(new()
///     {
///         Project = "project-id",
///         Constraint = "constraints/serviceuser.services",
///     });
///
///     return new Dictionary<string, object?>
///     {
///         ["version"] = policy.Apply(getOrganizationPolicyResult => getOrganizationPolicyResult.Version),
///     };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		policy, err := projects.LookupOrganizationPolicy(ctx, &projects.LookupOrganizationPolicyArgs{
/// 			Project:    "project-id",
/// 			Constraint: "constraints/serviceuser.services",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ctx.Export("version", policy.Version)
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
/// data "gcp_projects_getorganizationpolicy" "policy" {
///   project    = "project-id"
///   constraint = "constraints/serviceuser.services"
/// }
///
/// output "version" {
///   value = data.gcp_projects_getorganizationpolicy.policy.version
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.projects.inputs.GetOrganizationPolicyArgs;
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
///         final var policy = ProjectsFunctions.getOrganizationPolicy(GetOrganizationPolicyArgs.builder()
///             .project("project-id")
///             .constraint("constraints/serviceuser.services")
///             .build());
///
///         ctx.export("version", policy.version());
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   policy:
///     fn::invoke:
///       function: gcp:projects:getOrganizationPolicy
///       arguments:
///         project: project-id
///         constraint: constraints/serviceuser.services
/// outputs:
///   version: ${policy.version}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_projects_get_organization_policy_get_organization_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationPolicyResult> getOrganizationPolicy(
  GetOrganizationPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getOrganizationPolicy:getOrganizationPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationPolicyResult.fromMap(result);
}

/// Retrieve information about a set of projects based on a filter. See the
/// [REST API](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/list)
/// for more details.
///
/// ## Example Usage
///
/// ### Searching For Projects About To Be Deleted In An Org
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_org_projects = gcp.projects.getProject({
///     filter: "parent.id:012345678910 lifecycleState:DELETE_REQUESTED",
/// });
/// const deletion_candidate = my_org_projects.then(my_org_projects => gcp.organizations.getProject({
///     projectId: my_org_projects.projects?.[0]?.projectId,
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_org_projects = gcp.projects.get_project(filter="parent.id:012345678910 lifecycleState:DELETE_REQUESTED")
/// deletion_candidate = gcp.organizations.get_project(project_id=my_org_projects.projects[0].project_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_org_projects = Gcp.Projects.GetProject.Invoke(new()
///     {
///         Filter = "parent.id:012345678910 lifecycleState:DELETE_REQUESTED",
///     });
///
///     var deletion_candidate = Gcp.Organizations.GetProject.Invoke(new()
///     {
///         ProjectId = my_org_projects.Apply(getProjectResult => getProjectResult.Projects[0]?.ProjectId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		my_org_projects, err := projects.GetProject(ctx, &projects.GetProjectArgs{
/// 			Filter: "parent.id:012345678910 lifecycleState:DELETE_REQUESTED",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = organizations.LookupProject(ctx, &organizations.LookupProjectArgs{
/// 			ProjectId: pulumi.StringRef(my_org_projects.Projects[0].ProjectId),
/// 		}, nil)
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
/// data "gcp_projects_getproject" "my-org-projects" {
///   filter = "parent.id:012345678910 lifecycleState:DELETE_REQUESTED"
/// }
/// data "gcp_organizations_getproject" "deletion-candidate" {
///   project_id = data.gcp_projects_getproject.my-org-projects.projects[0].project_id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
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
///         final var my-org-projects = ProjectsFunctions.getProject(com.pulumi.gcp.projects.inputs.GetProjectArgs.builder()
///             .filter("parent.id:012345678910 lifecycleState:DELETE_REQUESTED")
///             .build());
///
///         final var deletion-candidate = OrganizationsFunctions.getProject(com.pulumi.gcp.organizations.inputs.GetProjectArgs.builder()
///             .projectId(my_org_projects.projects()[0].projectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-org-projects:
///     fn::invoke:
///       function: gcp:projects:getProject
///       arguments:
///         filter: parent.id:012345678910 lifecycleState:DELETE_REQUESTED
///   deletion-candidate:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments:
///         projectId: ${["my-org-projects"].projects[0].projectId}
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_projects_get_project_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getProject:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

/// Verify the API service for the Google Cloud Platform project to see if it is enabled or not.
///
/// For a list of services available, visit the [API library page](https://console.cloud.google.com/apis/library)
/// or run `gcloud services list --available`.
///
/// This datasource requires the [Service Usage API](https://console.cloud.google.com/apis/library/serviceusage.googleapis.com)
/// to use.
///
///
/// To get more information about `gcp.projects.Service`, see:
///
/// * [API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1/services)
/// * How-to Guides
/// * [Enabling and Disabling Services](https://cloud.google.com/service-usage/docs/enable-disable)
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_project_service = gcp.projects.getProjectService({
///     service: "my-project-service",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_project_service = gcp.projects.get_project_service(service="my-project-service")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var my_project_service = Gcp.Projects.GetProjectService.Invoke(new()
///     {
///         Service = "my-project-service",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := projects.GetProjectService(ctx, &projects.GetProjectServiceArgs{
/// 			Service: "my-project-service",
/// 		}, nil)
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
/// data "gcp_projects_getprojectservice" "my-project-service" {
///   service = "my-project-service"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.projects.ProjectsFunctions;
/// import com.pulumi.gcp.projects.inputs.GetProjectServiceArgs;
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
///         final var my-project-service = ProjectsFunctions.getProjectService(GetProjectServiceArgs.builder()
///             .service("my-project-service")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   my-project-service:
///     fn::invoke:
///       function: gcp:projects:getProjectService
///       arguments:
///         service: my-project-service
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_projects_get_project_service_get_project_service_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectServiceResult> getProjectService(
  GetProjectServiceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:projects/getProjectService:getProjectService',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectServiceResult.fromMap(result);
}
