import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_cloud_region_args.dart';
import 'origin_cloud_region_state.dart';

/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleOriginCloudRegion = new cloudflare.OriginCloudRegion("example_origin_cloud_region", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     originIp: "192.0.2.1",
///     region: "us-east-1",
///     vendor: "aws",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_origin_cloud_region = cloudflare.OriginCloudRegion("example_origin_cloud_region",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     origin_ip="192.0.2.1",
///     region="us-east-1",
///     vendor="aws")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleOriginCloudRegion = new Cloudflare.OriginCloudRegion("example_origin_cloud_region", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         OriginIp = "192.0.2.1",
///         Region = "us-east-1",
///         Vendor = "aws",
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
/// 		_, err := cloudflare.NewOriginCloudRegion(ctx, "example_origin_cloud_region", &cloudflare.OriginCloudRegionArgs{
/// 			ZoneId:   pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			OriginIp: pulumi.String("192.0.2.1"),
/// 			Region:   pulumi.String("us-east-1"),
/// 			Vendor:   pulumi.String("aws"),
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
/// resource "cloudflare_origincloudregion" "example_origin_cloud_region" {
///   zone_id   = "023e105f4ecef8ad9ca31a8372d0c353"
///   origin_ip = "192.0.2.1"
///   region    = "us-east-1"
///   vendor    = "aws"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.OriginCloudRegion;
/// import com.pulumi.cloudflare.OriginCloudRegionArgs;
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
///         var exampleOriginCloudRegion = new OriginCloudRegion("exampleOriginCloudRegion", OriginCloudRegionArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .originIp("192.0.2.1")
///             .region("us-east-1")
///             .vendor("aws")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleOriginCloudRegion:
///     type: cloudflare:OriginCloudRegion
///     name: example_origin_cloud_region
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       originIp: 192.0.2.1
///       region: us-east-1
///       vendor: aws
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/originCloudRegion:OriginCloudRegion example '<zone_id>/<origin_ip>'
/// ```
class OriginCloudRegion extends pulumi.CustomResource {
  /// Time this mapping was last modified.
  late final pulumi.Output<String> modifiedOn;
  /// Origin IP address (IPv4 or IPv6). For the single PUT endpoint (`PUT /origin/cloud_regions/{origin_ip}`), this field must match the path parameter or the request will be rejected with a 400 error. For the batch PUT endpoint, this field identifies which mapping to upsert.
  late final pulumi.Output<String> originIp;
  /// Cloud vendor region identifier. Must be a valid region for the specified vendor as returned by the supportedRegions endpoint.
  late final pulumi.Output<String> region;
  /// Cloud vendor hosting the origin. Must be one of the supported vendors.
  /// Available values: "aws", "azure", "gcp", "oci".
  late final pulumi.Output<String> vendor;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [OriginCloudRegion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OriginCloudRegion]. {@macro pulumi_index_origin_cloud_region_origin_cloud_region_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OriginCloudRegion(
    String name, {
    OriginCloudRegionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/originCloudRegion:OriginCloudRegion',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    modifiedOn = registerOutput<String>('modifiedOn');
    originIp = registerOutput<String>('originIp');
    region = registerOutput<String>('region');
    vendor = registerOutput<String>('vendor');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [OriginCloudRegion] resource's state with the given [name] and [id].
  static OriginCloudRegion get(
    String name,
    pulumi.Input<String> id, {
    OriginCloudRegionState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return OriginCloudRegion._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  OriginCloudRegion._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/originCloudRegion:OriginCloudRegion',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    modifiedOn = registerOutput<String>('modifiedOn');
    originIp = registerOutput<String>('originIp');
    region = registerOutput<String>('region');
    vendor = registerOutput<String>('vendor');
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [OriginCloudRegion] resource.
  OriginCloudRegion.reference(String urn)
    : super(
        'cloudflare:index/originCloudRegion:OriginCloudRegion',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    modifiedOn = registerOutput<String>('modifiedOn');
    originIp = registerOutput<String>('originIp');
    region = registerOutput<String>('region');
    vendor = registerOutput<String>('vendor');
    zoneId = registerOutput<String>('zoneId');
  }
}
