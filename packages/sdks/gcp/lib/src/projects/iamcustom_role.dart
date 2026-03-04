import 'package:pulumi/pulumi.dart' as pulumi;
import 'iamcustom_role_args.dart';
import 'iamcustom_role_state.dart';

/// Allows management of a customized Cloud IAM project role. For more information see
/// [the official documentation](https://cloud.google.com/iam/docs/understanding-custom-roles)
/// and
/// [API](https://cloud.google.com/iam/reference/rest/v1/projects.roles).
///
/// &gt; **Warning:** Note that custom roles in GCP have the concept of a soft-delete. There are two issues that may arise
/// from this and how roles are propagated. 1) creating a role may involve undeleting and then updating a role with the
/// same name, possibly causing confusing behavior between undelete and update. 2) A deleted role is permanently deleted
/// after 7 days, but it can take up to 30 more days (i.e. between 7 and 37 days after deletion) before the role name is
/// made available again. This means a deleted role that has been deleted for more than 7 days cannot be changed at all
/// by the provider, and new roles cannot share that name.
///
/// ## Example Usage
///
/// This snippet creates a customized IAM role.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_custom_role = new gcp.projects.IAMCustomRole("my-custom-role", {
///     roleId: "myCustomRole",
///     title: "My Custom Role",
///     description: "A description",
///     permissions: [
///         "iam.roles.list",
///         "iam.roles.create",
///         "iam.roles.delete",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_custom_role = gcp.projects.IAMCustomRole("my-custom-role",
///     role_id="myCustomRole",
///     title="My Custom Role",
///     description="A description",
///     permissions=[
///         "iam.roles.list",
///         "iam.roles.create",
///         "iam.roles.delete",
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
///     var my_custom_role = new Gcp.Projects.IAMCustomRole("my-custom-role", new()
///     {
///         RoleId = "myCustomRole",
///         Title = "My Custom Role",
///         Description = "A description",
///         Permissions = new[]
///         {
///             "iam.roles.list",
///             "iam.roles.create",
///             "iam.roles.delete",
///         },
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
/// 		_, err := projects.NewIAMCustomRole(ctx, "my-custom-role", &projects.IAMCustomRoleArgs{
/// 			RoleId:      pulumi.String("myCustomRole"),
/// 			Title:       pulumi.String("My Custom Role"),
/// 			Description: pulumi.String("A description"),
/// 			Permissions: pulumi.StringArray{
/// 				pulumi.String("iam.roles.list"),
/// 				pulumi.String("iam.roles.create"),
/// 				pulumi.String("iam.roles.delete"),
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
/// import com.pulumi.gcp.projects.IAMCustomRole;
/// import com.pulumi.gcp.projects.IAMCustomRoleArgs;
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
///         var my_custom_role = new IAMCustomRole("my-custom-role", IAMCustomRoleArgs.builder()
///             .roleId("myCustomRole")
///             .title("My Custom Role")
///             .description("A description")
///             .permissions(
///                 "iam.roles.list",
///                 "iam.roles.create",
///                 "iam.roles.delete")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   my-custom-role:
///     type: gcp:projects:IAMCustomRole
///     properties:
///       roleId: myCustomRole
///       title: My Custom Role
///       description: A description
///       permissions:
///         - iam.roles.list
///         - iam.roles.create
///         - iam.roles.delete
/// ```
///
///
/// ## Import
///
/// Custom Roles can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/roles/{{role_id}}`
///
/// * `{{project}}/{{role_id}}`
///
/// * `{{role_id}}`
///
/// When using the `pulumi import` command, Custom Roles can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:projects/iAMCustomRole:IAMCustomRole default projects/{{project}}/roles/{{role_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/iAMCustomRole:IAMCustomRole default {{project}}/{{role_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:projects/iAMCustomRole:IAMCustomRole default {{role_id}}
/// ```
class IAMCustomRole extends pulumi.CustomResource {
  /// (Optional) The current deleted state of the role.
  late final pulumi.Output<bool> deleted;

  /// A human-readable description for the role.
  late final pulumi.Output<String?> description;

  /// The name of the role in the format `projects/{{project}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  late final pulumi.Output<String> name;

  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  late final pulumi.Output<List<String>> permissions;

  /// The project that the custom role will be created in.
  /// Defaults to the provider project configuration.
  late final pulumi.Output<String> project;

  /// The camel case role id to use for this role. Cannot contain `-` characters.
  late final pulumi.Output<String> roleId;

  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  late final pulumi.Output<String?> stage;

  /// A human-readable title for the role.
  late final pulumi.Output<String> title;

  /// Creates a new [IAMCustomRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IAMCustomRole]. {@macro pulumi_projects_i_amcustom_role_iamcustom_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IAMCustomRole(
    String name, {
    IAMCustomRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:projects/iAMCustomRole:IAMCustomRole',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deleted = registerOutput<bool>('deleted');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<String>>('permissions');
    project = registerOutput<String>('project');
    roleId = registerOutput<String>('roleId');
    stage = registerOutput<String?>('stage');
    title = registerOutput<String>('title');
  }

  /// Gets an existing [IAMCustomRole] resource's state with the given [name] and [id].
  static IAMCustomRole get(
    String name,
    pulumi.Input<String> id, {
    IAMCustomRoleState? state,
  }) {
    return IAMCustomRole._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  IAMCustomRole._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:projects/iAMCustomRole:IAMCustomRole',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    deleted = registerOutput<bool>('deleted');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    permissions = registerOutput<List<String>>('permissions');
    project = registerOutput<String>('project');
    roleId = registerOutput<String>('roleId');
    stage = registerOutput<String?>('stage');
    title = registerOutput<String>('title');
  }
}
