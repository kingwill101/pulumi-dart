import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_member_args.dart';
import 'account_member_policy.dart';
import 'account_member_state.dart';
import 'account_member_user.dart';

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
/// const exampleAccountMember = new cloudflare.AccountMember("example_account_member", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     email: "user@example.com",
///     roles: ["3536bcfad5faccb999b47003c79917fb"],
///     status: "accepted",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_account_member = cloudflare.AccountMember("example_account_member",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     email="user@example.com",
///     roles=["3536bcfad5faccb999b47003c79917fb"],
///     status="accepted")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleAccountMember = new Cloudflare.AccountMember("example_account_member", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Email = "user@example.com",
///         Roles = new[]
///         {
///             "3536bcfad5faccb999b47003c79917fb",
///         },
///         Status = "accepted",
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
/// 		_, err := cloudflare.NewAccountMember(ctx, "example_account_member", &cloudflare.AccountMemberArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Email:     pulumi.String("user@example.com"),
/// 			Roles: pulumi.StringArray{
/// 				pulumi.String("3536bcfad5faccb999b47003c79917fb"),
/// 			},
/// 			Status: pulumi.String("accepted"),
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
/// resource "cloudflare_accountmember" "example_account_member" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   email      = "user@example.com"
///   roles      = ["3536bcfad5faccb999b47003c79917fb"]
///   status     = "accepted"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.AccountMember;
/// import com.pulumi.cloudflare.AccountMemberArgs;
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
///         var exampleAccountMember = new AccountMember("exampleAccountMember", AccountMemberArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .email("user@example.com")
///             .roles("3536bcfad5faccb999b47003c79917fb")
///             .status("accepted")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleAccountMember:
///     type: cloudflare:AccountMember
///     name: example_account_member
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       email: user@example.com
///       roles:
///         - 3536bcfad5faccb999b47003c79917fb
///       status: accepted
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/accountMember:AccountMember example '<account_id>/<member_id>'
/// ```
class AccountMember extends pulumi.CustomResource {
  /// Account identifier tag.
  late final pulumi.Output<String> accountId;
  /// The contact email address of the user.
  late final pulumi.Output<String> email;
  /// Array of policies associated with this member.
  late final pulumi.Output<List<AccountMemberPolicy>> policies;
  /// Set of roles associated with this member.
  late final pulumi.Output<List<String>> roles;
  /// Status of the member invitation. If not provided during creation, defaults to 'pending'.
  /// Changing from 'accepted' back to 'pending' will trigger a replacement of the member resource in Terraform.
  /// Available values: "accepted", "pending".
  late final pulumi.Output<String> status;
  /// Details of the user associated to the membership.
  late final pulumi.Output<AccountMemberUser> user;

  /// Creates a new [AccountMember].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AccountMember]. {@macro pulumi_index_account_member_account_member_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AccountMember(
    String name, {
    AccountMemberArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accountMember:AccountMember',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    email = registerOutput<String>('email');
    policies = registerOutput<List<AccountMemberPolicy>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountMemberPolicy>(guardedValue, (value) => AccountMemberPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    roles = registerOutput<List<String>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    user = registerOutput<AccountMemberUser>('user', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountMemberUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [AccountMember] resource's state with the given [name] and [id].
  static AccountMember get(
    String name,
    pulumi.Input<String> id, {
    AccountMemberState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return AccountMember._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  AccountMember._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/accountMember:AccountMember',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    email = registerOutput<String>('email');
    policies = registerOutput<List<AccountMemberPolicy>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountMemberPolicy>(guardedValue, (value) => AccountMemberPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    roles = registerOutput<List<String>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    user = registerOutput<AccountMemberUser>('user', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountMemberUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [AccountMember] resource.
  AccountMember.reference(String urn)
    : super(
        'cloudflare:index/accountMember:AccountMember',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    email = registerOutput<String>('email');
    policies = registerOutput<List<AccountMemberPolicy>>('policies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<AccountMemberPolicy>(guardedValue, (value) => AccountMemberPolicy.fromMap((value as Map).cast<String, dynamic>())); });
    roles = registerOutput<List<String>>('roles', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    status = registerOutput<String>('status');
    user = registerOutput<AccountMemberUser>('user', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return AccountMemberUser.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
