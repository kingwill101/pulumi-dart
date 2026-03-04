import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_role_member_args.dart';
import 'directory_role_member_state.dart';

/// Manages a single directory role membership (assignment) within Azure Active Directory.
///
/// &gt; **Deprecation Warning:** This resource has been superseded by the azuread.DirectoryRoleAssignment resource and will be removed in version 3.0 of the AzureAD provider
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `RoleManagement.ReadWrite.Directory` or `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Privileged Role Administrator` or `Global Administrator`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const example = azuread.getUser({
///     userPrincipalName: "jdoe@example.com",
/// });
/// const exampleDirectoryRole = new azuread.DirectoryRole("example", {displayName: "Security administrator"});
/// const exampleDirectoryRoleMember = new azuread.DirectoryRoleMember("example", {
///     roleObjectId: exampleDirectoryRole.objectId,
///     memberObjectId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_user(user_principal_name="jdoe@example.com")
/// example_directory_role = azuread.DirectoryRole("example", display_name="Security administrator")
/// example_directory_role_member = azuread.DirectoryRoleMember("example",
///     role_object_id=example_directory_role.object_id,
///     member_object_id=example.object_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AzureAD.GetUser.Invoke(new()
///     {
///         UserPrincipalName = "jdoe@example.com",
///     });
///
///     var exampleDirectoryRole = new AzureAD.DirectoryRole("example", new()
///     {
///         DisplayName = "Security administrator",
///     });
///
///     var exampleDirectoryRoleMember = new AzureAD.DirectoryRoleMember("example", new()
///     {
///         RoleObjectId = exampleDirectoryRole.ObjectId,
///         MemberObjectId = example.Apply(getUserResult => getUserResult.ObjectId),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azuread/sdk/v6/go/azuread"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := azuread.LookupUser(ctx, &azuread.LookupUserArgs{
/// 			UserPrincipalName: pulumi.StringRef("jdoe@example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDirectoryRole, err := azuread.NewDirectoryRole(ctx, "example", &azuread.DirectoryRoleArgs{
/// 			DisplayName: pulumi.String("Security administrator"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewDirectoryRoleMember(ctx, "example", &azuread.DirectoryRoleMemberArgs{
/// 			RoleObjectId:   exampleDirectoryRole.ObjectId,
/// 			MemberObjectId: pulumi.String(example.ObjectId),
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
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.inputs.GetUserArgs;
/// import com.pulumi.azuread.DirectoryRole;
/// import com.pulumi.azuread.DirectoryRoleArgs;
/// import com.pulumi.azuread.DirectoryRoleMember;
/// import com.pulumi.azuread.DirectoryRoleMemberArgs;
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
///         final var example = AzureadFunctions.getUser(GetUserArgs.builder()
///             .userPrincipalName("jdoe@example.com")
///             .build());
///
///         var exampleDirectoryRole = new DirectoryRole("exampleDirectoryRole", DirectoryRoleArgs.builder()
///             .displayName("Security administrator")
///             .build());
///
///         var exampleDirectoryRoleMember = new DirectoryRoleMember("exampleDirectoryRoleMember", DirectoryRoleMemberArgs.builder()
///             .roleObjectId(exampleDirectoryRole.objectId())
///             .memberObjectId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleDirectoryRole:
///     type: azuread:DirectoryRole
///     name: example
///     properties:
///       displayName: Security administrator
///   exampleDirectoryRoleMember:
///     type: azuread:DirectoryRoleMember
///     name: example
///     properties:
///       roleObjectId: ${exampleDirectoryRole.objectId}
///       memberObjectId: ${example.objectId}
/// variables:
///   example:
///     fn::invoke:
///       function: azuread:getUser
///       arguments:
///         userPrincipalName: jdoe@example.com
/// ```
///
///
/// ## Import
///
/// Directory role members can be imported using the object ID of the role and the object ID of the member, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/directoryRoleMember:DirectoryRoleMember example 00000000-0000-0000-0000-000000000000/member/11111111-1111-1111-1111-111111111111
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the Directory Role Object ID and the target Member Object ID in the format `{RoleObjectID}/member/{MemberObjectID}`.
class DirectoryRoleMember extends pulumi.CustomResource {
  /// The object ID of the principal you want to add as a member to the directory role. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> memberObjectId;

  /// The object ID of the directory role you want to add the member to. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> roleObjectId;

  /// Creates a new [DirectoryRoleMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DirectoryRoleMember]. {@macro pulumi_index_directory_role_member_directory_role_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DirectoryRoleMember(
    String name, {
    DirectoryRoleMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/directoryRoleMember:DirectoryRoleMember',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    memberObjectId = registerOutput<String?>('memberObjectId');
    roleObjectId = registerOutput<String?>('roleObjectId');
  }

  /// Gets an existing [DirectoryRoleMember] resource's state with the given [name] and [id].
  static DirectoryRoleMember get(
    String name,
    pulumi.Input<String> id, {
    DirectoryRoleMemberState? state,
  }) {
    return DirectoryRoleMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  DirectoryRoleMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/directoryRoleMember:DirectoryRoleMember',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    memberObjectId = registerOutput<String?>('memberObjectId');
    roleObjectId = registerOutput<String?>('roleObjectId');
  }
}
