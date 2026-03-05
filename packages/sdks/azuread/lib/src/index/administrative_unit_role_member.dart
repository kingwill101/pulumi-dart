import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_unit_role_member_args.dart';
import 'administrative_unit_role_member_state.dart';

/// Manages a single directory role assignment scoped to an administrative unit within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `AdministrativeUnit.ReadWrite.All` and `RoleManagement.ReadWrite.Directory`, or `Directory.ReadWrite.All`
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
/// const exampleAdministrativeUnit = new azuread.AdministrativeUnit("example", {displayName: "Example-AU"});
/// const exampleDirectoryRole = new azuread.DirectoryRole("example", {displayName: "Security administrator"});
/// const exampleAdministrativeUnitRoleMember = new azuread.AdministrativeUnitRoleMember("example", {
///     roleObjectId: exampleDirectoryRole.objectId,
///     administrativeUnitObjectId: exampleAdministrativeUnit.objectId,
///     memberObjectId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_user(user_principal_name="jdoe@example.com")
/// example_administrative_unit = azuread.AdministrativeUnit("example", display_name="Example-AU")
/// example_directory_role = azuread.DirectoryRole("example", display_name="Security administrator")
/// example_administrative_unit_role_member = azuread.AdministrativeUnitRoleMember("example",
///     role_object_id=example_directory_role.object_id,
///     administrative_unit_object_id=example_administrative_unit.object_id,
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
///     var exampleAdministrativeUnit = new AzureAD.AdministrativeUnit("example", new()
///     {
///         DisplayName = "Example-AU",
///     });
///
///     var exampleDirectoryRole = new AzureAD.DirectoryRole("example", new()
///     {
///         DisplayName = "Security administrator",
///     });
///
///     var exampleAdministrativeUnitRoleMember = new AzureAD.AdministrativeUnitRoleMember("example", new()
///     {
///         RoleObjectId = exampleDirectoryRole.ObjectId,
///         AdministrativeUnitObjectId = exampleAdministrativeUnit.ObjectId,
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
/// 		exampleAdministrativeUnit, err := azuread.NewAdministrativeUnit(ctx, "example", &azuread.AdministrativeUnitArgs{
/// 			DisplayName: pulumi.String("Example-AU"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleDirectoryRole, err := azuread.NewDirectoryRole(ctx, "example", &azuread.DirectoryRoleArgs{
/// 			DisplayName: pulumi.String("Security administrator"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewAdministrativeUnitRoleMember(ctx, "example", &azuread.AdministrativeUnitRoleMemberArgs{
/// 			RoleObjectId:               exampleDirectoryRole.ObjectId,
/// 			AdministrativeUnitObjectId: exampleAdministrativeUnit.ObjectId,
/// 			MemberObjectId:             pulumi.String(example.ObjectId),
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
/// import com.pulumi.azuread.AdministrativeUnit;
/// import com.pulumi.azuread.AdministrativeUnitArgs;
/// import com.pulumi.azuread.DirectoryRole;
/// import com.pulumi.azuread.DirectoryRoleArgs;
/// import com.pulumi.azuread.AdministrativeUnitRoleMember;
/// import com.pulumi.azuread.AdministrativeUnitRoleMemberArgs;
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
///         var exampleAdministrativeUnit = new AdministrativeUnit("exampleAdministrativeUnit", AdministrativeUnitArgs.builder()
///             .displayName("Example-AU")
///             .build());
///
///         var exampleDirectoryRole = new DirectoryRole("exampleDirectoryRole", DirectoryRoleArgs.builder()
///             .displayName("Security administrator")
///             .build());
///
///         var exampleAdministrativeUnitRoleMember = new AdministrativeUnitRoleMember("exampleAdministrativeUnitRoleMember", AdministrativeUnitRoleMemberArgs.builder()
///             .roleObjectId(exampleDirectoryRole.objectId())
///             .administrativeUnitObjectId(exampleAdministrativeUnit.objectId())
///             .memberObjectId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAdministrativeUnit:
///     type: azuread:AdministrativeUnit
///     name: example
///     properties:
///       displayName: Example-AU
///   exampleDirectoryRole:
///     type: azuread:DirectoryRole
///     name: example
///     properties:
///       displayName: Security administrator
///   exampleAdministrativeUnitRoleMember:
///     type: azuread:AdministrativeUnitRoleMember
///     name: example
///     properties:
///       roleObjectId: ${exampleDirectoryRole.objectId}
///       administrativeUnitObjectId: ${exampleAdministrativeUnit.objectId}
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
/// Administrative unit role members can be imported using the object ID of the administrative unit and the unique ID of the role assignment, e.g.
///
/// ```sh
/// terraform import azuread_administrative_unit_role_member.example
/// /directory/administrativeUnits/00000000-0000-0000-0000-000000000000/scopedRoleMembers/zX37MRLyF0uvE-xf2WH4B7x-6CPLfudNnxFGj800htpBXqkxW7bITqGb6Rj4kuTuS
/// ```
class AdministrativeUnitRoleMember extends pulumi.CustomResource {
  /// The object ID of the administrative unit you want to add the member to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> administrativeUnitObjectId;
  /// The object ID of the user, group or service principal you want to add as a member of the administrative unit. Changing this forces a new resource to be created.
  late final pulumi.Output<String> memberObjectId;
  /// The object ID of the directory role you want to assign. Changing this forces a new resource to be created.
  late final pulumi.Output<String> roleObjectId;

  /// Creates a new [AdministrativeUnitRoleMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdministrativeUnitRoleMember]. {@macro pulumi_index_administrative_unit_role_member_administrative_unit_role_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdministrativeUnitRoleMember(
    String name, {
    AdministrativeUnitRoleMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/administrativeUnitRoleMember:AdministrativeUnitRoleMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrativeUnitObjectId = registerOutput<String>('administrativeUnitObjectId');
    memberObjectId = registerOutput<String>('memberObjectId');
    roleObjectId = registerOutput<String>('roleObjectId');
  }

  /// Gets an existing [AdministrativeUnitRoleMember] resource's state with the given [name] and [id].
  static AdministrativeUnitRoleMember get(
    String name,
    pulumi.Input<String> id, {
    AdministrativeUnitRoleMemberState? state,
  }) {
    return AdministrativeUnitRoleMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AdministrativeUnitRoleMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/administrativeUnitRoleMember:AdministrativeUnitRoleMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrativeUnitObjectId = registerOutput<String>('administrativeUnitObjectId');
    memberObjectId = registerOutput<String>('memberObjectId');
    roleObjectId = registerOutput<String>('roleObjectId');
  }
}
