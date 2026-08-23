import 'package:pulumi/pulumi.dart' as pulumi;
import 'iamcustom_role_args.dart';
import 'iamcustom_role_state.dart';

/// Allows management of a customized Cloud IAM organization role. For more information see
/// [the official documentation](https://cloud.google.com/iam/docs/understanding-custom-roles)
/// and
/// [API](https://cloud.google.com/iam/reference/rest/v1/organizations.roles).
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
/// This snippet creates a customized IAM organization role.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_custom_role = new gcp.organizations.IAMCustomRole("my-custom-role", {
///     roleId: "myCustomRole",
///     orgId: "123456789",
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
/// my_custom_role = gcp.organizations.IAMCustomRole("my-custom-role",
///     role_id="myCustomRole",
///     org_id="123456789",
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
///     var my_custom_role = new Gcp.Organizations.IAMCustomRole("my-custom-role", new()
///     {
///         RoleId = "myCustomRole",
///         OrgId = "123456789",
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewIAMCustomRole(ctx, "my-custom-role", &organizations.IAMCustomRoleArgs{
/// 			RoleId:      pulumi.String("myCustomRole"),
/// 			OrgId:       pulumi.String("123456789"),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     gcp = {
///       source = "pulumi/gcp"
///     }
///   }
/// }
///
/// resource "gcp_organizations_iamcustomrole" "my-custom-role" {
///   role_id     = "myCustomRole"
///   org_id      = "123456789"
///   title       = "My Custom Role"
///   description = "A description"
///   permissions = ["iam.roles.list", "iam.roles.create", "iam.roles.delete"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.IAMCustomRole;
/// import com.pulumi.gcp.organizations.IAMCustomRoleArgs;
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
///         var my_custom_role = new IAMCustomRole("my-custom-role", IAMCustomRoleArgs.builder()
///             .roleId("myCustomRole")
///             .orgId("123456789")
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
///     type: gcp:organizations:IAMCustomRole
///     properties:
///       roleId: myCustomRole
///       orgId: '123456789'
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
/// Customized IAM organization role can be imported using their URI, e.g.
///
/// ```sh
/// $ pulumi import gcp:organizations/iAMCustomRole:IAMCustomRole my-custom-role organizations/123456789/roles/myCustomRole
/// ```
class IAMCustomRole extends pulumi.CustomResource {
  /// (Optional) The current deleted state of the role.
  late final pulumi.Output<bool> deleted;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to "DELETE".
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// A human-readable description for the role.
  late final pulumi.Output<String?> description;
  /// The name of the role in the format `organizations/{{org_id}}/roles/{{role_id}}`. Like `id`, this field can be used as a reference in other resources such as IAM role bindings.
  late final pulumi.Output<String> name;
  /// The numeric ID of the organization in which you want to create a custom role.
  late final pulumi.Output<String> orgId;
  /// The names of the permissions this role grants when bound in an IAM policy. At least one permission must be specified.
  late final pulumi.Output<List<String>> permissions;
  /// The role id to use for this role.
  late final pulumi.Output<String> roleId;
  /// The current launch stage of the role.
  /// Defaults to `GA`.
  /// List of possible stages is [here](https://cloud.google.com/iam/reference/rest/v1/organizations.roles#Role.RoleLaunchStage).
  late final pulumi.Output<String?> stage;
  /// A human-readable title for the role.
  late final pulumi.Output<String> title;

  /// Creates a new [IAMCustomRole].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IAMCustomRole]. {@macro pulumi_organizations_i_amcustom_role_iamcustom_role_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  IAMCustomRole(
    String name, {
    IAMCustomRoleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:organizations/iAMCustomRole:IAMCustomRole',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deleted = registerOutput<bool>('deleted');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    permissions = registerOutput<List<String>>('permissions');
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
          'gcp:organizations/iAMCustomRole:IAMCustomRole',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    deleted = registerOutput<bool>('deleted');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    orgId = registerOutput<String>('orgId');
    permissions = registerOutput<List<String>>('permissions');
    roleId = registerOutput<String>('roleId');
    stage = registerOutput<String?>('stage');
    title = registerOutput<String>('title');
  }
}
