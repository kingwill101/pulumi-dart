import 'package:pulumi/pulumi.dart' as pulumi;
import 'administrative_unit_member_args.dart';
import 'administrative_unit_member_state.dart';

/// Manages a single administrative unit membership within Azure Active Directory.
///
/// &gt; **Warning** Do not use this resource at the same time as the `members` property of the `azuread.AdministrativeUnit` resource for the same administrative unit. Doing so will cause a conflict and administrative unit members will be removed.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `AdministrativeUnit.ReadWrite.All` or `Directory.ReadWrite.All`
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
/// const exampleAdministrativeUnitMember = new azuread.AdministrativeUnitMember("example", {
///     administrativeUnitObjectId: exampleAdministrativeUnit.id,
///     memberObjectId: example.then(example => example.id),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_user(user_principal_name="jdoe@example.com")
/// example_administrative_unit = azuread.AdministrativeUnit("example", display_name="Example-AU")
/// example_administrative_unit_member = azuread.AdministrativeUnitMember("example",
///     administrative_unit_object_id=example_administrative_unit.id,
///     member_object_id=example.id)
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
///     var exampleAdministrativeUnitMember = new AzureAD.AdministrativeUnitMember("example", new()
///     {
///         AdministrativeUnitObjectId = exampleAdministrativeUnit.Id,
///         MemberObjectId = example.Apply(getUserResult => getUserResult.Id),
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
/// 		_, err = azuread.NewAdministrativeUnitMember(ctx, "example", &azuread.AdministrativeUnitMemberArgs{
/// 			AdministrativeUnitObjectId: exampleAdministrativeUnit.ID(),
/// 			MemberObjectId:             pulumi.String(example.Id),
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
/// import com.pulumi.azuread.AdministrativeUnitMember;
/// import com.pulumi.azuread.AdministrativeUnitMemberArgs;
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
///         var exampleAdministrativeUnitMember = new AdministrativeUnitMember("exampleAdministrativeUnitMember", AdministrativeUnitMemberArgs.builder()
///             .administrativeUnitObjectId(exampleAdministrativeUnit.id())
///             .memberObjectId(example.id())
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
///   exampleAdministrativeUnitMember:
///     type: azuread:AdministrativeUnitMember
///     name: example
///     properties:
///       administrativeUnitObjectId: ${exampleAdministrativeUnit.id}
///       memberObjectId: ${example.id}
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
/// Administrative unit members can be imported using the object ID of the administrative unit and the object ID of the member, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/administrativeUnitMember:AdministrativeUnitMember example /directory/administrativeUnits/00000000-0000-0000-0000-000000000000/members/11111111-1111-1111-1111-111111111111
/// ```
class AdministrativeUnitMember extends pulumi.CustomResource {
  /// The object ID of the administrative unit you want to add the member to. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> administrativeUnitObjectId;

  /// The object ID of the user or group you want to add as a member of the administrative unit. Changing this forces a new resource to be created.
  ///
  /// &gt; **Caution** When using the azuread.AdministrativeUnitMember resource to manage Administrative Unit membership for a group, you will need to use an `ignore_changes = [administrative_unit_ids]` lifecycle meta argument for the `azuread.Group` resource, in order to avoid a persistent diff.
  late final pulumi.Output<String?> memberObjectId;

  /// Creates a new [AdministrativeUnitMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AdministrativeUnitMember]. {@macro pulumi_index_administrative_unit_member_administrative_unit_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AdministrativeUnitMember(
    String name, {
    AdministrativeUnitMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/administrativeUnitMember:AdministrativeUnitMember',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrativeUnitObjectId = registerOutput<String?>(
      'administrativeUnitObjectId',
    );
    memberObjectId = registerOutput<String?>('memberObjectId');
  }

  /// Gets an existing [AdministrativeUnitMember] resource's state with the given [name] and [id].
  static AdministrativeUnitMember get(
    String name,
    pulumi.Input<String> id, {
    AdministrativeUnitMemberState? state,
  }) {
    return AdministrativeUnitMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  AdministrativeUnitMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azuread:index/administrativeUnitMember:AdministrativeUnitMember',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    administrativeUnitObjectId = registerOutput<String?>(
      'administrativeUnitObjectId',
    );
    memberObjectId = registerOutput<String?>('memberObjectId');
  }
}
