import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_cf1_site_args.dart';
import 'magic_transit_cf1_site_body.dart';
import 'magic_transit_cf1_site_location.dart';
import 'magic_transit_cf1_site_state.dart';

/// Accepted Permissions
///
/// - `Magic Transit Read`
/// - `Magic Transit Write`
/// - `Magic WAN Read`
/// - `Magic WAN Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleMagicTransitCf1Site = new cloudflare.MagicTransitCf1Site("example_magic_transit_cf1_site", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     bodies: [{
///         name: "Pad 34",
///         description: "Launch Pad 34",
///         location: {
///             lat: 28.521339842093845,
///             long: -80.56092644815843,
///             name: "Cape Canaveral",
///         },
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_transit_cf1_site = cloudflare.MagicTransitCf1Site("example_magic_transit_cf1_site",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     bodies=[{
///         "name": "Pad 34",
///         "description": "Launch Pad 34",
///         "location": {
///             "lat": 28.521339842093845,
///             "long": -80.56092644815843,
///             "name": "Cape Canaveral",
///         },
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
///     var exampleMagicTransitCf1Site = new Cloudflare.MagicTransitCf1Site("example_magic_transit_cf1_site", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Bodies = new[]
///         {
///             new Cloudflare.Inputs.MagicTransitCf1SiteBodyArgs
///             {
///                 Name = "Pad 34",
///                 Description = "Launch Pad 34",
///                 Location = new Cloudflare.Inputs.MagicTransitCf1SiteBodyLocationArgs
///                 {
///                     Lat = 28.521339842093845,
///                     Long = -80.56092644815843,
///                     Name = "Cape Canaveral",
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
/// 		_, err := cloudflare.NewMagicTransitCf1Site(ctx, "example_magic_transit_cf1_site", &cloudflare.MagicTransitCf1SiteArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Bodies: cloudflare.MagicTransitCf1SiteBodyArray{
/// 				&cloudflare.MagicTransitCf1SiteBodyArgs{
/// 					Name:        pulumi.String("Pad 34"),
/// 					Description: pulumi.String("Launch Pad 34"),
/// 					Location: &cloudflare.MagicTransitCf1SiteBodyLocationArgs{
/// 						Lat:  pulumi.Float64(28.521339842093845),
/// 						Long: pulumi.Float64(-80.56092644815843),
/// 						Name: pulumi.String("Cape Canaveral"),
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
/// resource "cloudflare_magictransitcf1site" "example_magic_transit_cf1_site" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   bodies {
///     name        = "Pad 34"
///     description = "Launch Pad 34"
///     location = {
///       lat  = 28.521339842093845
///       long = -80.56092644815843
///       name = "Cape Canaveral"
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
/// import com.pulumi.cloudflare.MagicTransitCf1Site;
/// import com.pulumi.cloudflare.MagicTransitCf1SiteArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitCf1SiteBodyArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitCf1SiteBodyLocationArgs;
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
///         var exampleMagicTransitCf1Site = new MagicTransitCf1Site("exampleMagicTransitCf1Site", MagicTransitCf1SiteArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .bodies(MagicTransitCf1SiteBodyArgs.builder()
///                 .name("Pad 34")
///                 .description("Launch Pad 34")
///                 .location(MagicTransitCf1SiteBodyLocationArgs.builder()
///                     .lat(28.521339842093845)
///                     .long_(-80.56092644815843)
///                     .name("Cape Canaveral")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicTransitCf1Site:
///     type: cloudflare:MagicTransitCf1Site
///     name: example_magic_transit_cf1_site
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       bodies:
///         - name: Pad 34
///           description: Launch Pad 34
///           location:
///             lat: 28.521339842093845
///             long: -80.56092644815843
///             name: Cape Canaveral
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicTransitCf1Site:MagicTransitCf1Site example '<account_id>/<cf1_site_id>'
/// ```
class MagicTransitCf1Site extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  late final pulumi.Output<List<MagicTransitCf1SiteBody>> bodies;
  late final pulumi.Output<String> createdOn;
  /// A human-provided description of the CF1 Site.
  late final pulumi.Output<String?> description;
  late final pulumi.Output<MagicTransitCf1SiteLocation?> location;
  late final pulumi.Output<String> modifiedOn;
  /// A human-provided name describing the CF1 Site that should be unique within the account.
  late final pulumi.Output<String?> name;

  /// Creates a new [MagicTransitCf1Site].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicTransitCf1Site]. {@macro pulumi_index_magic_transit_cf1_site_magic_transit_cf1_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicTransitCf1Site(
    String name, {
    MagicTransitCf1SiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitCf1Site:MagicTransitCf1Site',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    bodies = registerOutput<List<MagicTransitCf1SiteBody>>('bodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MagicTransitCf1SiteBody>(guardedValue, (value) => MagicTransitCf1SiteBody.fromMap((value as Map).cast<String, dynamic>())); });
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    location = registerOutput<MagicTransitCf1SiteLocation?>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitCf1SiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String?>('name');
  }

  /// Gets an existing [MagicTransitCf1Site] resource's state with the given [name] and [id].
  static MagicTransitCf1Site get(
    String name,
    pulumi.Input<String> id, {
    MagicTransitCf1SiteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicTransitCf1Site._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicTransitCf1Site._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitCf1Site:MagicTransitCf1Site',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    bodies = registerOutput<List<MagicTransitCf1SiteBody>>('bodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MagicTransitCf1SiteBody>(guardedValue, (value) => MagicTransitCf1SiteBody.fromMap((value as Map).cast<String, dynamic>())); });
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    location = registerOutput<MagicTransitCf1SiteLocation?>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitCf1SiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String?>('name');
  }

  /// Creates a typed reference to an existing [MagicTransitCf1Site] resource.
  MagicTransitCf1Site.reference(String urn)
    : super(
        'cloudflare:index/magicTransitCf1Site:MagicTransitCf1Site',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    bodies = registerOutput<List<MagicTransitCf1SiteBody>>('bodies', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<MagicTransitCf1SiteBody>(guardedValue, (value) => MagicTransitCf1SiteBody.fromMap((value as Map).cast<String, dynamic>())); });
    createdOn = registerOutput<String>('createdOn');
    description = registerOutput<String?>('description');
    location = registerOutput<MagicTransitCf1SiteLocation?>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitCf1SiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    modifiedOn = registerOutput<String>('modifiedOn');
    this.name = registerOutput<String?>('name');
  }
}
