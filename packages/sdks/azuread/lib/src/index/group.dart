import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_args.dart';
import 'group_dynamic_membership.dart';
import 'group_state.dart';

/// Manages a group within Azure Active Directory.
///
/// ## API Permissions
///
/// The following API permissions are required in order to use this resource.
///
/// When authenticated with a service principal, this resource requires one of the following application roles: `Group.ReadWrite.All` or `Directory.ReadWrite.All`.
///
/// Alternatively, if the authenticated service principal is also an owner of the group being managed, this resource can use the application role: `Group.Create`.
///
/// If using the `assignableToRole` property, this resource additionally requires the `RoleManagement.ReadWrite.Directory` application role.
///
/// If specifying owners for a group, which are user principals, this resource additionally requires one of the following application roles: `User.Read.All`, `User.ReadWrite.All`, `Directory.Read.All` or `Directory.ReadWrite.All`
///
/// When authenticated with a user principal, this resource requires one of the following directory roles: `Groups Administrator`, `User Administrator` or `Global Administrator`
///
/// When creating this resource in administrative units exclusively, the directory role `Groups Administrator` is required to be scoped on any administrative unit used. Additionally, it must be possible to read the administrative units being used, which can be granted through the `AdministrativeUnit.Read.All` or `Directory.Read.All` application roles.
///
/// The `externalSendersAllowed`, `autoSubscribeNewMembers`, `hideFromAddressLists` and `hideFromOutlookClients` properties can only be configured when authenticating as a user and cannot be configured when authenticating as a service principal. Additionally, the user being used for authentication must be a Member of the tenant where the group is being managed and _not_ a Guest. This is a known API issue; please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) official documentation.
///
/// ## Example Usage
///
/// *Basic example*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getClientConfig({});
/// const example = new azuread.Group("example", {
///     displayName: "example",
///     owners: [current.then(current => current.objectId)],
///     securityEnabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_client_config()
/// example = azuread.Group("example",
///     display_name="example",
///     owners=[current.object_id],
///     security_enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var example = new AzureAD.Group("example", new()
///     {
///         DisplayName = "example",
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         SecurityEnabled = true,
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
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName: pulumi.String("example"),
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			SecurityEnabled: pulumi.Bool(true),
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
/// data "azuread_getclientconfig" "current" {
/// }
///
/// resource "azuread_group" "example" {
///   display_name     = "example"
///   owners           = [data.azuread_getclientconfig.current.object_id]
///   security_enabled = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("example")
///             .owners(current.objectId())
///             .securityEnabled(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Group
///     properties:
///       displayName: example
///       owners:
///         - ${current.objectId}
///       securityEnabled: true
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// ```
///
///
/// *Microsoft 365 group*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getClientConfig({});
/// const groupOwner = new azuread.User("group_owner", {
///     userPrincipalName: "example-group-owner@example.com",
///     displayName: "Group Owner",
///     mailNickname: "example-group-owner",
///     password: "SecretP@sswd99!",
/// });
/// const example = new azuread.Group("example", {
///     displayName: "example",
///     mailEnabled: true,
///     mailNickname: "ExampleGroup",
///     securityEnabled: true,
///     types: ["Unified"],
///     owners: [
///         current.then(current => current.objectId),
///         groupOwner.objectId,
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_client_config()
/// group_owner = azuread.User("group_owner",
///     user_principal_name="example-group-owner@example.com",
///     display_name="Group Owner",
///     mail_nickname="example-group-owner",
///     password="SecretP@sswd99!")
/// example = azuread.Group("example",
///     display_name="example",
///     mail_enabled=True,
///     mail_nickname="ExampleGroup",
///     security_enabled=True,
///     types=["Unified"],
///     owners=[
///         current.object_id,
///         group_owner.object_id,
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var groupOwner = new AzureAD.User("group_owner", new()
///     {
///         UserPrincipalName = "example-group-owner@example.com",
///         DisplayName = "Group Owner",
///         MailNickname = "example-group-owner",
///         Password = "SecretP@sswd99!",
///     });
///
///     var example = new AzureAD.Group("example", new()
///     {
///         DisplayName = "example",
///         MailEnabled = true,
///         MailNickname = "ExampleGroup",
///         SecurityEnabled = true,
///         Types = new[]
///         {
///             "Unified",
///         },
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///             groupOwner.ObjectId,
///         },
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
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		groupOwner, err := azuread.NewUser(ctx, "group_owner", &azuread.UserArgs{
/// 			UserPrincipalName: pulumi.String("example-group-owner@example.com"),
/// 			DisplayName:       pulumi.String("Group Owner"),
/// 			MailNickname:      pulumi.String("example-group-owner"),
/// 			Password:          pulumi.String("SecretP@sswd99!"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName:     pulumi.String("example"),
/// 			MailEnabled:     pulumi.Bool(true),
/// 			MailNickname:    pulumi.String("ExampleGroup"),
/// 			SecurityEnabled: pulumi.Bool(true),
/// 			Types: pulumi.StringArray{
/// 				pulumi.String("Unified"),
/// 			},
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 				groupOwner.ObjectId,
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// data "azuread_getclientconfig" "current" {
/// }
///
/// resource "azuread_user" "group_owner" {
///   user_principal_name = "example-group-owner@example.com"
///   display_name        = "Group Owner"
///   mail_nickname       = "example-group-owner"
///   password            = "SecretP@sswd99!"
/// }
/// resource "azuread_group" "example" {
///   display_name     = "example"
///   mail_enabled     = true
///   mail_nickname    = "ExampleGroup"
///   security_enabled = true
///   types            = ["Unified"]
///   owners           = [data.azuread_getclientconfig.current.object_id, azuread_user.group_owner.object_id]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var groupOwner = new User("groupOwner", UserArgs.builder()
///             .userPrincipalName("example-group-owner@example.com")
///             .displayName("Group Owner")
///             .mailNickname("example-group-owner")
///             .password("SecretP@sswd99!")
///             .build());
///
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("example")
///             .mailEnabled(true)
///             .mailNickname("ExampleGroup")
///             .securityEnabled(true)
///             .types("Unified")
///             .owners(
///                 current.objectId(),
///                 groupOwner.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   groupOwner:
///     type: azuread:User
///     name: group_owner
///     properties:
///       userPrincipalName: example-group-owner@example.com
///       displayName: Group Owner
///       mailNickname: example-group-owner
///       password: SecretP@sswd99!
///   example:
///     type: azuread:Group
///     properties:
///       displayName: example
///       mailEnabled: true
///       mailNickname: ExampleGroup
///       securityEnabled: true
///       types:
///         - Unified
///       owners:
///         - ${current.objectId}
///         - ${groupOwner.objectId}
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// ```
///
///
/// *Group with members*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getClientConfig({});
/// const example = new azuread.User("example", {
///     displayName: "J Doe",
///     owners: [current.then(current => current.objectId)],
///     password: "notSecure123",
///     userPrincipalName: "jdoe@example.com",
/// });
/// const exampleGroup = new azuread.Group("example", {
///     displayName: "MyGroup",
///     owners: [current.then(current => current.objectId)],
///     securityEnabled: true,
///     members: [example.objectId],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_client_config()
/// example = azuread.User("example",
///     display_name="J Doe",
///     owners=[current.object_id],
///     password="notSecure123",
///     user_principal_name="jdoe@example.com")
/// example_group = azuread.Group("example",
///     display_name="MyGroup",
///     owners=[current.object_id],
///     security_enabled=True,
///     members=[example.object_id])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var example = new AzureAD.User("example", new()
///     {
///         DisplayName = "J Doe",
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         Password = "notSecure123",
///         UserPrincipalName = "jdoe@example.com",
///     });
///
///     var exampleGroup = new AzureAD.Group("example", new()
///     {
///         DisplayName = "MyGroup",
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         SecurityEnabled = true,
///         Members = new[]
///         {
///             example.ObjectId,
///         },
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
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := azuread.NewUser(ctx, "example", &azuread.UserArgs{
/// 			DisplayName: pulumi.String("J Doe"),
/// 			Owners: []*string{
/// 				current.ObjectId,
/// 			},
/// 			Password:          pulumi.String("notSecure123"),
/// 			UserPrincipalName: pulumi.String("jdoe@example.com"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName: pulumi.String("MyGroup"),
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			SecurityEnabled: pulumi.Bool(true),
/// 			Members: pulumi.StringArray{
/// 				example.ObjectId,
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// data "azuread_getclientconfig" "current" {
/// }
///
/// resource "azuread_user" "example" {
///   display_name        = "J Doe"
///   owners              = [data.azuread_getclientconfig.current.object_id]
///   password            = "notSecure123"
///   user_principal_name = "jdoe@example.com"
/// }
/// resource "azuread_group" "example" {
///   display_name     = "MyGroup"
///   owners           = [data.azuread_getclientconfig.current.object_id]
///   security_enabled = true
///   members          = [azuread_user.example.object_id]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.User;
/// import com.pulumi.azuread.UserArgs;
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new User("example", UserArgs.builder()
///             .displayName("J Doe")
///             .owners(Arrays.asList(current.objectId()))
///             .password("notSecure123")
///             .userPrincipalName("jdoe@example.com")
///             .build());
///
///         var exampleGroup = new Group("exampleGroup", GroupArgs.builder()
///             .displayName("MyGroup")
///             .owners(current.objectId())
///             .securityEnabled(true)
///             .members(example.objectId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:User
///     properties:
///       displayName: J Doe
///       owners:
///         - ${current.objectId}
///       password: notSecure123
///       userPrincipalName: jdoe@example.com
///   exampleGroup:
///     type: azuread:Group
///     name: example
///     properties:
///       displayName: MyGroup
///       owners:
///         - ${current.objectId}
///       securityEnabled: true
///       members:
///         - ${example.objectId}
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// ```
///
///
/// *Group with dynamic membership*
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azuread from "@pulumi/azuread";
///
/// const current = azuread.getClientConfig({});
/// const example = new azuread.Group("example", {
///     displayName: "MyGroup",
///     owners: [current.then(current => current.objectId)],
///     securityEnabled: true,
///     types: ["DynamicMembership"],
///     dynamicMembership: {
///         enabled: true,
///         rule: "user.department -eq \"Sales\"",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azuread as azuread
///
/// current = azuread.get_client_config()
/// example = azuread.Group("example",
///     display_name="MyGroup",
///     owners=[current.object_id],
///     security_enabled=True,
///     types=["DynamicMembership"],
///     dynamic_membership={
///         "enabled": True,
///         "rule": "user.department -eq \"Sales\"",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureAD = Pulumi.AzureAD;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = AzureAD.GetClientConfig.Invoke();
///
///     var example = new AzureAD.Group("example", new()
///     {
///         DisplayName = "MyGroup",
///         Owners = new[]
///         {
///             current.Apply(getClientConfigResult => getClientConfigResult.ObjectId),
///         },
///         SecurityEnabled = true,
///         Types = new[]
///         {
///             "DynamicMembership",
///         },
///         DynamicMembership = new AzureAD.Inputs.GroupDynamicMembershipArgs
///         {
///             Enabled = true,
///             Rule = "user.department -eq \"Sales\"",
///         },
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
/// 		current, err := azuread.GetClientConfig(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = azuread.NewGroup(ctx, "example", &azuread.GroupArgs{
/// 			DisplayName: pulumi.String("MyGroup"),
/// 			Owners: pulumi.StringArray{
/// 				pulumi.String(current.ObjectId),
/// 			},
/// 			SecurityEnabled: pulumi.Bool(true),
/// 			Types: pulumi.StringArray{
/// 				pulumi.String("DynamicMembership"),
/// 			},
/// 			DynamicMembership: &azuread.GroupDynamicMembershipArgs{
/// 				Enabled: pulumi.Bool(true),
/// 				Rule:    pulumi.String("user.department -eq \"Sales\""),
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
///     azuread = {
///       source = "pulumi/azuread"
///     }
///   }
/// }
///
/// data "azuread_getclientconfig" "current" {
/// }
///
/// resource "azuread_group" "example" {
///   display_name     = "MyGroup"
///   owners           = [data.azuread_getclientconfig.current.object_id]
///   security_enabled = true
///   types            = ["DynamicMembership"]
///   dynamic_membership = {
///     enabled = true
///     rule    = "user.department -eq \"Sales\""
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azuread.AzureadFunctions;
/// import com.pulumi.azuread.Group;
/// import com.pulumi.azuread.GroupArgs;
/// import com.pulumi.azuread.inputs.GroupDynamicMembershipArgs;
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
///         final var current = AzureadFunctions.getClientConfig(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new Group("example", GroupArgs.builder()
///             .displayName("MyGroup")
///             .owners(current.objectId())
///             .securityEnabled(true)
///             .types("DynamicMembership")
///             .dynamicMembership(GroupDynamicMembershipArgs.builder()
///                 .enabled(true)
///                 .rule("user.department -eq \"Sales\"")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azuread:Group
///     properties:
///       displayName: MyGroup
///       owners:
///         - ${current.objectId}
///       securityEnabled: true
///       types:
///         - DynamicMembership
///       dynamicMembership:
///         enabled: true
///         rule: user.department -eq "Sales"
/// variables:
///   current:
///     fn::invoke:
///       function: azuread:getClientConfig
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Groups can be imported using their object ID, e.g.
///
/// ```sh
/// $ pulumi import azuread:index/group:Group my_group /groups/00000000-0000-0000-0000-000000000000
/// ```
class Group extends pulumi.CustomResource {
  /// The object IDs of administrative units in which the group is a member. If specified, new groups will be created in the scope of the first administrative unit and added to the others. If empty, new groups will be created at the tenant level.
  ///
  /// &gt; **Caution** When using the azuread.AdministrativeUnitMember resource, or the `members` property of the azuread.AdministrativeUnit resource, to manage Administrative Unit membership for a group, you will need to use an `ignoreChanges = [administrativeUnitIds]` lifecycle meta argument for the `azuread.Group` resource, in order to avoid a persistent diff.
  late final pulumi.Output<List<String>?> administrativeUnitIds;
  /// Indicates whether this group can be assigned to an Azure Active Directory role. Defaults to `false`. Can only be set to `true` for security-enabled groups. Changing this forces a new resource to be created.
  late final pulumi.Output<bool?> assignableToRole;
  /// Indicates whether new members added to the group will be auto-subscribed to receive email notifications. Can only be set for Unified groups.
  ///
  /// &gt; **Known Permissions Issue** The `autoSubscribeNewMembers` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  late final pulumi.Output<bool> autoSubscribeNewMembers;
  /// A set of behaviors for a Microsoft 365 group. Possible values are `AllowOnlyMembersToPost`, `HideGroupInOutlook`, `SkipExchangeInstantOn`, `SubscribeMembersToCalendarEventsDisabled`, `SubscribeNewGroupMembers` and `WelcomeEmailDisabled`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for more details. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> behaviors;
  /// The description for the group.
  late final pulumi.Output<String?> description;
  /// The display name for the group.
  late final pulumi.Output<String> displayName;
  /// A `dynamicMembership` block as documented below. Required when `types` contains `DynamicMembership`. Cannot be used with the `members` property.
  late final pulumi.Output<GroupDynamicMembership?> dynamicMembership;
  /// Indicates whether people external to the organization can send messages to the group. Can only be set for Unified groups.
  ///
  /// &gt; **Known Permissions Issue** The `externalSendersAllowed` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  late final pulumi.Output<bool> externalSendersAllowed;
  /// Indicates whether the group is displayed in certain parts of the Outlook user interface: in the Address Book, in address lists for selecting message recipients, and in the Browse Groups dialog for searching groups. Can only be set for Unified groups.
  ///
  /// &gt; **Known Permissions Issue** The `hideFromAddressLists` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  late final pulumi.Output<bool> hideFromAddressLists;
  /// Indicates whether the group is displayed in Outlook clients, such as Outlook for Windows and Outlook on the web. Can only be set for Unified groups.
  ///
  /// &gt; **Known Permissions Issue** The `hideFromOutlookClients` property can only be set when authenticating as a Member user of the tenant and _not_ when authenticating as a Guest user or as a service principal. Please see the [Microsoft Graph Known Issues](https://docs.microsoft.com/en-us/graph/known-issues#groups) documentation.
  late final pulumi.Output<bool> hideFromOutlookClients;
  /// The SMTP address for the group.
  late final pulumi.Output<String> mail;
  /// Whether the group is a mail enabled, with a shared group mailbox. At least one of `mailEnabled` or `securityEnabled` must be specified. Only Microsoft 365 groups can be mail enabled (see the `types` property).
  late final pulumi.Output<bool?> mailEnabled;
  /// The mail alias for the group, unique in the organisation. Required for mail-enabled groups. Changing this forces a new resource to be created.
  late final pulumi.Output<String> mailNickname;
  /// A set of members who should be present in this group. Supported object types are Users, Groups or Service Principals. Cannot be used with the `dynamicMembership` block.
  ///
  /// &gt; **Warning** Do not use the `members` property at the same time as the azuread.GroupMember resource for the same group. Doing so will cause a conflict and group members will be removed.
  late final pulumi.Output<List<String>> members;
  /// The object ID of the group.
  late final pulumi.Output<String> objectId;
  /// The on-premises FQDN, also called dnsDomainName, synchronised from the on-premises directory when Azure AD Connect is used.
  late final pulumi.Output<String> onpremisesDomainName;
  /// The on-premises group type that the AAD group will be written as, when writeback is enabled. Possible values are `UniversalDistributionGroup`, `UniversalMailEnabledSecurityGroup`, or `UniversalSecurityGroup`.
  late final pulumi.Output<String> onpremisesGroupType;
  /// The on-premises NetBIOS name, synchronised from the on-premises directory when Azure AD Connect is used.
  late final pulumi.Output<String> onpremisesNetbiosName;
  /// The on-premises SAM account name, synchronised from the on-premises directory when Azure AD Connect is used.
  late final pulumi.Output<String> onpremisesSamAccountName;
  /// The on-premises security identifier (SID), synchronised from the on-premises directory when Azure AD Connect is used.
  late final pulumi.Output<String> onpremisesSecurityIdentifier;
  /// Whether this group is synchronised from an on-premises directory (`true`), no longer synchronised (`false`), or has never been synchronised (`null`).
  late final pulumi.Output<bool> onpremisesSyncEnabled;
  /// A set of object IDs of principals that will be granted ownership of the group. Supported object types are users or service principals. By default, the principal being used to execute Terraform is assigned as the sole owner. Groups cannot be created with no owners or have all their owners removed.
  ///
  /// &gt; **Group Ownership**  It's recommended to always specify one or more group owners, including the principal being used to execute Terraform, such as in the example above. When removing group owners, if a user principal has been assigned ownership, the last user cannot be removed as an owner. Microsoft 365 groups are required to always have at least one owner which _must be a user_ (i.e. not a service principal).
  late final pulumi.Output<List<String>> owners;
  /// The preferred language for a Microsoft 365 group, in ISO 639-1 notation.
  late final pulumi.Output<String> preferredLanguage;
  /// If `true`, will return an error if an existing group is found with the same name. Defaults to `false`.
  late final pulumi.Output<bool?> preventDuplicateNames;
  /// A set of provisioning options for a Microsoft 365 group. The only supported value is `Team`. See [official documentation](https://docs.microsoft.com/en-us/graph/group-set-options) for details. Changing this forces a new resource to be created.
  late final pulumi.Output<List<String>?> provisioningOptions;
  /// List of email addresses for the group that direct to the same group mailbox.
  late final pulumi.Output<List<String>> proxyAddresses;
  /// Whether the group is a security group for controlling access to in-app resources. At least one of `securityEnabled` or `mailEnabled` must be specified. A Microsoft 365 group can be security enabled _and_ mail enabled (see the `types` property).
  late final pulumi.Output<bool?> securityEnabled;
  /// The colour theme for a Microsoft 365 group. Possible values are `Blue`, `Green`, `Orange`, `Pink`, `Purple`, `Red` or `Teal`. By default, no theme is set.
  late final pulumi.Output<String?> theme;
  /// A set of group types to configure for the group. Supported values are `DynamicMembership`, which denotes a group with dynamic membership, and `Unified`, which specifies a Microsoft 365 group. Required when `mailEnabled` is true. Changing this forces a new resource to be created.
  ///
  /// &gt; **Supported Group Types** At present, only security groups and Microsoft 365 groups can be created or managed with this resource. Distribution groups and mail-enabled security groups are not supported. Microsoft 365 groups can be security-enabled.
  late final pulumi.Output<List<String>?> types;
  /// The group join policy and group content visibility. Possible values are `Private`, `Public`, or `Hiddenmembership`. Only Microsoft 365 groups can have `Hiddenmembership` visibility and this value must be set when the group is created. By default, security groups will receive `Private` visibility and Microsoft 365 groups will receive `Public` visibility.
  ///
  /// &gt; **Group Name Uniqueness** Group names are not unique within Azure Active Directory. Use the `preventDuplicateNames` argument to check for existing groups if you want to avoid name collisions.
  late final pulumi.Output<String> visibility;
  /// Whether the group will be written back to the configured on-premises Active Directory when Azure AD Connect is used.
  late final pulumi.Output<bool?> writebackEnabled;

  /// Creates a new [Group].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Group]. {@macro pulumi_index_group_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Group(
    String name, {
    GroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/group:Group',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrativeUnitIds = registerOutput<List<String>?>('administrativeUnitIds');
    assignableToRole = registerOutput<bool?>('assignableToRole');
    autoSubscribeNewMembers = registerOutput<bool>('autoSubscribeNewMembers');
    behaviors = registerOutput<List<String>?>('behaviors');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    dynamicMembership = registerOutput<GroupDynamicMembership?>('dynamicMembership', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupDynamicMembership.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalSendersAllowed = registerOutput<bool>('externalSendersAllowed');
    hideFromAddressLists = registerOutput<bool>('hideFromAddressLists');
    hideFromOutlookClients = registerOutput<bool>('hideFromOutlookClients');
    mail = registerOutput<String>('mail');
    mailEnabled = registerOutput<bool?>('mailEnabled');
    mailNickname = registerOutput<String>('mailNickname');
    members = registerOutput<List<String>>('members');
    objectId = registerOutput<String>('objectId');
    onpremisesDomainName = registerOutput<String>('onpremisesDomainName');
    onpremisesGroupType = registerOutput<String>('onpremisesGroupType');
    onpremisesNetbiosName = registerOutput<String>('onpremisesNetbiosName');
    onpremisesSamAccountName = registerOutput<String>('onpremisesSamAccountName');
    onpremisesSecurityIdentifier = registerOutput<String>('onpremisesSecurityIdentifier');
    onpremisesSyncEnabled = registerOutput<bool>('onpremisesSyncEnabled');
    owners = registerOutput<List<String>>('owners');
    preferredLanguage = registerOutput<String>('preferredLanguage');
    preventDuplicateNames = registerOutput<bool?>('preventDuplicateNames');
    provisioningOptions = registerOutput<List<String>?>('provisioningOptions');
    proxyAddresses = registerOutput<List<String>>('proxyAddresses');
    securityEnabled = registerOutput<bool?>('securityEnabled');
    theme = registerOutput<String?>('theme');
    types = registerOutput<List<String>?>('types');
    visibility = registerOutput<String>('visibility');
    writebackEnabled = registerOutput<bool?>('writebackEnabled');
  }

  /// Gets an existing [Group] resource's state with the given [name] and [id].
  static Group get(
    String name,
    pulumi.Input<String> id, {
    GroupState? state,
  }) {
    return Group._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Group._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azuread:index/group:Group',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    administrativeUnitIds = registerOutput<List<String>?>('administrativeUnitIds');
    assignableToRole = registerOutput<bool?>('assignableToRole');
    autoSubscribeNewMembers = registerOutput<bool>('autoSubscribeNewMembers');
    behaviors = registerOutput<List<String>?>('behaviors');
    description = registerOutput<String?>('description');
    displayName = registerOutput<String>('displayName');
    dynamicMembership = registerOutput<GroupDynamicMembership?>('dynamicMembership', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupDynamicMembership.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    externalSendersAllowed = registerOutput<bool>('externalSendersAllowed');
    hideFromAddressLists = registerOutput<bool>('hideFromAddressLists');
    hideFromOutlookClients = registerOutput<bool>('hideFromOutlookClients');
    mail = registerOutput<String>('mail');
    mailEnabled = registerOutput<bool?>('mailEnabled');
    mailNickname = registerOutput<String>('mailNickname');
    members = registerOutput<List<String>>('members');
    objectId = registerOutput<String>('objectId');
    onpremisesDomainName = registerOutput<String>('onpremisesDomainName');
    onpremisesGroupType = registerOutput<String>('onpremisesGroupType');
    onpremisesNetbiosName = registerOutput<String>('onpremisesNetbiosName');
    onpremisesSamAccountName = registerOutput<String>('onpremisesSamAccountName');
    onpremisesSecurityIdentifier = registerOutput<String>('onpremisesSecurityIdentifier');
    onpremisesSyncEnabled = registerOutput<bool>('onpremisesSyncEnabled');
    owners = registerOutput<List<String>>('owners');
    preferredLanguage = registerOutput<String>('preferredLanguage');
    preventDuplicateNames = registerOutput<bool?>('preventDuplicateNames');
    provisioningOptions = registerOutput<List<String>?>('provisioningOptions');
    proxyAddresses = registerOutput<List<String>>('proxyAddresses');
    securityEnabled = registerOutput<bool?>('securityEnabled');
    theme = registerOutput<String?>('theme');
    types = registerOutput<List<String>?>('types');
    visibility = registerOutput<String>('visibility');
    writebackEnabled = registerOutput<bool?>('writebackEnabled');
  }
}
