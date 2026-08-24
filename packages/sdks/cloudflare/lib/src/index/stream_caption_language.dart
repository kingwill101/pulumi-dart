import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_caption_language_args.dart';
import 'stream_caption_language_state.dart';

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
/// const exampleStreamCaptionLanguage = new cloudflare.StreamCaptionLanguage("example_stream_caption_language", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     identifier: "ea95132c15732412d22c1476fa83f27a",
///     language: "tr",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_stream_caption_language = cloudflare.StreamCaptionLanguage("example_stream_caption_language",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     identifier="ea95132c15732412d22c1476fa83f27a",
///     language="tr")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleStreamCaptionLanguage = new Cloudflare.StreamCaptionLanguage("example_stream_caption_language", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Identifier = "ea95132c15732412d22c1476fa83f27a",
///         Language = "tr",
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
/// 		_, err := cloudflare.NewStreamCaptionLanguage(ctx, "example_stream_caption_language", &cloudflare.StreamCaptionLanguageArgs{
/// 			AccountId:  pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Identifier: pulumi.String("ea95132c15732412d22c1476fa83f27a"),
/// 			Language:   pulumi.String("tr"),
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
/// resource "cloudflare_streamcaptionlanguage" "example_stream_caption_language" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
///   identifier = "ea95132c15732412d22c1476fa83f27a"
///   language   = "tr"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.StreamCaptionLanguage;
/// import com.pulumi.cloudflare.StreamCaptionLanguageArgs;
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
///         var exampleStreamCaptionLanguage = new StreamCaptionLanguage("exampleStreamCaptionLanguage", StreamCaptionLanguageArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .identifier("ea95132c15732412d22c1476fa83f27a")
///             .language("tr")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleStreamCaptionLanguage:
///     type: cloudflare:StreamCaptionLanguage
///     name: example_stream_caption_language
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       identifier: ea95132c15732412d22c1476fa83f27a
///       language: tr
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class StreamCaptionLanguage extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// The WebVTT file containing the caption or subtitle content.
  late final pulumi.Output<String?> file;
  /// Whether the caption was generated via AI.
  late final pulumi.Output<bool> generated;
  /// A Cloudflare-generated unique identifier for a media item.
  late final pulumi.Output<String> identifier;
  /// The language label displayed in the native language to users.
  late final pulumi.Output<String> label;
  /// The language tag in BCP 47 format.
  late final pulumi.Output<String> language;
  /// The status of a generated caption.
  /// Available values: "ready", "inprogress", "error".
  late final pulumi.Output<String> status;

  /// Creates a new [StreamCaptionLanguage].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamCaptionLanguage]. {@macro pulumi_index_stream_caption_language_stream_caption_language_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamCaptionLanguage(
    String name, {
    StreamCaptionLanguageArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamCaptionLanguage:StreamCaptionLanguage',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    file = registerOutput<String?>('file');
    generated = registerOutput<bool>('generated');
    identifier = registerOutput<String>('identifier');
    label = registerOutput<String>('label');
    language = registerOutput<String>('language');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [StreamCaptionLanguage] resource's state with the given [name] and [id].
  static StreamCaptionLanguage get(
    String name,
    pulumi.Input<String> id, {
    StreamCaptionLanguageState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StreamCaptionLanguage._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StreamCaptionLanguage._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamCaptionLanguage:StreamCaptionLanguage',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    file = registerOutput<String?>('file');
    generated = registerOutput<bool>('generated');
    identifier = registerOutput<String>('identifier');
    label = registerOutput<String>('label');
    language = registerOutput<String>('language');
    status = registerOutput<String>('status');
  }

  /// Creates a typed reference to an existing [StreamCaptionLanguage] resource.
  StreamCaptionLanguage.reference(String urn)
    : super(
        'cloudflare:index/streamCaptionLanguage:StreamCaptionLanguage',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    file = registerOutput<String?>('file');
    generated = registerOutput<bool>('generated');
    identifier = registerOutput<String>('identifier');
    label = registerOutput<String>('label');
    language = registerOutput<String>('language');
    status = registerOutput<String>('status');
  }
}
