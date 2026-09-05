import 'package:pulumi/pulumi.dart' as pulumi;
import 'zone_cache_variants_args.dart';
import 'zone_cache_variants_state.dart';
import 'zone_cache_variants_value.dart';

/// Accepted Permissions
///
/// - `Zone Read`
/// - `Zone Settings Read`
/// - `Zone Settings Write`
/// - `Zone Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleZoneCacheVariants = new cloudflare.ZoneCacheVariants("example_zone_cache_variants", {
///     zoneId: "023e105f4ecef8ad9ca31a8372d0c353",
///     value: {
///         avifs: [
///             "image/webp",
///             "image/jpeg",
///         ],
///         bmps: [
///             "image/webp",
///             "image/jpeg",
///         ],
///         gifs: [
///             "image/webp",
///             "image/jpeg",
///         ],
///         jp2s: [
///             "image/webp",
///             "image/avif",
///         ],
///         jpegs: [
///             "image/webp",
///             "image/avif",
///         ],
///         jpgs: [
///             "image/webp",
///             "image/avif",
///         ],
///         jpg2s: [
///             "image/webp",
///             "image/avif",
///         ],
///         pngs: [
///             "image/webp",
///             "image/avif",
///         ],
///         tifs: [
///             "image/webp",
///             "image/avif",
///         ],
///         tiffs: [
///             "image/webp",
///             "image/avif",
///         ],
///         webps: [
///             "image/jpeg",
///             "image/avif",
///         ],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_zone_cache_variants = cloudflare.ZoneCacheVariants("example_zone_cache_variants",
///     zone_id="023e105f4ecef8ad9ca31a8372d0c353",
///     value={
///         "avifs": [
///             "image/webp",
///             "image/jpeg",
///         ],
///         "bmps": [
///             "image/webp",
///             "image/jpeg",
///         ],
///         "gifs": [
///             "image/webp",
///             "image/jpeg",
///         ],
///         "jp2s": [
///             "image/webp",
///             "image/avif",
///         ],
///         "jpegs": [
///             "image/webp",
///             "image/avif",
///         ],
///         "jpgs": [
///             "image/webp",
///             "image/avif",
///         ],
///         "jpg2s": [
///             "image/webp",
///             "image/avif",
///         ],
///         "pngs": [
///             "image/webp",
///             "image/avif",
///         ],
///         "tifs": [
///             "image/webp",
///             "image/avif",
///         ],
///         "tiffs": [
///             "image/webp",
///             "image/avif",
///         ],
///         "webps": [
///             "image/jpeg",
///             "image/avif",
///         ],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleZoneCacheVariants = new Cloudflare.ZoneCacheVariants("example_zone_cache_variants", new()
///     {
///         ZoneId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Value = new Cloudflare.Inputs.ZoneCacheVariantsValueArgs
///         {
///             Avifs = new[]
///             {
///                 "image/webp",
///                 "image/jpeg",
///             },
///             Bmps = new[]
///             {
///                 "image/webp",
///                 "image/jpeg",
///             },
///             Gifs = new[]
///             {
///                 "image/webp",
///                 "image/jpeg",
///             },
///             Jp2s = new[]
///             {
///                 "image/webp",
///                 "image/avif",
///             },
///             Jpegs = new[]
///             {
///                 "image/webp",
///                 "image/avif",
///             },
///             Jpgs = new[]
///             {
///                 "image/webp",
///                 "image/avif",
///             },
///             Jpg2s = new[]
///             {
///                 "image/webp",
///                 "image/avif",
///             },
///             Pngs = new[]
///             {
///                 "image/webp",
///                 "image/avif",
///             },
///             Tifs = new[]
///             {
///                 "image/webp",
///                 "image/avif",
///             },
///             Tiffs = new[]
///             {
///                 "image/webp",
///                 "image/avif",
///             },
///             Webps = new[]
///             {
///                 "image/jpeg",
///                 "image/avif",
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
/// 		_, err := cloudflare.NewZoneCacheVariants(ctx, "example_zone_cache_variants", &cloudflare.ZoneCacheVariantsArgs{
/// 			ZoneId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Value: &cloudflare.ZoneCacheVariantsValueArgs{
/// 				Avifs: pulumi.StringArray{
/// 					pulumi.String("image/webp"),
/// 					pulumi.String("image/jpeg"),
/// 				},
/// 				Bmps: pulumi.StringArray{
/// 					pulumi.String("image/webp"),
/// 					pulumi.String("image/jpeg"),
/// 				},
/// 				Gifs: pulumi.StringArray{
/// 					pulumi.String("image/webp"),
/// 					pulumi.String("image/jpeg"),
/// 				},
/// 				Jp2s: pulumi.StringArray{
/// 					pulumi.String("image/webp"),
/// 					pulumi.String("image/avif"),
/// 				},
/// 				Jpegs: pulumi.StringArray{
/// 					pulumi.String("image/webp"),
/// 					pulumi.String("image/avif"),
/// 				},
/// 				Jpgs: pulumi.StringArray{
/// 					pulumi.String("image/webp"),
/// 					pulumi.String("image/avif"),
/// 				},
/// 				Jpg2s: pulumi.StringArray{
/// 					pulumi.String("image/webp"),
/// 					pulumi.String("image/avif"),
/// 				},
/// 				Pngs: pulumi.StringArray{
/// 					pulumi.String("image/webp"),
/// 					pulumi.String("image/avif"),
/// 				},
/// 				Tifs: pulumi.StringArray{
/// 					pulumi.String("image/webp"),
/// 					pulumi.String("image/avif"),
/// 				},
/// 				Tiffs: pulumi.StringArray{
/// 					pulumi.String("image/webp"),
/// 					pulumi.String("image/avif"),
/// 				},
/// 				Webps: pulumi.StringArray{
/// 					pulumi.String("image/jpeg"),
/// 					pulumi.String("image/avif"),
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
/// resource "cloudflare_zonecachevariants" "example_zone_cache_variants" {
///   zone_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   value = {
///     avifs = ["image/webp", "image/jpeg"]
///     bmps  = ["image/webp", "image/jpeg"]
///     gifs  = ["image/webp", "image/jpeg"]
///     jp2s  = ["image/webp", "image/avif"]
///     jpegs = ["image/webp", "image/avif"]
///     jpgs  = ["image/webp", "image/avif"]
///     jpg2s = ["image/webp", "image/avif"]
///     pngs  = ["image/webp", "image/avif"]
///     tifs  = ["image/webp", "image/avif"]
///     tiffs = ["image/webp", "image/avif"]
///     webps = ["image/jpeg", "image/avif"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ZoneCacheVariants;
/// import com.pulumi.cloudflare.ZoneCacheVariantsArgs;
/// import com.pulumi.cloudflare.inputs.ZoneCacheVariantsValueArgs;
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
///         var exampleZoneCacheVariants = new ZoneCacheVariants("exampleZoneCacheVariants", ZoneCacheVariantsArgs.builder()
///             .zoneId("023e105f4ecef8ad9ca31a8372d0c353")
///             .value(ZoneCacheVariantsValueArgs.builder()
///                 .avifs(
///                     "image/webp",
///                     "image/jpeg")
///                 .bmps(
///                     "image/webp",
///                     "image/jpeg")
///                 .gifs(
///                     "image/webp",
///                     "image/jpeg")
///                 .jp2s(
///                     "image/webp",
///                     "image/avif")
///                 .jpegs(
///                     "image/webp",
///                     "image/avif")
///                 .jpgs(
///                     "image/webp",
///                     "image/avif")
///                 .jpg2s(
///                     "image/webp",
///                     "image/avif")
///                 .pngs(
///                     "image/webp",
///                     "image/avif")
///                 .tifs(
///                     "image/webp",
///                     "image/avif")
///                 .tiffs(
///                     "image/webp",
///                     "image/avif")
///                 .webps(
///                     "image/jpeg",
///                     "image/avif")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleZoneCacheVariants:
///     type: cloudflare:ZoneCacheVariants
///     name: example_zone_cache_variants
///     properties:
///       zoneId: 023e105f4ecef8ad9ca31a8372d0c353
///       value:
///         avifs:
///           - image/webp
///           - image/jpeg
///         bmps:
///           - image/webp
///           - image/jpeg
///         gifs:
///           - image/webp
///           - image/jpeg
///         jp2s:
///           - image/webp
///           - image/avif
///         jpegs:
///           - image/webp
///           - image/avif
///         jpgs:
///           - image/webp
///           - image/avif
///         jpg2s:
///           - image/webp
///           - image/avif
///         pngs:
///           - image/webp
///           - image/avif
///         tifs:
///           - image/webp
///           - image/avif
///         tiffs:
///           - image/webp
///           - image/avif
///         webps:
///           - image/jpeg
///           - image/avif
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/zoneCacheVariants:ZoneCacheVariants example '<zone_id>'
/// ```
class ZoneCacheVariants extends pulumi.CustomResource {
  /// Whether the setting is editable.
  late final pulumi.Output<bool> editable;
  /// Last time this setting was modified.
  late final pulumi.Output<String> modifiedOn;
  /// Value of the zone setting.
  late final pulumi.Output<ZoneCacheVariantsValue> value;
  /// Identifier.
  late final pulumi.Output<String> zoneId;

  /// Creates a new [ZoneCacheVariants].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ZoneCacheVariants]. {@macro pulumi_index_zone_cache_variants_zone_cache_variants_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ZoneCacheVariants(
    String name, {
    ZoneCacheVariantsArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneCacheVariants:ZoneCacheVariants',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<ZoneCacheVariantsValue>('value', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneCacheVariantsValue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Gets an existing [ZoneCacheVariants] resource's state with the given [name] and [id].
  static ZoneCacheVariants get(
    String name,
    pulumi.Input<String> id, {
    ZoneCacheVariantsState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ZoneCacheVariants._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ZoneCacheVariants._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/zoneCacheVariants:ZoneCacheVariants',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<ZoneCacheVariantsValue>('value', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneCacheVariantsValue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
  }

  /// Creates a typed reference to an existing [ZoneCacheVariants] resource.
  ZoneCacheVariants.reference(String urn)
    : super(
        'cloudflare:index/zoneCacheVariants:ZoneCacheVariants',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    editable = registerOutput<bool>('editable');
    modifiedOn = registerOutput<String>('modifiedOn');
    value = registerOutput<ZoneCacheVariantsValue>('value', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ZoneCacheVariantsValue.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    zoneId = registerOutput<String>('zoneId');
  }
}
