import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_membership_v3_args.dart';
import 'user_membership_v3_state.dart';

/// Manages a user membership to group V3 resource within OpenStack.
///
/// &gt; **Note:** You _must_ have admin privileges in your OpenStack cloud to use
/// this resource.
///
/// ---
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as openstack from "@pulumi/openstack";
///
/// const project1 = new openstack.identity.Project("project_1", {name: "project_1"});
/// const user1 = new openstack.identity.User("user_1", {
///     name: "user_1",
///     defaultProjectId: project1.id,
/// });
/// const group1 = new openstack.identity.GroupV3("group_1", {
///     name: "group_1",
///     description: "group 1",
/// });
/// const role1 = new openstack.identity.Role("role_1", {name: "role_1"});
/// const userMembership1 = new openstack.identity.UserMembershipV3("user_membership_1", {
///     userId: user1.id,
///     groupId: group1.id,
/// });
/// const roleAssignment1 = new openstack.identity.RoleAssignment("role_assignment_1", {
///     groupId: group1.id,
///     projectId: project1.id,
///     roleId: role1.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_openstack as openstack
///
/// project1 = openstack.identity.Project("project_1", name="project_1")
/// user1 = openstack.identity.User("user_1",
///     name="user_1",
///     default_project_id=project1.id)
/// group1 = openstack.identity.GroupV3("group_1",
///     name="group_1",
///     description="group 1")
/// role1 = openstack.identity.Role("role_1", name="role_1")
/// user_membership1 = openstack.identity.UserMembershipV3("user_membership_1",
///     user_id=user1.id,
///     group_id=group1.id)
/// role_assignment1 = openstack.identity.RoleAssignment("role_assignment_1",
///     group_id=group1.id,
///     project_id=project1.id,
///     role_id=role1.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using OpenStack = Pulumi.OpenStack;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project1 = new OpenStack.Identity.Project("project_1", new()
///     {
///         Name = "project_1",
///     });
///
///     var user1 = new OpenStack.Identity.User("user_1", new()
///     {
///         Name = "user_1",
///         DefaultProjectId = project1.Id,
///     });
///
///     var group1 = new OpenStack.Identity.GroupV3("group_1", new()
///     {
///         Name = "group_1",
///         Description = "group 1",
///     });
///
///     var role1 = new OpenStack.Identity.Role("role_1", new()
///     {
///         Name = "role_1",
///     });
///
///     var userMembership1 = new OpenStack.Identity.UserMembershipV3("user_membership_1", new()
///     {
///         UserId = user1.Id,
///         GroupId = group1.Id,
///     });
///
///     var roleAssignment1 = new OpenStack.Identity.RoleAssignment("role_assignment_1", new()
///     {
///         GroupId = group1.Id,
///         ProjectId = project1.Id,
///         RoleId = role1.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-openstack/sdk/v5/go/openstack/identity"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project1, err := identity.NewProject(ctx, "project_1", &identity.ProjectArgs{
/// 			Name: pulumi.String("project_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		user1, err := identity.NewUser(ctx, "user_1", &identity.UserArgs{
/// 			Name:             pulumi.String("user_1"),
/// 			DefaultProjectId: project1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		group1, err := identity.NewGroupV3(ctx, "group_1", &identity.GroupV3Args{
/// 			Name:        pulumi.String("group_1"),
/// 			Description: pulumi.String("group 1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		role1, err := identity.NewRole(ctx, "role_1", &identity.RoleArgs{
/// 			Name: pulumi.String("role_1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identity.NewUserMembershipV3(ctx, "user_membership_1", &identity.UserMembershipV3Args{
/// 			UserId:  user1.ID(),
/// 			GroupId: group1.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = identity.NewRoleAssignment(ctx, "role_assignment_1", &identity.RoleAssignmentArgs{
/// 			GroupId:   group1.ID(),
/// 			ProjectId: project1.ID(),
/// 			RoleId:    role1.ID(),
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
/// import com.pulumi.openstack.identity.Project;
/// import com.pulumi.openstack.identity.ProjectArgs;
/// import com.pulumi.openstack.identity.User;
/// import com.pulumi.openstack.identity.UserArgs;
/// import com.pulumi.openstack.identity.GroupV3;
/// import com.pulumi.openstack.identity.GroupV3Args;
/// import com.pulumi.openstack.identity.Role;
/// import com.pulumi.openstack.identity.RoleArgs;
/// import com.pulumi.openstack.identity.UserMembershipV3;
/// import com.pulumi.openstack.identity.UserMembershipV3Args;
/// import com.pulumi.openstack.identity.RoleAssignment;
/// import com.pulumi.openstack.identity.RoleAssignmentArgs;
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
///         var project1 = new Project("project1", ProjectArgs.builder()
///             .name("project_1")
///             .build());
///
///         var user1 = new User("user1", UserArgs.builder()
///             .name("user_1")
///             .defaultProjectId(project1.id())
///             .build());
///
///         var group1 = new GroupV3("group1", GroupV3Args.builder()
///             .name("group_1")
///             .description("group 1")
///             .build());
///
///         var role1 = new Role("role1", RoleArgs.builder()
///             .name("role_1")
///             .build());
///
///         var userMembership1 = new UserMembershipV3("userMembership1", UserMembershipV3Args.builder()
///             .userId(user1.id())
///             .groupId(group1.id())
///             .build());
///
///         var roleAssignment1 = new RoleAssignment("roleAssignment1", RoleAssignmentArgs.builder()
///             .groupId(group1.id())
///             .projectId(project1.id())
///             .roleId(role1.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   project1:
///     type: openstack:identity:Project
///     name: project_1
///     properties:
///       name: project_1
///   user1:
///     type: openstack:identity:User
///     name: user_1
///     properties:
///       name: user_1
///       defaultProjectId: ${project1.id}
///   group1:
///     type: openstack:identity:GroupV3
///     name: group_1
///     properties:
///       name: group_1
///       description: group 1
///   role1:
///     type: openstack:identity:Role
///     name: role_1
///     properties:
///       name: role_1
///   userMembership1:
///     type: openstack:identity:UserMembershipV3
///     name: user_membership_1
///     properties:
///       userId: ${user1.id}
///       groupId: ${group1.id}
///   roleAssignment1:
///     type: openstack:identity:RoleAssignment
///     name: role_assignment_1
///     properties:
///       groupId: ${group1.id}
///       projectId: ${project1.id}
///       roleId: ${role1.id}
/// ```
///
///
/// ## Import
///
/// This resource can be imported by specifying all two arguments, separated
/// by a forward slash:
///
/// ```sh
/// $ pulumi import openstack:identity/userMembershipV3:UserMembershipV3 user_membership_1 user_id/group_id
/// ```
class UserMembershipV3 extends pulumi.CustomResource {
  /// The UUID of group to which the user will be added.
  /// Changing this creates a new user membership.
  late final pulumi.Output<String> groupId;
  /// The region in which to obtain the V3 Identity client.
  /// If omitted, the `region` argument of the provider is used.
  /// Changing this creates a new user membership.
  late final pulumi.Output<String> region;
  /// The UUID of user to use. Changing this creates a new user membership.
  late final pulumi.Output<String> userId;

  /// Creates a new [UserMembershipV3].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserMembershipV3]. {@macro pulumi_identity_user_membership_v3_user_membership_v3_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserMembershipV3(
    String name, {
    UserMembershipV3Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/userMembershipV3:UserMembershipV3',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupId = registerOutput<String>('groupId');
    region = registerOutput<String>('region');
    userId = registerOutput<String>('userId');
  }

  /// Gets an existing [UserMembershipV3] resource's state with the given [name] and [id].
  static UserMembershipV3 get(
    String name,
    pulumi.Input<String> id, {
    UserMembershipV3State? state,
  }) {
    return UserMembershipV3._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UserMembershipV3._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'openstack:identity/userMembershipV3:UserMembershipV3',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    groupId = registerOutput<String>('groupId');
    region = registerOutput<String>('region');
    userId = registerOutput<String>('userId');
  }
}
