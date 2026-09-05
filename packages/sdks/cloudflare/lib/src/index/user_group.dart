import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_args.dart';
import 'user_group_policy.dart';
import 'user_group_state.dart';

/// Accepted Permissions
///
/// - `Account Settings Read`
/// - `Account Settings Write`
/// - `SCIM Provisioning`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleUserGroup = new cloudflare.UserGroup("example_user_group", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "My New User Group",
///     policies: [{
///         access: "allow",
///         permissionGroups: [
///             {
///                 id: "c8fed203ed3043cba015a93ad1616f1f",
///             },
///             {
///                 id: "82e64a83756745bbbb1c9c2701bf816b",
///             },
///         ],
///         resourceGroups: [{
///             id: "6d7f2f5f5b1d4a0e9081fdc98d432fd1",
///         }],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_user_group = cloudflare.UserGroup("example_user_group",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="My New User Group",
///     policies=[{
///         "access": "allow",
///         "permission_groups": [
///             {
///                 "id": "c8fed203ed3043cba015a93ad1616f1f",
///             },
///             {
///                 "id": "82e64a83756745bbbb1c9c2701bf816b",
///             },
///         ],
///         "resource_groups": [{
///             "id": "6d7f2f5f5b1d4a0e9081fdc98d432fd1",
///         }],
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleUserGroup = new Cloudflare.UserGroup("example_user_group", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "My New User Group",
///         Policies = new[]
///         {
///             new Cloudflare.Inputs.UserGroupPolicyArgs
///             {
///                 Access = "allow",
///                 PermissionGroups = new[]
///                 {
///                     new Cloudflare.Inputs.UserGroupPolicyPermissionGroupArgs
///                     {
///                         Id = "c8fed203ed3043cba015a93ad1616f1f",
///                     },
///                     new Cloudflare.Inputs.UserGroupPolicyPermissionGroupArgs
///                     {
///                         Id = "82e64a83756745bbbb1c9c2701bf816b",
///                     },
///                 },
///                 ResourceGroups = new[]
///                 {
///                     new Cloudflare.Inputs.UserGroupPolicyResourceGroupArgs
///                     {
///                         Id = "6d7f2f5f5b1d4a0e9081fdc98d432fd1",
///                     },
///                 },
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
/// 	"github.com/pulumi/pulumi-cloudflare/sdk/v6/go/cloudflare"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudflare.NewUserGroup(ctx, "example_user_group", &cloudflare.UserGroupArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("My New User Group"),
/// 			Policies: cloudflare.UserGroupPolicyArray{
/// 				&cloudflare.UserGroupPolicyArgs{
/// 					Access: pulumi.String("allow"),
/// 					PermissionGroups: cloudflare.UserGroupPolicyPermissionGroupArray{
/// 						&cloudflare.UserGroupPolicyPermissionGroupArgs{
/// 							Id: pulumi.String("c8fed203ed3043cba015a93ad1616f1f"),
/// 						},
/// 						&cloudflare.UserGroupPolicyPermissionGroupArgs{
/// 							Id: pulumi.String("82e64a83756745bbbb1c9c2701bf816b"),
/// 						},
/// 					},
/// 					ResourceGroups: cloudflare.UserGroupPolicyResourceGroupArray{
/// 						&cloudflare.UserGroupPolicyResourceGroupArgs{
/// 							Id: pulumi.String("6d7f2f5f5b1d4a0e9081fdc98d432fd1"),
/// 						},
/// 					},
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
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_usergroup" "example_user_group" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "My New User Group"
///   policies {
///     access = "allow"
///     permission_groups {
///       id = "c8fed203ed3043cba015a93ad1616f1f"
///     }
///     permission_groups {
///       id = "82e64a83756745bbbb1c9c2701bf816b"
///     }
///     resource_groups {
///       id = "6d7f2f5f5b1d4a0e9081fdc98d432fd1"
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.UserGroup;
/// import com.pulumi.cloudflare.UserGroupArgs;
/// import com.pulumi.cloudflare.inputs.UserGroupPolicyArgs;
/// import com.pulumi.cloudflare.inputs.UserGroupPolicyPermissionGroupArgs;
/// import com.pulumi.cloudflare.inputs.UserGroupPolicyResourceGroupArgs;
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
///         var exampleUserGroup = new UserGroup("exampleUserGroup", UserGroupArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("My New User Group")
///             .policies(UserGroupPolicyArgs.builder()
///                 .access("allow")
///                 .permissionGroups(
///                     UserGroupPolicyPermissionGroupArgs.builder()
///                         .id("c8fed203ed3043cba015a93ad1616f1f")
///                         .build(),
///                     UserGroupPolicyPermissionGroupArgs.builder()
///                         .id("82e64a83756745bbbb1c9c2701bf816b")
///                         .build())
///                 .resourceGroups(UserGroupPolicyResourceGroupArgs.builder()
///                     .id("6d7f2f5f5b1d4a0e9081fdc98d432fd1")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleUserGroup:
///     type: cloudflare:UserGroup
///     name: example_user_group
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: My New User Group
///       policies:
///         - access: allow
///           permissionGroups:
///             - id: c8fed203ed3043cba015a93ad1616f1f
///             - id: 82e64a83756745bbbb1c9c2701bf816b
///           resourceGroups:
///             - id: 6d7f2f5f5b1d4a0e9081fdc98d432fd1
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/userGroup:UserGroup example '<account_id>/<user_group_id>'
/// ```
class UserGroup extends pulumi.CustomResource {
  /// Account identifier tag.
  late final pulumi.Output<String> accountId;
  /// Timestamp for the creation of the user group
  late final pulumi.Output<String> createdOn;
  /// Last time the user group was modified.
  late final pulumi.Output<String> modifiedOn;
  /// Name of the User group.
  late final pulumi.Output<String> name;
  /// Policies attached to the User group
  late final pulumi.Output<List<UserGroupPolicy>?> policies;

  /// Creates a new [UserGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserGroup]. {@macro pulumi_index_user_group_user_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserGroup(
    String name, {
    UserGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/userGroup:UserGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<UserGroupPolicy>?>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserGroupPolicy>(guardedValue, (value) => UserGroupPolicy.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Gets an existing [UserGroup] resource's state with the given [name] and [id].
  static UserGroup get(
    String name,
    pulumi.Input<String> id, {
    UserGroupState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UserGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UserGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/userGroup:UserGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<UserGroupPolicy>?>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserGroupPolicy>(guardedValue, (value) => UserGroupPolicy.fromMap((value as Map).cast<String, dynamic>())); });
  }

  /// Creates a typed reference to an existing [UserGroup] resource.
  UserGroup.reference(String urn)
    : super(
        'cloudflare:index/userGroup:UserGroup',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    policies = registerOutput<List<UserGroupPolicy>?>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserGroupPolicy>(guardedValue, (value) => UserGroupPolicy.fromMap((value as Map).cast<String, dynamic>())); });
  }
}
