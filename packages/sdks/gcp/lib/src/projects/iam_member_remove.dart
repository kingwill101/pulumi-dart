import 'package:pulumi/pulumi.dart' as pulumi;
import 'iam_member_remove_args.dart';
import 'iam_member_remove_state.dart';

/// Ensures that a member:role pairing does not exist in a project's IAM policy.
///
/// On create, this resource will modify the policy to remove the `member` from the
/// `role`. If the membership is ever re-added, the next refresh will clear this
/// resource from state, proposing re-adding it to correct the membership. Import is
/// not supported- this resource will acquire the current policy and modify it as
/// part of creating the resource.
///
/// This resource will conflict with `gcp.projects.IAMPolicy` and
/// `gcp.projects.IAMBinding` resources that share a role, as well as
/// `gcp.projects.IAMMember` resources that target the same membership. When
/// multiple resources conflict the final state is not guaranteed to include or omit
/// the membership. Subsequent `pulumi up` calls will always show a diff
/// until the configuration is corrected.
///
/// For more information see
/// [the official documentation](https://cloud.google.com/iam/docs/granting-changing-revoking-access)
/// and
/// [API reference](https://docs.cloud.google.com/resource-manager/reference/rest/v1/projects/setIamPolicy).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const targetProject = gcp.organizations.getProject({});
/// const foo = new gcp.projects.IamMemberRemove("foo", {
///     role: "roles/editor",
///     project: targetProjectGoogleProject.projectId,
///     member: `serviceAccount:${targetProjectGoogleProject.number}-compute@developer.gserviceaccount.com`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// target_project = gcp.organizations.get_project()
/// foo = gcp.projects.IamMemberRemove("foo",
///     role="roles/editor",
///     project=target_project_google_project["projectId"],
///     member=f"serviceAccount:{target_project_google_project['number']}-compute@developer.gserviceaccount.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var targetProject = Gcp.Organizations.GetProject.Invoke();
///
///     var foo = new Gcp.Projects.IamMemberRemove("foo", new()
///     {
///         Role = "roles/editor",
///         Project = targetProjectGoogleProject.ProjectId,
///         Member = $"serviceAccount:{targetProjectGoogleProject.Number}-compute@developer.gserviceaccount.com",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIamMemberRemove(ctx, "foo", &projects.IamMemberRemoveArgs{
/// 			Role:    pulumi.String("roles/editor"),
/// 			Project: pulumi.Any(targetProjectGoogleProject.ProjectId),
/// 			Member:  pulumi.Sprintf("serviceAccount:%v-compute@developer.gserviceaccount.com", targetProjectGoogleProject.Number),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.projects.IamMemberRemove;
/// import com.pulumi.gcp.projects.IamMemberRemoveArgs;
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
///         final var targetProject = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var foo = new IamMemberRemove("foo", IamMemberRemoveArgs.builder()
///             .role("roles/editor")
///             .project(targetProjectGoogleProject.projectId())
///             .member(String.format("serviceAccount:%s-compute@developer.gserviceaccount.com", targetProjectGoogleProject.number()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: gcp:projects:IamMemberRemove
///     properties:
///       role: roles/editor
///       project: ${targetProjectGoogleProject.projectId}
///       member: serviceAccount:${targetProjectGoogleProject.number}-compute@developer.gserviceaccount.com
/// variables:
///   targetProject:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
class IamMemberRemove extends pulumi.CustomResource {
  /// The IAM principal that should not have the target role.
  /// Each entry can have one of the following values:
  /// * **user:{emailid}**: An email address that represents a specific Google account. For example, alice@gmail.com or joe@example.com.
  /// * **serviceAccount:{emailid}**: An email address that represents a service account. For example, my-other-app@appspot.gserviceaccount.com.
  /// * **group:{emailid}**: An email address that represents a Google group. For example, admins@example.com.
  /// * **domain:{domain}**: A G Suite domain (primary, instead of alias) name that represents all the users of that domain. For example, google.com or example.com.
  late final pulumi.Output<String> member;
  /// The project id of the target project.
  late final pulumi.Output<String> project;
  /// The target role that should be removed.
  late final pulumi.Output<String> role;

  /// Creates a new [IamMemberRemove].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IamMemberRemove]. {@macro pulumi_projects_iam_member_remove_iam_member_remove_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IamMemberRemove(
    String name, {
    IamMemberRemoveArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/iamMemberRemove:IamMemberRemove',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }

  /// Gets an existing [IamMemberRemove] resource's state with the given [name] and [id].
  static IamMemberRemove get(
    String name,
    pulumi.Input<String> id, {
    IamMemberRemoveState? state,
  }) {
    return IamMemberRemove._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IamMemberRemove._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:projects/iamMemberRemove:IamMemberRemove',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    member = registerOutput<String>('member');
    project = registerOutput<String>('project');
    role = registerOutput<String>('role');
  }
}
