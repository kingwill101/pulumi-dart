import 'package:pulumi/pulumi.dart' as pulumi;
import 'magic_transit_site_args.dart';
import 'magic_transit_site_location.dart';
import 'magic_transit_site_state.dart';

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
/// const exampleMagicTransitSite = new cloudflare.MagicTransitSite("example_magic_transit_site", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "site_1",
///     connectorId: "ac60d3d0435248289d446cedd870bcf4",
///     description: "description",
///     haMode: true,
///     location: {
///         lat: "37.6192",
///         lon: "122.3816",
///     },
///     secondaryConnectorId: "8d67040d3835dbcf46ce29da440dc482",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_magic_transit_site = cloudflare.MagicTransitSite("example_magic_transit_site",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="site_1",
///     connector_id="ac60d3d0435248289d446cedd870bcf4",
///     description="description",
///     ha_mode=True,
///     location={
///         "lat": "37.6192",
///         "lon": "122.3816",
///     },
///     secondary_connector_id="8d67040d3835dbcf46ce29da440dc482")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleMagicTransitSite = new Cloudflare.MagicTransitSite("example_magic_transit_site", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "site_1",
///         ConnectorId = "ac60d3d0435248289d446cedd870bcf4",
///         Description = "description",
///         HaMode = true,
///         Location = new Cloudflare.Inputs.MagicTransitSiteLocationArgs
///         {
///             Lat = "37.6192",
///             Lon = "122.3816",
///         },
///         SecondaryConnectorId = "8d67040d3835dbcf46ce29da440dc482",
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
/// 		_, err := cloudflare.NewMagicTransitSite(ctx, "example_magic_transit_site", &cloudflare.MagicTransitSiteArgs{
/// 			AccountId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:        pulumi.String("site_1"),
/// 			ConnectorId: pulumi.String("ac60d3d0435248289d446cedd870bcf4"),
/// 			Description: pulumi.String("description"),
/// 			HaMode:      pulumi.Bool(true),
/// 			Location: &cloudflare.MagicTransitSiteLocationArgs{
/// 				Lat: pulumi.String("37.6192"),
/// 				Lon: pulumi.String("122.3816"),
/// 			},
/// 			SecondaryConnectorId: pulumi.String("8d67040d3835dbcf46ce29da440dc482"),
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
/// resource "cloudflare_magictransitsite" "example_magic_transit_site" {
///   account_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   name         = "site_1"
///   connector_id = "ac60d3d0435248289d446cedd870bcf4"
///   description  = "description"
///   ha_mode      = true
///   location = {
///     lat = "37.6192"
///     lon = "122.3816"
///   }
///   secondary_connector_id = "8d67040d3835dbcf46ce29da440dc482"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.MagicTransitSite;
/// import com.pulumi.cloudflare.MagicTransitSiteArgs;
/// import com.pulumi.cloudflare.inputs.MagicTransitSiteLocationArgs;
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
///         var exampleMagicTransitSite = new MagicTransitSite("exampleMagicTransitSite", MagicTransitSiteArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("site_1")
///             .connectorId("ac60d3d0435248289d446cedd870bcf4")
///             .description("description")
///             .haMode(true)
///             .location(MagicTransitSiteLocationArgs.builder()
///                 .lat("37.6192")
///                 .lon("122.3816")
///                 .build())
///             .secondaryConnectorId("8d67040d3835dbcf46ce29da440dc482")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleMagicTransitSite:
///     type: cloudflare:MagicTransitSite
///     name: example_magic_transit_site
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: site_1
///       connectorId: ac60d3d0435248289d446cedd870bcf4
///       description: description
///       haMode: true
///       location:
///         lat: '37.6192'
///         lon: '122.3816'
///       secondaryConnectorId: 8d67040d3835dbcf46ce29da440dc482
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/magicTransitSite:MagicTransitSite example '<account_id>/<site_id>'
/// ```
class MagicTransitSite extends pulumi.CustomResource {
  /// Identifier
  late final pulumi.Output<String> accountId;
  /// Magic Connector identifier tag.
  late final pulumi.Output<String?> connectorId;
  late final pulumi.Output<String?> description;
  /// Site high availability mode. If set to true, the site can have two connectors and runs in high availability mode.
  late final pulumi.Output<bool?> haMode;
  /// Location of site in latitude and longitude.
  late final pulumi.Output<MagicTransitSiteLocation?> location;
  /// The name of the site.
  late final pulumi.Output<String> name;
  /// Magic Connector identifier tag. Used when high availability mode is on.
  late final pulumi.Output<String?> secondaryConnectorId;

  /// Creates a new [MagicTransitSite].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [MagicTransitSite]. {@macro pulumi_index_magic_transit_site_magic_transit_site_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  MagicTransitSite(
    String name, {
    MagicTransitSiteArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitSite:MagicTransitSite',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    connectorId = registerOutput<String?>('connectorId');
    description = registerOutput<String?>('description');
    haMode = registerOutput<bool?>('haMode');
    location = registerOutput<MagicTransitSiteLocation?>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    secondaryConnectorId = registerOutput<String?>('secondaryConnectorId');
  }

  /// Gets an existing [MagicTransitSite] resource's state with the given [name] and [id].
  static MagicTransitSite get(
    String name,
    pulumi.Input<String> id, {
    MagicTransitSiteState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return MagicTransitSite._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  MagicTransitSite._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/magicTransitSite:MagicTransitSite',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    connectorId = registerOutput<String?>('connectorId');
    description = registerOutput<String?>('description');
    haMode = registerOutput<bool?>('haMode');
    location = registerOutput<MagicTransitSiteLocation?>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    secondaryConnectorId = registerOutput<String?>('secondaryConnectorId');
  }

  /// Creates a typed reference to an existing [MagicTransitSite] resource.
  MagicTransitSite.reference(String urn)
    : super(
        'cloudflare:index/magicTransitSite:MagicTransitSite',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    connectorId = registerOutput<String?>('connectorId');
    description = registerOutput<String?>('description');
    haMode = registerOutput<bool?>('haMode');
    location = registerOutput<MagicTransitSiteLocation?>('location', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return MagicTransitSiteLocation.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    secondaryConnectorId = registerOutput<String?>('secondaryConnectorId');
  }
}
