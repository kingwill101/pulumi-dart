import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_variant_args.dart';
import 'image_variant_options.dart';
import 'image_variant_state.dart';
import 'image_variant_variant.dart';

/// Accepted Permissions
///
/// - `Images Read`
/// - `Images Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleImageVariant = new cloudflare.ImageVariant("example_image_variant", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     imageVariantId: "hero",
///     options: {
///         fit: "scale-down",
///         height: 768,
///         metadata: "none",
///         width: 1366,
///     },
///     neverRequireSignedUrls: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_image_variant = cloudflare.ImageVariant("example_image_variant",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     image_variant_id="hero",
///     options={
///         "fit": "scale-down",
///         "height": float(768),
///         "metadata": "none",
///         "width": float(1366),
///     },
///     never_require_signed_urls=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleImageVariant = new Cloudflare.ImageVariant("example_image_variant", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ImageVariantId = "hero",
///         Options = new Cloudflare.Inputs.ImageVariantOptionsArgs
///         {
///             Fit = "scale-down",
///             Height = 768,
///             Metadata = "none",
///             Width = 1366,
///         },
///         NeverRequireSignedUrls = true,
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
/// 		_, err := cloudflare.NewImageVariant(ctx, "example_image_variant", &cloudflare.ImageVariantArgs{
/// 			AccountId:      pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ImageVariantId: pulumi.String("hero"),
/// 			Options: &cloudflare.ImageVariantOptionsArgs{
/// 				Fit:      pulumi.String("scale-down"),
/// 				Height:   pulumi.Float64(768),
/// 				Metadata: pulumi.String("none"),
/// 				Width:    pulumi.Float64(1366),
/// 			},
/// 			NeverRequireSignedUrls: pulumi.Bool(true),
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
/// resource "cloudflare_imagevariant" "example_image_variant" {
///   account_id       = "023e105f4ecef8ad9ca31a8372d0c353"
///   image_variant_id = "hero"
///   options = {
///     fit      = "scale-down"
///     height   = 768
///     metadata = "none"
///     width    = 1366
///   }
///   never_require_signed_urls = true
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.ImageVariant;
/// import com.pulumi.cloudflare.ImageVariantArgs;
/// import com.pulumi.cloudflare.inputs.ImageVariantOptionsArgs;
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
///         var exampleImageVariant = new ImageVariant("exampleImageVariant", ImageVariantArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .imageVariantId("hero")
///             .options(ImageVariantOptionsArgs.builder()
///                 .fit("scale-down")
///                 .height(768.0)
///                 .metadata("none")
///                 .width(1366.0)
///                 .build())
///             .neverRequireSignedUrls(true)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleImageVariant:
///     type: cloudflare:ImageVariant
///     name: example_image_variant
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       imageVariantId: hero
///       options:
///         fit: scale-down
///         height: 768
///         metadata: none
///         width: 1366
///       neverRequireSignedUrls: true
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/imageVariant:ImageVariant example '<account_id>/<variant_id>'
/// ```
class ImageVariant extends pulumi.CustomResource {
  /// Account identifier tag.
  late final pulumi.Output<String> accountId;
  /// The ID of this resource.
  late final pulumi.Output<String> imageVariantId;
  /// Indicates whether the variant can access an image without a signature, regardless of image access control.
  late final pulumi.Output<bool> neverRequireSignedUrls;
  /// Allows you to define image resizing sizes for different use cases.
  late final pulumi.Output<ImageVariantOptions> options;
  late final pulumi.Output<ImageVariantVariant> variant;

  /// Creates a new [ImageVariant].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageVariant]. {@macro pulumi_index_image_variant_image_variant_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageVariant(
    String name, {
    ImageVariantArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/imageVariant:ImageVariant',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    imageVariantId = registerOutput<String>('imageVariantId');
    neverRequireSignedUrls = registerOutput<bool>('neverRequireSignedUrls');
    this.options = registerOutput<ImageVariantOptions>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageVariantOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    variant = registerOutput<ImageVariantVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageVariantVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ImageVariant] resource's state with the given [name] and [id].
  static ImageVariant get(
    String name,
    pulumi.Input<String> id, {
    ImageVariantState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ImageVariant._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ImageVariant._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/imageVariant:ImageVariant',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    imageVariantId = registerOutput<String>('imageVariantId');
    neverRequireSignedUrls = registerOutput<bool>('neverRequireSignedUrls');
    this.options = registerOutput<ImageVariantOptions>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageVariantOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    variant = registerOutput<ImageVariantVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageVariantVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [ImageVariant] resource.
  ImageVariant.reference(String urn)
    : super(
        'cloudflare:index/imageVariant:ImageVariant',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    imageVariantId = registerOutput<String>('imageVariantId');
    neverRequireSignedUrls = registerOutput<bool>('neverRequireSignedUrls');
    this.options = registerOutput<ImageVariantOptions>('options', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageVariantOptions.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    variant = registerOutput<ImageVariantVariant>('variant', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageVariantVariant.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
