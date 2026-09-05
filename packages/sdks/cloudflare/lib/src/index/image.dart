import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_args.dart';
import 'image_state.dart';

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
/// const exampleImage = new cloudflare.Image("example_image", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     imageId: "id",
///     creator: "creator",
///     file: "Example data",
///     metadata: {},
///     requireSignedUrls: true,
///     url: "https://example.com/path/to/logo.png",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_image = cloudflare.Image("example_image",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     image_id="id",
///     creator="creator",
///     file="Example data",
///     metadata={},
///     require_signed_urls=True,
///     url="https://example.com/path/to/logo.png")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleImage = new Cloudflare.Image("example_image", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         ImageId = "id",
///         Creator = "creator",
///         File = "Example data",
///         Metadata = null,
///         RequireSignedUrls = true,
///         Url = "https://example.com/path/to/logo.png",
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
/// 		_, err := cloudflare.NewImage(ctx, "example_image", &cloudflare.ImageArgs{
/// 			AccountId:         pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			ImageId:           pulumi.String("id"),
/// 			Creator:           pulumi.String("creator"),
/// 			File:              pulumi.String("Example data"),
/// 			Metadata:          pulumi.String{},
/// 			RequireSignedUrls: pulumi.Bool(true),
/// 			Url:               pulumi.String("https://example.com/path/to/logo.png"),
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
/// resource "cloudflare_image" "example_image" {
///   account_id          = "023e105f4ecef8ad9ca31a8372d0c353"
///   image_id            = "id"
///   creator             = "creator"
///   file                = "Example data"
///   metadata            = {}
///   require_signed_urls = true
///   url                 = "https://example.com/path/to/logo.png"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Image;
/// import com.pulumi.cloudflare.ImageArgs;
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
///         var exampleImage = new Image("exampleImage", ImageArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .imageId("id")
///             .creator("creator")
///             .file("Example data")
///             .metadata(Map.ofEntries(
///             ))
///             .requireSignedUrls(true)
///             .url("https://example.com/path/to/logo.png")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleImage:
///     type: cloudflare:Image
///     name: example_image
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       imageId: id
///       creator: creator
///       file: Example data
///       metadata: {}
///       requireSignedUrls: true
///       url: https://example.com/path/to/logo.png
/// ```
///
///
/// ## Import
///
/// ```sh
/// $ pulumi import cloudflare:index/image:Image example '<account_id>/<image_id>'
/// ```
class Image extends pulumi.CustomResource {
  /// Account identifier tag.
  late final pulumi.Output<String> accountId;
  /// Can set the creator field with an internal user ID.
  late final pulumi.Output<String?> creator;
  /// An image binary data. Only needed when type is uploading a file.
  late final pulumi.Output<String?> file;
  /// Image file name.
  late final pulumi.Output<String> filename;
  /// An optional custom unique identifier for your image.
  late final pulumi.Output<String> imageId;
  /// User modifiable key-value store. Can be used for keeping references to another system of record for managing images. Metadata must not exceed 1024 bytes.
  late final pulumi.Output<String> meta;
  /// User modifiable key-value store. Can use used for keeping references to another system of record for managing images.
  late final pulumi.Output<String?> metadata;
  /// Indicates whether the image requires a signature token for the access.
  late final pulumi.Output<bool> requireSignedUrls;
  /// When the media item was uploaded.
  late final pulumi.Output<String> uploaded;
  /// A URL to fetch an image from origin. Only needed when type is uploading from a URL.
  late final pulumi.Output<String?> url;
  /// Object specifying available variants for an image.
  late final pulumi.Output<List<String>> variants;

  /// Creates a new [Image].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Image]. {@macro pulumi_index_image_image_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Image(
    String name, {
    ImageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/image:Image',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    creator = registerOutput<String?>('creator');
    file = registerOutput<String?>('file');
    filename = registerOutput<String>('filename');
    imageId = registerOutput<String>('imageId');
    meta = registerOutput<String>('meta');
    metadata = registerOutput<String?>('metadata');
    requireSignedUrls = registerOutput<bool>('requireSignedUrls');
    uploaded = registerOutput<String>('uploaded');
    url = registerOutput<String?>('url');
    variants = registerOutput<List<String>>('variants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Gets an existing [Image] resource's state with the given [name] and [id].
  static Image get(
    String name,
    pulumi.Input<String> id, {
    ImageState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Image._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Image._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/image:Image',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    creator = registerOutput<String?>('creator');
    file = registerOutput<String?>('file');
    filename = registerOutput<String>('filename');
    imageId = registerOutput<String>('imageId');
    meta = registerOutput<String>('meta');
    metadata = registerOutput<String?>('metadata');
    requireSignedUrls = registerOutput<bool>('requireSignedUrls');
    uploaded = registerOutput<String>('uploaded');
    url = registerOutput<String?>('url');
    variants = registerOutput<List<String>>('variants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }

  /// Creates a typed reference to an existing [Image] resource.
  Image.reference(String urn)
    : super(
        'cloudflare:index/image:Image',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    creator = registerOutput<String?>('creator');
    file = registerOutput<String?>('file');
    filename = registerOutput<String>('filename');
    imageId = registerOutput<String>('imageId');
    meta = registerOutput<String>('meta');
    metadata = registerOutput<String?>('metadata');
    requireSignedUrls = registerOutput<bool>('requireSignedUrls');
    uploaded = registerOutput<String>('uploaded');
    url = registerOutput<String?>('url');
    variants = registerOutput<List<String>>('variants', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
  }
}
