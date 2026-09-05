import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_audio_track_args.dart';
import 'stream_audio_track_audio.dart';
import 'stream_audio_track_state.dart';

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
/// const exampleStreamAudioTrack = new cloudflare.StreamAudioTrack("example_stream_audio_track", {
///     accountId: "023e105f4ecef8ad9ca31a8372d0c353",
///     identifier: "ea95132c15732412d22c1476fa83f27a",
///     audioIdentifier: "ea95132c15732412d22c1476fa83f27a",
///     "default": true,
///     label: "director commentary",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_stream_audio_track = cloudflare.StreamAudioTrack("example_stream_audio_track",
///     account_id="023e105f4ecef8ad9ca31a8372d0c353",
///     identifier="ea95132c15732412d22c1476fa83f27a",
///     audio_identifier="ea95132c15732412d22c1476fa83f27a",
///     default=True,
///     label="director commentary")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleStreamAudioTrack = new Cloudflare.StreamAudioTrack("example_stream_audio_track", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
///         Identifier = "ea95132c15732412d22c1476fa83f27a",
///         AudioIdentifier = "ea95132c15732412d22c1476fa83f27a",
///         Default = true,
///         Label = "director commentary",
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
/// 		_, err := cloudflare.NewStreamAudioTrack(ctx, "example_stream_audio_track", &cloudflare.StreamAudioTrackArgs{
/// 			AccountId:       pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
/// 			Identifier:      pulumi.String("ea95132c15732412d22c1476fa83f27a"),
/// 			AudioIdentifier: pulumi.String("ea95132c15732412d22c1476fa83f27a"),
/// 			Default:         pulumi.Bool(true),
/// 			Label:           pulumi.String("director commentary"),
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
/// resource "cloudflare_streamaudiotrack" "example_stream_audio_track" {
///   account_id       = "023e105f4ecef8ad9ca31a8372d0c353"
///   identifier       = "ea95132c15732412d22c1476fa83f27a"
///   audio_identifier = "ea95132c15732412d22c1476fa83f27a"
///   default          = true
///   label            = "director commentary"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.StreamAudioTrack;
/// import com.pulumi.cloudflare.StreamAudioTrackArgs;
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
///         var exampleStreamAudioTrack = new StreamAudioTrack("exampleStreamAudioTrack", StreamAudioTrackArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .identifier("ea95132c15732412d22c1476fa83f27a")
///             .audioIdentifier("ea95132c15732412d22c1476fa83f27a")
///             .default_(true)
///             .label("director commentary")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleStreamAudioTrack:
///     type: cloudflare:StreamAudioTrack
///     name: example_stream_audio_track
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       identifier: ea95132c15732412d22c1476fa83f27a
///       audioIdentifier: ea95132c15732412d22c1476fa83f27a
///       default: true
///       label: director commentary
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class StreamAudioTrack extends pulumi.CustomResource {
  /// The account identifier tag.
  late final pulumi.Output<String> accountId;
  /// The unique identifier for an additional audio track.
  late final pulumi.Output<String?> audioIdentifier;
  /// Array of audio tracks for the video.
  late final pulumi.Output<List<StreamAudioTrackAudio>> audios;
  /// Denotes whether the audio track will be played by default in a player.
  late final pulumi.Output<bool> default_;
  /// A Cloudflare-generated unique identifier for a media item.
  late final pulumi.Output<String> identifier;
  /// A string to uniquely identify the track amongst other audio track labels for the specified video.
  late final pulumi.Output<String?> label;
  /// Specifies the processing status of the video.
  /// Available values: "queued", "ready", "error".
  late final pulumi.Output<String> status;
  /// A Cloudflare-generated unique identifier for a media item.
  late final pulumi.Output<String> uid;

  /// Creates a new [StreamAudioTrack].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamAudioTrack]. {@macro pulumi_index_stream_audio_track_stream_audio_track_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamAudioTrack(
    String name, {
    StreamAudioTrackArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamAudioTrack:StreamAudioTrack',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    audioIdentifier = registerOutput<String?>('audioIdentifier');
    audios = registerOutput<List<StreamAudioTrackAudio>>('audios', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StreamAudioTrackAudio>(guardedValue, (value) => StreamAudioTrackAudio.fromMap((value as Map).cast<String, dynamic>())); });
    default_ = registerOutput<bool>('default');
    identifier = registerOutput<String>('identifier');
    label = registerOutput<String?>('label');
    status = registerOutput<String>('status');
    uid = registerOutput<String>('uid');
  }

  /// Gets an existing [StreamAudioTrack] resource's state with the given [name] and [id].
  static StreamAudioTrack get(
    String name,
    pulumi.Input<String> id, {
    StreamAudioTrackState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StreamAudioTrack._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StreamAudioTrack._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamAudioTrack:StreamAudioTrack',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    audioIdentifier = registerOutput<String?>('audioIdentifier');
    audios = registerOutput<List<StreamAudioTrackAudio>>('audios', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StreamAudioTrackAudio>(guardedValue, (value) => StreamAudioTrackAudio.fromMap((value as Map).cast<String, dynamic>())); });
    default_ = registerOutput<bool>('default');
    identifier = registerOutput<String>('identifier');
    label = registerOutput<String?>('label');
    status = registerOutput<String>('status');
    uid = registerOutput<String>('uid');
  }

  /// Creates a typed reference to an existing [StreamAudioTrack] resource.
  StreamAudioTrack.reference(String urn)
    : super(
        'cloudflare:index/streamAudioTrack:StreamAudioTrack',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    audioIdentifier = registerOutput<String?>('audioIdentifier');
    audios = registerOutput<List<StreamAudioTrackAudio>>('audios', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<StreamAudioTrackAudio>(guardedValue, (value) => StreamAudioTrackAudio.fromMap((value as Map).cast<String, dynamic>())); });
    default_ = registerOutput<bool>('default');
    identifier = registerOutput<String>('identifier');
    label = registerOutput<String?>('label');
    status = registerOutput<String>('status');
    uid = registerOutput<String>('uid');
  }
}
