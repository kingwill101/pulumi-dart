import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_watermark_args.dart';
import 'stream_watermark_state.dart';

/// Accepted Permissions
///
/// - `Stream Read`
/// - `Stream Write`
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as cloudflare from "@pulumi/cloudflare";
///
/// const exampleStreamWatermark = new cloudflare.StreamWatermark("example_stream_watermark", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     name: "Marketing Videos",
///     opacity: 0.75,
///     padding: 0.1,
///     position: "center",
///     scale: 0.1,
///     url: "https://example.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_stream_watermark = cloudflare.StreamWatermark("example_stream_watermark",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     name="Marketing Videos",
///     opacity=0.75,
///     padding=0.1,
///     position="center",
///     scale=0.1,
///     url="https://example.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleStreamWatermark = new Cloudflare.StreamWatermark("example_stream_watermark", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Name = "Marketing Videos",
///         Opacity = 0.75,
///         Padding = 0.1,
///         Position = "center",
///         Scale = 0.1,
///         Url = "https://example.com",
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
/// 		_, err := cloudflare.NewStreamWatermark(ctx, "example_stream_watermark", &cloudflare.StreamWatermarkArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Name:      pulumi.String("Marketing Videos"),
/// 			Opacity:   pulumi.Float64(0.75),
/// 			Padding:   pulumi.Float64(0.1),
/// 			Position:  pulumi.String("center"),
/// 			Scale:     pulumi.Float64(0.1),
/// 			Url:       pulumi.String("https://example.com"),
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
/// resource "cloudflare_streamwatermark" "example_stream_watermark" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   name       = "Marketing Videos"
///   opacity    = 0.75
///   padding    = 0.1
///   position   = "center"
///   scale      = 0.1
///   url        = "https://example.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.StreamWatermark;
/// import com.pulumi.cloudflare.StreamWatermarkArgs;
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
///         var exampleStreamWatermark = new StreamWatermark("exampleStreamWatermark", StreamWatermarkArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .name("Marketing Videos")
///             .opacity(0.75)
///             .padding(0.1)
///             .position("center")
///             .scale(0.1)
///             .url("https://example.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleStreamWatermark:
///     type: cloudflare:StreamWatermark
///     name: example_stream_watermark
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       name: Marketing Videos
///       opacity: 0.75
///       padding: 0.1
///       position: center
///       scale: 0.1
///       url: https://example.com
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class StreamWatermarkResource extends pulumi.CustomResource {
  /// The account identifier tag.
  late final pulumi.Output<String> accountId;
  /// The date and a time a watermark profile was created.
  late final pulumi.Output<String> created;
  /// The source URL for a downloaded image. If the watermark profile was created via direct upload, this field is null.
  late final pulumi.Output<String> downloadedFrom;
  /// The height of the image in pixels.
  late final pulumi.Output<int> height;
  /// The unique identifier for a watermark profile.
  late final pulumi.Output<String?> identifier;
  /// A short description of the watermark profile.
  late final pulumi.Output<String> name;
  /// The translucency of the image. A value of `0.0` makes the image completely transparent, and `1.0` makes the image completely opaque. Note that if the image is already semi-transparent, setting this to `1.0` will not make the image completely opaque.
  late final pulumi.Output<double> opacity;
  /// The whitespace between the adjacent edges (determined by position) of the video and the image. `0.0` indicates no padding, and `1.0` indicates a fully padded video width or length, as determined by the algorithm.
  late final pulumi.Output<double> padding;
  /// The location of the image. Valid positions are: `upperRight`, `upperLeft`, `lowerLeft`, `lowerRight`, and `center`. Note that `center` ignores the `padding` parameter.
  late final pulumi.Output<String> position;
  /// The size of the image relative to the overall size of the video. This parameter will adapt to horizontal and vertical videos automatically. `0.0` indicates no scaling (use the size of the image as-is), and `1.0`fills the entire video.
  late final pulumi.Output<double> scale;
  /// The size of the image in bytes.
  late final pulumi.Output<double> size;
  /// The unique identifier for a watermark profile.
  late final pulumi.Output<String> uid;
  /// URL of the watermark image to copy.
  late final pulumi.Output<String?> url;
  /// The width of the image in pixels.
  late final pulumi.Output<int> width;

  /// Creates a new [StreamWatermarkResource].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamWatermarkResource]. {@macro pulumi_index_stream_watermark_stream_watermark_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamWatermarkResource(
    String name, {
    StreamWatermarkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamWatermark:StreamWatermark',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    downloadedFrom = registerOutput<String>('downloadedFrom');
    height = registerOutput<int>('height');
    identifier = registerOutput<String?>('identifier');
    this.name = registerOutput<String>('name');
    opacity = registerOutput<double>('opacity');
    padding = registerOutput<double>('padding');
    position = registerOutput<String>('position');
    scale = registerOutput<double>('scale');
    size = registerOutput<double>('size');
    uid = registerOutput<String>('uid');
    url = registerOutput<String?>('url');
    width = registerOutput<int>('width');
  }

  /// Gets an existing [StreamWatermarkResource] resource's state with the given [name] and [id].
  static StreamWatermarkResource get(
    String name,
    pulumi.Input<String> id, {
    StreamWatermarkState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StreamWatermarkResource._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StreamWatermarkResource._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamWatermark:StreamWatermark',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    downloadedFrom = registerOutput<String>('downloadedFrom');
    height = registerOutput<int>('height');
    identifier = registerOutput<String?>('identifier');
    this.name = registerOutput<String>('name');
    opacity = registerOutput<double>('opacity');
    padding = registerOutput<double>('padding');
    position = registerOutput<String>('position');
    scale = registerOutput<double>('scale');
    size = registerOutput<double>('size');
    uid = registerOutput<String>('uid');
    url = registerOutput<String?>('url');
    width = registerOutput<int>('width');
  }

  /// Creates a typed reference to an existing [StreamWatermarkResource] resource.
  StreamWatermarkResource.reference(String urn)
    : super(
        'cloudflare:index/streamWatermark:StreamWatermark',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    downloadedFrom = registerOutput<String>('downloadedFrom');
    height = registerOutput<int>('height');
    identifier = registerOutput<String?>('identifier');
    this.name = registerOutput<String>('name');
    opacity = registerOutput<double>('opacity');
    padding = registerOutput<double>('padding');
    position = registerOutput<String>('position');
    scale = registerOutput<double>('scale');
    size = registerOutput<double>('size');
    uid = registerOutput<String>('uid');
    url = registerOutput<String?>('url');
    width = registerOutput<int>('width');
  }
}
