import 'package:pulumi/pulumi.dart' as pulumi;
import 'group_membership_args.dart';
import 'group_membership_member_key.dart';
import 'group_membership_preferred_member_key.dart';
import 'group_membership_state.dart';

/// A Membership defines a relationship between a Group and an entity belonging to that Group, referred to as a "member".
///
///
/// To get more information about GroupMembership, see:
///
/// * [API documentation](https://cloud.google.com/identity/docs/reference/rest/v1/groups.memberships)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/identity/docs/how-to/memberships-google-groups)
///
/// &gt; **Warning:** If you are using User ADCs (Application Default Credentials) with this resource,
/// you must specify a `billingProject` and set `userProjectOverride` to true
/// in the provider configuration. Otherwise the Cloud Identity API will return a 403 error.
/// Your account must have the `serviceusage.services.use` permission on the
/// `billingProject` you defined.
///
/// ## Example Usage
///
/// ### Cloud Identity Group Membership
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const group = new gcp.cloudidentity.Group("group", {
///     displayName: "my-identity-group",
///     parent: "customers/A01b123xz",
///     groupKey: {
///         id: "my-identity-group@example.com",
///     },
///     labels: {
///         "cloudidentity.googleapis.com/groups.discussion_forum": "",
///     },
/// });
/// const child_group = new gcp.cloudidentity.Group("child-group", {
///     displayName: "my-identity-group-child",
///     parent: "customers/A01b123xz",
///     groupKey: {
///         id: "my-identity-group-child@example.com",
///     },
///     labels: {
///         "cloudidentity.googleapis.com/groups.discussion_forum": "",
///     },
/// });
/// const cloudIdentityGroupMembershipBasic = new gcp.cloudidentity.GroupMembership("cloud_identity_group_membership_basic", {
///     group: group.id,
///     preferredMemberKey: {
///         id: child_group.groupKey.id,
///     },
///     roles: [{
///         name: "MEMBER",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// group = gcp.cloudidentity.Group("group",
///     display_name="my-identity-group",
///     parent="customers/A01b123xz",
///     group_key={
///         "id": "my-identity-group@example.com",
///     },
///     labels={
///         "cloudidentity.googleapis.com/groups.discussion_forum": "",
///     })
/// child_group = gcp.cloudidentity.Group("child-group",
///     display_name="my-identity-group-child",
///     parent="customers/A01b123xz",
///     group_key={
///         "id": "my-identity-group-child@example.com",
///     },
///     labels={
///         "cloudidentity.googleapis.com/groups.discussion_forum": "",
///     })
/// cloud_identity_group_membership_basic = gcp.cloudidentity.GroupMembership("cloud_identity_group_membership_basic",
///     group=group.id,
///     preferred_member_key={
///         "id": child_group.group_key.id,
///     },
///     roles=[{
///         "name": "MEMBER",
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @group = new Gcp.CloudIdentity.Group("group", new()
///     {
///         DisplayName = "my-identity-group",
///         Parent = "customers/A01b123xz",
///         GroupKey = new Gcp.CloudIdentity.Inputs.GroupGroupKeyArgs
///         {
///             Id = "my-identity-group@example.com",
///         },
///         Labels =
///         {
///             { "cloudidentity.googleapis.com/groups.discussion_forum", "" },
///         },
///     });
///
///     var child_group = new Gcp.CloudIdentity.Group("child-group", new()
///     {
///         DisplayName = "my-identity-group-child",
///         Parent = "customers/A01b123xz",
///         GroupKey = new Gcp.CloudIdentity.Inputs.GroupGroupKeyArgs
///         {
///             Id = "my-identity-group-child@example.com",
///         },
///         Labels =
///         {
///             { "cloudidentity.googleapis.com/groups.discussion_forum", "" },
///         },
///     });
///
///     var cloudIdentityGroupMembershipBasic = new Gcp.CloudIdentity.GroupMembership("cloud_identity_group_membership_basic", new()
///     {
///         Group = @group.Id,
///         PreferredMemberKey = new Gcp.CloudIdentity.Inputs.GroupMembershipPreferredMemberKeyArgs
///         {
///             Id = child_group.GroupKey.Apply(groupKey => groupKey.Id),
///         },
///         Roles = new[]
///         {
///             new Gcp.CloudIdentity.Inputs.GroupMembershipRoleArgs
///             {
///                 Name = "MEMBER",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		group, err := cloudidentity.NewGroup(ctx, "group", &cloudidentity.GroupArgs{
/// 			DisplayName: pulumi.String("my-identity-group"),
/// 			Parent:      pulumi.String("customers/A01b123xz"),
/// 			GroupKey: &cloudidentity.GroupGroupKeyArgs{
/// 				Id: pulumi.String("my-identity-group@example.com"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"cloudidentity.googleapis.com/groups.discussion_forum": pulumi.String(""),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		child_group, err := cloudidentity.NewGroup(ctx, "child-group", &cloudidentity.GroupArgs{
/// 			DisplayName: pulumi.String("my-identity-group-child"),
/// 			Parent:      pulumi.String("customers/A01b123xz"),
/// 			GroupKey: &cloudidentity.GroupGroupKeyArgs{
/// 				Id: pulumi.String("my-identity-group-child@example.com"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"cloudidentity.googleapis.com/groups.discussion_forum": pulumi.String(""),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudidentity.NewGroupMembership(ctx, "cloud_identity_group_membership_basic", &cloudidentity.GroupMembershipArgs{
/// 			Group: group.ID().ToIDOutput().ToStringOutput(),
/// 			PreferredMemberKey: &cloudidentity.GroupMembershipPreferredMemberKeyArgs{
/// 				Id: child_group.GroupKey.Id(),
/// 			},
/// 			Roles: cloudidentity.GroupMembershipRoleArray{
/// 				&cloudidentity.GroupMembershipRoleArgs{
/// 					Name: pulumi.String("MEMBER"),
/// 				},
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
/// resource "gcp_cloudidentity_group" "group" {
///   display_name = "my-identity-group"
///   parent       = "customers/A01b123xz"
///   group_key = {
///     id = "my-identity-group@example.com"
///   }
///   labels = {
///     "cloudidentity.googleapis.com/groups.discussion_forum" = ""
///   }
/// }
/// resource "gcp_cloudidentity_group" "child-group" {
///   display_name = "my-identity-group-child"
///   parent       = "customers/A01b123xz"
///   group_key = {
///     id = "my-identity-group-child@example.com"
///   }
///   labels = {
///     "cloudidentity.googleapis.com/groups.discussion_forum" = ""
///   }
/// }
/// resource "gcp_cloudidentity_groupmembership" "cloud_identity_group_membership_basic" {
///   group = gcp_cloudidentity_group.group.id
///   preferred_member_key = {
///     id = gcp_cloudidentity_group.child-group.group_key.id
///   }
///   roles {
///     name = "MEMBER"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.Group;
/// import com.pulumi.gcp.cloudidentity.GroupArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.GroupGroupKeyArgs;
/// import com.pulumi.gcp.cloudidentity.GroupMembership;
/// import com.pulumi.gcp.cloudidentity.GroupMembershipArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.GroupMembershipPreferredMemberKeyArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.GroupMembershipRoleArgs;
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
///         var group = new Group("group", GroupArgs.builder()
///             .displayName("my-identity-group")
///             .parent("customers/A01b123xz")
///             .groupKey(GroupGroupKeyArgs.builder()
///                 .id("my-identity-group@example.com")
///                 .build())
///             .labels(Map.of("cloudidentity.googleapis.com/groups.discussion_forum", ""))
///             .build());
///
///         var child_group = new Group("child-group", GroupArgs.builder()
///             .displayName("my-identity-group-child")
///             .parent("customers/A01b123xz")
///             .groupKey(GroupGroupKeyArgs.builder()
///                 .id("my-identity-group-child@example.com")
///                 .build())
///             .labels(Map.of("cloudidentity.googleapis.com/groups.discussion_forum", ""))
///             .build());
///
///         var cloudIdentityGroupMembershipBasic = new GroupMembership("cloudIdentityGroupMembershipBasic", GroupMembershipArgs.builder()
///             .group(group.id())
///             .preferredMemberKey(GroupMembershipPreferredMemberKeyArgs.builder()
///                 .id(child_group.groupKey().applyValue(_groupKey -> _groupKey.id()))
///                 .build())
///             .roles(GroupMembershipRoleArgs.builder()
///                 .name("MEMBER")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   group:
///     type: gcp:cloudidentity:Group
///     properties:
///       displayName: my-identity-group
///       parent: customers/A01b123xz
///       groupKey:
///         id: my-identity-group@example.com
///       labels:
///         cloudidentity.googleapis.com/groups.discussion_forum: ""
///   child-group:
///     type: gcp:cloudidentity:Group
///     properties:
///       displayName: my-identity-group-child
///       parent: customers/A01b123xz
///       groupKey:
///         id: my-identity-group-child@example.com
///       labels:
///         cloudidentity.googleapis.com/groups.discussion_forum: ""
///   cloudIdentityGroupMembershipBasic:
///     type: gcp:cloudidentity:GroupMembership
///     name: cloud_identity_group_membership_basic
///     properties:
///       group: ${group.id}
///       preferredMemberKey:
///         id: ${["child-group"].groupKey.id}
///       roles:
///         - name: MEMBER
/// ```
///
/// ### Cloud Identity Group Membership User
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const group = new gcp.cloudidentity.Group("group", {
///     displayName: "my-identity-group",
///     parent: "customers/A01b123xz",
///     groupKey: {
///         id: "my-identity-group@example.com",
///     },
///     labels: {
///         "cloudidentity.googleapis.com/groups.discussion_forum": "",
///     },
/// });
/// const cloudIdentityGroupMembershipBasic = new gcp.cloudidentity.GroupMembership("cloud_identity_group_membership_basic", {
///     group: group.id,
///     preferredMemberKey: {
///         id: "cloud_identity_user@example.com",
///     },
///     roles: [
///         {
///             name: "MEMBER",
///         },
///         {
///             name: "MANAGER",
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// group = gcp.cloudidentity.Group("group",
///     display_name="my-identity-group",
///     parent="customers/A01b123xz",
///     group_key={
///         "id": "my-identity-group@example.com",
///     },
///     labels={
///         "cloudidentity.googleapis.com/groups.discussion_forum": "",
///     })
/// cloud_identity_group_membership_basic = gcp.cloudidentity.GroupMembership("cloud_identity_group_membership_basic",
///     group=group.id,
///     preferred_member_key={
///         "id": "cloud_identity_user@example.com",
///     },
///     roles=[
///         {
///             "name": "MEMBER",
///         },
///         {
///             "name": "MANAGER",
///         },
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
///     var @group = new Gcp.CloudIdentity.Group("group", new()
///     {
///         DisplayName = "my-identity-group",
///         Parent = "customers/A01b123xz",
///         GroupKey = new Gcp.CloudIdentity.Inputs.GroupGroupKeyArgs
///         {
///             Id = "my-identity-group@example.com",
///         },
///         Labels =
///         {
///             { "cloudidentity.googleapis.com/groups.discussion_forum", "" },
///         },
///     });
///
///     var cloudIdentityGroupMembershipBasic = new Gcp.CloudIdentity.GroupMembership("cloud_identity_group_membership_basic", new()
///     {
///         Group = @group.Id,
///         PreferredMemberKey = new Gcp.CloudIdentity.Inputs.GroupMembershipPreferredMemberKeyArgs
///         {
///             Id = "cloud_identity_user@example.com",
///         },
///         Roles = new[]
///         {
///             new Gcp.CloudIdentity.Inputs.GroupMembershipRoleArgs
///             {
///                 Name = "MEMBER",
///             },
///             new Gcp.CloudIdentity.Inputs.GroupMembershipRoleArgs
///             {
///                 Name = "MANAGER",
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/cloudidentity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		group, err := cloudidentity.NewGroup(ctx, "group", &cloudidentity.GroupArgs{
/// 			DisplayName: pulumi.String("my-identity-group"),
/// 			Parent:      pulumi.String("customers/A01b123xz"),
/// 			GroupKey: &cloudidentity.GroupGroupKeyArgs{
/// 				Id: pulumi.String("my-identity-group@example.com"),
/// 			},
/// 			Labels: pulumi.StringMap{
/// 				"cloudidentity.googleapis.com/groups.discussion_forum": pulumi.String(""),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudidentity.NewGroupMembership(ctx, "cloud_identity_group_membership_basic", &cloudidentity.GroupMembershipArgs{
/// 			Group: group.ID().ToIDOutput().ToStringOutput(),
/// 			PreferredMemberKey: &cloudidentity.GroupMembershipPreferredMemberKeyArgs{
/// 				Id: pulumi.String("cloud_identity_user@example.com"),
/// 			},
/// 			Roles: cloudidentity.GroupMembershipRoleArray{
/// 				&cloudidentity.GroupMembershipRoleArgs{
/// 					Name: pulumi.String("MEMBER"),
/// 				},
/// 				&cloudidentity.GroupMembershipRoleArgs{
/// 					Name: pulumi.String("MANAGER"),
/// 				},
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
/// resource "gcp_cloudidentity_group" "group" {
///   display_name = "my-identity-group"
///   parent       = "customers/A01b123xz"
///   group_key = {
///     id = "my-identity-group@example.com"
///   }
///   labels = {
///     "cloudidentity.googleapis.com/groups.discussion_forum" = ""
///   }
/// }
/// resource "gcp_cloudidentity_groupmembership" "cloud_identity_group_membership_basic" {
///   group = gcp_cloudidentity_group.group.id
///   preferred_member_key = {
///     id = "cloud_identity_user@example.com"
///   }
///   roles {
///     name = "MEMBER"
///   }
///   roles {
///     name = "MANAGER"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.cloudidentity.Group;
/// import com.pulumi.gcp.cloudidentity.GroupArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.GroupGroupKeyArgs;
/// import com.pulumi.gcp.cloudidentity.GroupMembership;
/// import com.pulumi.gcp.cloudidentity.GroupMembershipArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.GroupMembershipPreferredMemberKeyArgs;
/// import com.pulumi.gcp.cloudidentity.inputs.GroupMembershipRoleArgs;
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
///         var group = new Group("group", GroupArgs.builder()
///             .displayName("my-identity-group")
///             .parent("customers/A01b123xz")
///             .groupKey(GroupGroupKeyArgs.builder()
///                 .id("my-identity-group@example.com")
///                 .build())
///             .labels(Map.of("cloudidentity.googleapis.com/groups.discussion_forum", ""))
///             .build());
///
///         var cloudIdentityGroupMembershipBasic = new GroupMembership("cloudIdentityGroupMembershipBasic", GroupMembershipArgs.builder()
///             .group(group.id())
///             .preferredMemberKey(GroupMembershipPreferredMemberKeyArgs.builder()
///                 .id("cloud_identity_user@example.com")
///                 .build())
///             .roles(
///                 GroupMembershipRoleArgs.builder()
///                     .name("MEMBER")
///                     .build(),
///                 GroupMembershipRoleArgs.builder()
///                     .name("MANAGER")
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   group:
///     type: gcp:cloudidentity:Group
///     properties:
///       displayName: my-identity-group
///       parent: customers/A01b123xz
///       groupKey:
///         id: my-identity-group@example.com
///       labels:
///         cloudidentity.googleapis.com/groups.discussion_forum: ""
///   cloudIdentityGroupMembershipBasic:
///     type: gcp:cloudidentity:GroupMembership
///     name: cloud_identity_group_membership_basic
///     properties:
///       group: ${group.id}
///       preferredMemberKey:
///         id: cloud_identity_user@example.com
///       roles:
///         - name: MEMBER
///         - name: MANAGER
/// ```
///
///
/// ## Import
///
/// GroupMembership can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
///
/// When using the `pulumi import` command, GroupMembership can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:cloudidentity/groupMembership:GroupMembership default {{name}}
/// ```
class GroupMembership extends pulumi.CustomResource {
  /// If set to true, skip group member creation if a membership with the same name already exists. Defaults to false.
  late final pulumi.Output<bool?> createIgnoreAlreadyExists;
  /// The time when the Membership was created.
  late final pulumi.Output<String> createTime;
  /// Whether Terraform will be prevented from destroying the resource. Defaults to DELETE.
  /// When a 'terraform destroy' or 'pulumi up' would delete the resource,
  /// the command will fail if this field is set to "PREVENT" in Terraform state.
  /// When set to "ABANDON", the command will remove the resource from Terraform
  /// management without updating or deleting the resource in the API.
  /// When set to "DELETE", deleting the resource is allowed.
  late final pulumi.Output<String> deletionPolicy;
  /// The name of the Group to create this membership in.
  late final pulumi.Output<String> group;
  /// (Optional, Beta)
  /// EntityKey of the member.
  /// Structure is documented below.
  late final pulumi.Output<GroupMembershipMemberKey> memberKey;
  /// The resource name of the Membership, of the form groups/{group_id}/memberships/{membership_id}.
  late final pulumi.Output<String> name;
  /// EntityKey of the member.
  /// Structure is documented below.
  late final pulumi.Output<GroupMembershipPreferredMemberKey> preferredMemberKey;
  /// The MembershipRoles that apply to the Membership.
  /// Must not contain duplicate MembershipRoles with the same name.
  /// Structure is documented below.
  late final pulumi.Output<List<Map<String, dynamic>>> roles;
  /// The type of the membership.
  late final pulumi.Output<String> type;
  /// The time when the Membership was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [GroupMembership].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [GroupMembership]. {@macro pulumi_cloudidentity_group_membership_group_membership_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  GroupMembership(
    String name, {
    GroupMembershipArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/groupMembership:GroupMembership',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createIgnoreAlreadyExists = registerOutput<bool?>('createIgnoreAlreadyExists');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    group = registerOutput<String>('group');
    memberKey = registerOutput<GroupMembershipMemberKey>('memberKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupMembershipMemberKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    preferredMemberKey = registerOutput<GroupMembershipPreferredMemberKey>('preferredMemberKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupMembershipPreferredMemberKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roles = registerOutput<List<Map<String, dynamic>>>('roles');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }

  /// Gets an existing [GroupMembership] resource's state with the given [name] and [id].
  static GroupMembership get(
    String name,
    pulumi.Input<String> id, {
    GroupMembershipState? state,
  }) {
    return GroupMembership._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  GroupMembership._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:cloudidentity/groupMembership:GroupMembership',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createIgnoreAlreadyExists = registerOutput<bool?>('createIgnoreAlreadyExists');
    createTime = registerOutput<String>('createTime');
    deletionPolicy = registerOutput<String>('deletionPolicy');
    group = registerOutput<String>('group');
    memberKey = registerOutput<GroupMembershipMemberKey>('memberKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupMembershipMemberKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    preferredMemberKey = registerOutput<GroupMembershipPreferredMemberKey>('preferredMemberKey', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return GroupMembershipPreferredMemberKey.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    roles = registerOutput<List<Map<String, dynamic>>>('roles');
    type = registerOutput<String>('type');
    updateTime = registerOutput<String>('updateTime');
  }
}
