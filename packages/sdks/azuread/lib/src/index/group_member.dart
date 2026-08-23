import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_member_args.dart';
import 'group_member_state.dart';

/// Manages a single group membership within Azure Active Directory.
///
/// &gt; **Warning** Do not use this resource at the same time as the `members` property of the `azuread.Group` resource for the same group. Doing so will cause a conflict and group members will be removed.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Group.ReadWrite.All` or `Directory.ReadWrite.All`.
///
/// However, if the authenticated service principal is an owner of the group being managed, an application role is not required.
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Groups Administrator`, `User Administrator` or `Global Administrator`
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
/// const exampleGroup = new azuread.Group("example", {
///     displayName: "my_group",
///     securityEnabled: true,
/// });
/// const exampleGroupMember = new azuread.GroupMember("example", {
///     groupObjectId: exampleGroup.objectId,
///     memberObjectId: example.then(example => example.objectId),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// example = azuread.get_user(user_principal_name="jdoe@example.com")
/// example_group = azuread.Group("example",
///     display_name="my_group",
///     security_enabled=True)
/// example_group_member = azuread.GroupMember("example",
///     group_object_id=example_group.object_id,
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
///     var exampleGroup = new AzureAD.Group("example", new()
///     {
///         DisplayName = "my_group",
///         SecurityEnabled = true,
///     });
///
///     var exampleGroupMember = new AzureAD.GroupMember("example", new()
///     {
///         GroupObjectId = exampleGroup.ObjectId,
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
/// 		example, err := azuread.GetUser(ctx, &azuread.LookupUserArgs{
/// 			UserPrincipalName: pulumi.StringRef("jdoe@example.com"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleGroup, err := azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName:     pulumi.String("my_group"),
/// 			SecurityEnabled: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewGroupMember(ctx, "example", &azuread.GroupMemberArgs{
/// 			GroupObjectId:  exampleGroup.ObjectId,
/// 			MemberObjectId: pulumi.String(example.ObjectId),
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// data "azuread_getuser" "example" {
///   user_principal_name = "jdoe@example.com"
/// }
///
/// resource "azuread_group" "example" {
///   display_name     = "my_group"
///   security_enabled = true
/// }
/// resource "azuread_groupmember" "example" {
///   group_object_id  = azuread_group.example.object_id
///   member_object_id = data.azuread_getuser.example.object_id
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
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.GroupMember;
/// import com.pulumi.azuread.GroupMemberArgs;
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
///         final var example = AzureadFunctions.getUser(GetUserArgs.builder()
///             .userPrincipalName("jdoe@example.com")
///             .build());
///
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .displayName("my_group")
///             .securityEnabled(true)
///             .build());
///
///         var exampleGroupMember = new GroupMember("exampleGroupMember", GroupMemberArgs.builder()
///             .groupObjectId(exampleGroup.objectId())
///             .memberObjectId(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleGroup:
///     type: azuread:Group
///     name: example
///     properties:
///       displayName: my_group
///       securityEnabled: true
///   exampleGroupMember:
///     type: azuread:GroupMember
///     name: example
///     properties:
///       groupObjectId: ${exampleGroup.objectId}
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
/// Group members can be imported using the object ID of the group and the object ID of the member, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/groupMember:GroupMember example 00000000-0000-0000-0000-000000000000/member/11111111-1111-1111-1111-111111111111
/// ```
///
/// &gt; This ID format is unique to Terraform and is composed of the Azure AD Group Object ID and the target Member Object ID in the format `{GroupObjectID}/member/{MemberObjectID}`.
class GroupMember extends pulumi.CustomResource {
  /// The object ID of the group you want to add the member to. Changing this forces a new resource to be created.
  late final pulumi.Output<String> groupObjectId;
  /// The object ID of the principal you want to add as a member to the group. Supported object types are Users, Groups or Service Principals. Changing this forces a new resource to be created.
  late final pulumi.Output<String> memberObjectId;

  /// Creates a new [GroupMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupMember]. {@macro pulumi_index_group_member_group_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupMember(
    String name, {
    GroupMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/groupMember:GroupMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupObjectId = registerOutput<String>('groupObjectId');
    memberObjectId = registerOutput<String>('memberObjectId');
  }

  /// Gets an existing [GroupMember] resource's state with the given [name] and [id].
  static GroupMember get(
    String name,
    pulumi.Input<String> id, {
    GroupMemberState? state,
  }) {
    return GroupMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/groupMember:GroupMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupObjectId = registerOutput<String>('groupObjectId');
    memberObjectId = registerOutput<String>('memberObjectId');
  }
}
