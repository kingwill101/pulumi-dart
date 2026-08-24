import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_download_args.dart';
import 'stream_download_audio.dart';
import 'stream_download_default.dart';
import 'stream_download_state.dart';

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
/// const exampleStreamDownload = new cloudflare.StreamDownload("example_stream_download", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     identifier: "ea95132c15732412d22c1476fa83f27a",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_stream_download = cloudflare.StreamDownload("example_stream_download",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     identifier="ea95132c15732412d22c1476fa83f27a")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleStreamDownload = new Cloudflare.StreamDownload("example_stream_download", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Identifier = "ea95132c15732412d22c1476fa83f27a",
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
/// 		_, err := cloudflare.NewStreamDownload(ctx, "example_stream_download", &cloudflare.StreamDownloadArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Identifier: pulumi.String("ea95132c15732412d22c1476fa83f27a"),
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
/// resource "cloudflare_streamdownload" "example_stream_download" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   identifier = "ea95132c15732412d22c1476fa83f27a"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.StreamDownload;
/// import com.pulumi.cloudflare.StreamDownloadArgs;
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
///         var exampleStreamDownload = new StreamDownload("exampleStreamDownload", StreamDownloadArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .identifier("ea95132c15732412d22c1476fa83f27a")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleStreamDownload:
///     type: cloudflare:StreamDownload
///     name: example_stream_download
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       identifier: ea95132c15732412d22c1476fa83f27a
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class StreamDownload extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// The audio-only download. Only present if this download type has been created.
  late final pulumi.Output<StreamDownloadAudio> audio;
  /// The default video download. Only present if this download type has been created.
  late final pulumi.Output<StreamDownloadDefault> default_;
  /// A Cloudflare-generated unique identifier for a media item.
  late final pulumi.Output<String> identifier;

  /// Creates a new [StreamDownload].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamDownload]. {@macro pulumi_index_stream_download_stream_download_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamDownload(
    String name, {
    StreamDownloadArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamDownload:StreamDownload',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    audio = registerOutput<StreamDownloadAudio>('audio', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamDownloadAudio.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    default_ = registerOutput<StreamDownloadDefault>('default', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamDownloadDefault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identifier = registerOutput<String>('identifier');
  }

  /// Gets an existing [StreamDownload] resource's state with the given [name] and [id].
  static StreamDownload get(
    String name,
    pulumi.Input<String> id, {
    StreamDownloadState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StreamDownload._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StreamDownload._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamDownload:StreamDownload',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    audio = registerOutput<StreamDownloadAudio>('audio', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamDownloadAudio.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    default_ = registerOutput<StreamDownloadDefault>('default', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamDownloadDefault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identifier = registerOutput<String>('identifier');
  }

  /// Creates a typed reference to an existing [StreamDownload] resource.
  StreamDownload.reference(String urn)
    : super(
        'cloudflare:index/streamDownload:StreamDownload',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    audio = registerOutput<StreamDownloadAudio>('audio', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamDownloadAudio.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    default_ = registerOutput<StreamDownloadDefault>('default', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamDownloadDefault.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    identifier = registerOutput<String>('identifier');
  }
}
