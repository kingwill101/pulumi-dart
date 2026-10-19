import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_group_members_args.dart';
import 'user_group_members_member.dart';
import 'user_group_members_state.dart';

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
/// const exampleUserGroupMembers = new cloudflare.UserGroupMembers("example_user_group_members", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     userGroupId: "023e105f4ecef8ad9ca31a8372d0c353",
///     members: [{
///         id: "023e105f4ecef8ad9ca31a8372d0c353",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_user_group_members = cloudflare.UserGroupMembers("example_user_group_members",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     user_group_id="023e105f4ecef8ad9ca31a8372d0c353",
///     members=[{
///         "id": "023e105f4ecef8ad9ca31a8372d0c353",
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
///     var exampleUserGroupMembers = new Cloudflare.UserGroupMembers("example_user_group_members", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         UserGroupId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Members = new[]
///         {
///             new Cloudflare.Inputs.UserGroupMembersMemberArgs
///             {
///                 Id = "023e105f4ecef8ad9ca31a8372d0c353",
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
/// 		_, err := cloudflare.NewUserGroupMembers(ctx, "example_user_group_members", &cloudflare.UserGroupMembersArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			UserGroupId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Members: cloudflare.UserGroupMembersMemberArray{
/// 				&cloudflare.UserGroupMembersMemberArgs{
/// 					Id: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
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
/// terraform {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_user_group_members" "example_user_group_members" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id    = "023e105f4ecef8ad9ca31a8372d0c353"
///   user_group_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   members {
///     id = "023e105f4ecef8ad9ca31a8372d0c353"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.UserGroupMembers;
/// import com.pulumi.cloudflare.UserGroupMembersArgs;
/// import com.pulumi.cloudflare.inputs.UserGroupMembersMemberArgs;
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
///         var exampleUserGroupMembers = new UserGroupMembers("exampleUserGroupMembers", UserGroupMembersArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .userGroupId("023e105f4ecef8ad9ca31a8372d0c353")
///             .members(UserGroupMembersMemberArgs.builder()
///                 .id("023e105f4ecef8ad9ca31a8372d0c353")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleUserGroupMembers:
///     type: cloudflare:UserGroupMembers
///     name: example_user_group_members
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       userGroupId: 023e105f4ecef8ad9ca31a8372d0c353
///       members:
///         - id: 023e105f4ecef8ad9ca31a8372d0c353
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/userGroupMembers:UserGroupMembers example '<account_id>/<user_group_id>'
/// ```
class UserGroupMembers extends pulumi.CustomResource {
  /// Account identifier tag.
  late final pulumi.Output<String> accountId;
  /// The sort order of returned user group members by email.
  /// Available values: "asc", "desc".
  late final pulumi.Output<String> direction;
  /// A string used for filtering members by partial email match.
  late final pulumi.Output<String?> fuzzyEmail;
  late final pulumi.Output<List<UserGroupMembersMember>> members;
  /// Page number of paginated results.
  late final pulumi.Output<double> page;
  /// Maximum number of results per page.
  late final pulumi.Output<double> perPage;
  /// User Group identifier tag.
  late final pulumi.Output<String> userGroupId;

  /// Creates a new [UserGroupMembers].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UserGroupMembers]. {@macro pulumi_index_user_group_members_user_group_members_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UserGroupMembers(
    String name, {
    UserGroupMembersArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/userGroupMembers:UserGroupMembers',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.22.1').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    direction = registerOutput<String>('direction');
    fuzzyEmail = registerOutput<String?>('fuzzyEmail');
    members = registerOutput<List<UserGroupMembersMember>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserGroupMembersMember>(guardedValue, (value) => UserGroupMembersMember.fromMap((value as Map).cast<String, dynamic>())); });
    page = registerOutput<double>('page');
    perPage = registerOutput<double>('perPage');
    userGroupId = registerOutput<String>('userGroupId');
  }

  /// Gets an existing [UserGroupMembers] resource's state with the given [name] and [id].
  static UserGroupMembers get(
    String name,
    pulumi.Input<String> id, {
    UserGroupMembersState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return UserGroupMembers._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  UserGroupMembers._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/userGroupMembers:UserGroupMembers',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    direction = registerOutput<String>('direction');
    fuzzyEmail = registerOutput<String?>('fuzzyEmail');
    members = registerOutput<List<UserGroupMembersMember>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserGroupMembersMember>(guardedValue, (value) => UserGroupMembersMember.fromMap((value as Map).cast<String, dynamic>())); });
    page = registerOutput<double>('page');
    perPage = registerOutput<double>('perPage');
    userGroupId = registerOutput<String>('userGroupId');
  }

  /// Creates a typed reference to an existing [UserGroupMembers] resource.
  UserGroupMembers.reference(String urn)
    : super(
        'cloudflare:index/userGroupMembers:UserGroupMembers',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    direction = registerOutput<String>('direction');
    fuzzyEmail = registerOutput<String?>('fuzzyEmail');
    members = registerOutput<List<UserGroupMembersMember>>('members', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<UserGroupMembersMember>(guardedValue, (value) => UserGroupMembersMember.fromMap((value as Map).cast<String, dynamic>())); });
    page = registerOutput<double>('page');
    perPage = registerOutput<double>('perPage');
    userGroupId = registerOutput<String>('userGroupId');
  }
}
