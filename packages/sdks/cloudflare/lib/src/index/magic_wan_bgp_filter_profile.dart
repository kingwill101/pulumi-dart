import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_wan_bgp_filter_profile_args.dart';
import 'magic_wan_bgp_filter_profile_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMagicWanBgpFilterProfile = new cloudflare.MagicWanBgpFilterProfile("example_magic_wan_bgp_filter_profile", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     matchAction: "allow",
///     name: "Allowed On-Prem Imports",
///     targets: ["10.0.0.0/8{8,32}"],
///     description: "Allowed corporate subnets from on-premises",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_wan_bgp_filter_profile = cloudflare.MagicWanBgpFilterProfile("example_magic_wan_bgp_filter_profile",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     match_action="allow",
///     name="Allowed On-Prem Imports",
///     targets=["10.0.0.0/8{8,32}"],
///     description="Allowed corporate subnets from on-premises")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMagicWanBgpFilterProfile = new Cloudflare.MagicWanBgpFilterProfile("example_magic_wan_bgp_filter_profile", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         MatchAction = "allow",
///         Name = "Allowed On-Prem Imports",
///         Targets = new[]
///         {
///             "10.0.0.0/8{8,32}",
///         },
///         Description = "Allowed corporate subnets from on-premises",
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
/// 		_, err := cloudflare.NewMagicWanBgpFilterProfile(ctx, "example_magic_wan_bgp_filter_profile", &cloudflare.MagicWanBgpFilterProfileArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			MatchAction: pulumi.String("allow"),
/// 			Name:        pulumi.String("Allowed On-Prem Imports"),
/// 			Targets: pulumi.StringArray{
/// 				pulumi.String("10.0.0.0/8{8,32}"),
/// 			},
/// 			Description: pulumi.String("Allowed corporate subnets from on-premises"),
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
/// resource "cloudflare_magic_wan_bgp_filter_profile" "example_magic_wan_bgp_filter_profile" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   account_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   match_action = "allow"
///   name         = "Allowed On-Prem Imports"
///   targets      = ["10.0.0.0/8{8,32}"]
///   description  = "Allowed corporate subnets from on-premises"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MagicWanBgpFilterProfile;
/// import com.pulumi.cloudflare.MagicWanBgpFilterProfileArgs;
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
///         var exampleMagicWanBgpFilterProfile = new MagicWanBgpFilterProfile("exampleMagicWanBgpFilterProfile", MagicWanBgpFilterProfileArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .matchAction("allow")
///             .name("Allowed On-Prem Imports")
///             .targets("10.0.0.0/8{8,32}")
///             .description("Allowed corporate subnets from on-premises")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicWanBgpFilterProfile:
///     type: cloudflare:MagicWanBgpFilterProfile
///     name: example_magic_wan_bgp_filter_profile
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       matchAction: allow
///       name: Allowed On-Prem Imports
///       targets:
///         - 10.0.0.0/8{8,32}
///       description: Allowed corporate subnets from on-premises
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicWanBgpFilterProfile:MagicWanBgpFilterProfile example '<account_id>/<profile_id>'
/// ```
class MagicWanBgpFilterProfile extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<String> createdOn;
  /// Description of the filter profile
  late final pulumi.Output<String> description;
  /// Action to take when a route matches one of the targets in this profile
  /// Available values: "allow", "deny".
  late final pulumi.Output<String> matchAction;
  late final pulumi.Output<String> modifiedOn;
  /// Friendly name for the filter profile
  late final pulumi.Output<String> name;
  /// List of CIDR prefixes. Each entry may carry an optional suffix that specifies which prefix lengths to match relative to the prefix length N: '{X,Y}' matches prefix lengths in the inclusive range [X, Y] where N &lt;= X &lt;= Y &lt;= max (max is 32 for IPv4, 128 for IPv6), '{X}' matches exactly length X (equivalent to {X,X}), '+' is shorthand for {N, max} (the prefix and all more-specific subnets, including at length N itself; valid even when N is the maximum length). Omit the suffix to match the prefix exactly at length N.
  late final pulumi.Output<List<String>> targets;

  /// Creates a new [MagicWanBgpFilterProfile].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicWanBgpFilterProfile]. {@macro pulumi_index_magic_wan_bgp_filter_profile_magic_wan_bgp_filter_profile_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicWanBgpFilterProfile(
    String name, {
    MagicWanBgpFilterProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicWanBgpFilterProfile:MagicWanBgpFilterProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.23.1').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    matchAction = registerOutput<String>('matchAction');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    targets = registerOutput<List<String>>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [MagicWanBgpFilterProfile] resource's state with the given [name] and [id].
  static MagicWanBgpFilterProfile get(
    String name,
    pulumi.Input<String> id, {
    MagicWanBgpFilterProfileState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicWanBgpFilterProfile._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicWanBgpFilterProfile._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicWanBgpFilterProfile:MagicWanBgpFilterProfile',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    matchAction = registerOutput<String>('matchAction');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    targets = registerOutput<List<String>>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [MagicWanBgpFilterProfile] resource.
  MagicWanBgpFilterProfile.reference(String urn)
    : super(
        'cloudflare:index/magicWanBgpFilterProfile:MagicWanBgpFilterProfile',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String>('description');
    matchAction = registerOutput<String>('matchAction');
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String>('name');
    targets = registerOutput<List<String>>('targets', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
