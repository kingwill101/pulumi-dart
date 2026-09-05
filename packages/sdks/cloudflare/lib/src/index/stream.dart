import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_args.dart';
import 'stream_input.dart';
import 'stream_playback.dart';
import 'stream_public_details.dart';
import 'stream_state.dart';
import 'stream_status.dart';
import 'stream_watermark.dart';

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
/// const exampleStream = new cloudflare.Stream("example_stream", {accountId: "023e105f4ecef8ad9ca31a8372d0c353"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_cloudflare as cloudflare
///
/// example_stream = cloudflare.Stream("example_stream", account_id="023e105f4ecef8ad9ca31a8372d0c353")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Cloudflare = Pulumi.Cloudflare;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleStream = new Cloudflare.Stream("example_stream", new()
///     {
///         AccountId = "023e105f4ecef8ad9ca31a8372d0c353",
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
/// 		_, err := cloudflare.NewStream(ctx, "example_stream", &cloudflare.StreamArgs{
/// 			AccountId: pulumi.String("023e105f4ecef8ad9ca31a8372d0c353"),
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
/// resource "cloudflare_stream" "example_stream" {
///   account_id = "023e105f4ecef8ad9ca31a8372d0c353"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.cloudflare.Stream;
/// import com.pulumi.cloudflare.StreamArgs;
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
///         var exampleStream = new Stream("exampleStream", StreamArgs.builder()
///             .accountId("023e105f4ecef8ad9ca31a8372d0c353")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleStream:
///     type: cloudflare:Stream
///     name: example_stream
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class Stream extends pulumi.CustomResource {
  /// The account identifier tag.
  late final pulumi.Output<String> accountId;
  /// Lists the origins allowed to display the video. Enter allowed origin domains in an array and use `*` for wildcard subdomains. Empty arrays allow the video to be viewed on any origin.
  late final pulumi.Output<List<String>?> allowedOrigins;
  /// The unique identifier of the source video this video was clipped from.
  late final pulumi.Output<String> clippedFrom;
  /// The date and time the media item was created.
  late final pulumi.Output<String> created;
  /// A user-defined identifier for the media creator.
  late final pulumi.Output<String?> creator;
  /// The duration of the video in seconds. A value of `-1` means the duration is unknown. The duration becomes available after the upload and before the video is ready.
  late final pulumi.Output<double> duration;
  /// A Cloudflare-generated unique identifier for a media item.
  late final pulumi.Output<String?> identifier;
  late final pulumi.Output<StreamInput> input;
  /// The live input ID used to upload a video with Stream Live.
  late final pulumi.Output<String> liveInput;
  /// The maximum duration in seconds for a video upload. Can be set for a video that is not yet uploaded to limit its duration. Uploads that exceed the specified duration will fail during processing. A value of `-1` means the value is unknown.
  late final pulumi.Output<int?> maxDurationSeconds;
  /// The maximum size in bytes for the video upload.
  late final pulumi.Output<int> maxSizeBytes;
  /// A user modifiable key-value store used to reference other systems of record for managing videos.
  late final pulumi.Output<String?> meta;
  /// The date and time the media item was last modified.
  late final pulumi.Output<String> modified;
  late final pulumi.Output<StreamPlayback> playback;
  /// The video's preview page URI. This field is omitted until encoding is complete.
  late final pulumi.Output<String> preview;
  /// Public details for the video including title, share link, channel link, and logo.
  late final pulumi.Output<StreamPublicDetails?> publicDetails;
  /// Indicates whether the video is playable. The field is empty if the video is not ready for viewing or the live stream is still in progress.
  late final pulumi.Output<bool> readyToStream;
  /// Indicates the time at which the video became playable. The field is empty if the video is not ready for viewing or the live stream is still in progress.
  late final pulumi.Output<String> readyToStreamAt;
  /// Indicates whether the video can be a accessed using the UID. When set to `true`, a signed token must be generated with a signing key to view the video.
  late final pulumi.Output<bool> requireSignedUrls;
  /// Indicates the date and time at which the video will be deleted. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion. If specified, must be at least 30 days from upload time.
  late final pulumi.Output<String?> scheduledDeletion;
  /// The size of the media item in bytes.
  late final pulumi.Output<double> size;
  /// Specifies a detailed status for a video. If the `state` is `inprogress` or `error`, the `step` field returns `encoding` or `manifest`. If the `state` is `inprogress`, `pctComplete` returns a number between 0 and 100 to indicate the approximate percent of completion. If the `state` is `error`, `errorReasonCode` and `errorReasonText` provide additional details.
  late final pulumi.Output<StreamStatus> status;
  /// The media item's thumbnail URI. This field is omitted until encoding is complete.
  late final pulumi.Output<String> thumbnail;
  /// The timestamp for a thumbnail image calculated as a percentage value of the video's duration. To convert from a second-wise timestamp to a percentage, divide the desired timestamp by the total duration of the video.  If this value is not set, the default thumbnail image is taken from 0s of the video.
  late final pulumi.Output<double> thumbnailTimestampPct;
  /// The unique identifier for the video. Can be used to verify the video being updated.
  late final pulumi.Output<String?> uid;
  /// The date and time when the video upload URL is no longer valid for direct user uploads.
  late final pulumi.Output<String?> uploadExpiry;
  /// The date and time the media item was uploaded.
  late final pulumi.Output<String> uploaded;
  late final pulumi.Output<StreamWatermark> watermark;

  /// Creates a new [Stream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stream]. {@macro pulumi_index_stream_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stream(
    String name, {
    StreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/stream:Stream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.20.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    allowedOrigins = registerOutput<List<String>?>('allowedOrigins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clippedFrom = registerOutput<String>('clippedFrom');
    created = registerOutput<String>('created');
    creator = registerOutput<String?>('creator');
    duration = registerOutput<double>('duration');
    identifier = registerOutput<String?>('identifier');
    input = registerOutput<StreamInput>('input', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    liveInput = registerOutput<String>('liveInput');
    maxDurationSeconds = registerOutput<int?>('maxDurationSeconds');
    maxSizeBytes = registerOutput<int>('maxSizeBytes');
    meta = registerOutput<String?>('meta');
    modified = registerOutput<String>('modified');
    playback = registerOutput<StreamPlayback>('playback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preview = registerOutput<String>('preview');
    publicDetails = registerOutput<StreamPublicDetails?>('publicDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamPublicDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    readyToStream = registerOutput<bool>('readyToStream');
    readyToStreamAt = registerOutput<String>('readyToStreamAt');
    requireSignedUrls = registerOutput<bool>('requireSignedUrls');
    scheduledDeletion = registerOutput<String?>('scheduledDeletion');
    size = registerOutput<double>('size');
    status = registerOutput<StreamStatus>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    thumbnail = registerOutput<String>('thumbnail');
    thumbnailTimestampPct = registerOutput<double>('thumbnailTimestampPct');
    uid = registerOutput<String?>('uid');
    uploadExpiry = registerOutput<String?>('uploadExpiry');
    uploaded = registerOutput<String>('uploaded');
    watermark = registerOutput<StreamWatermark>('watermark', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamWatermark.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Stream] resource's state with the given [name] and [id].
  static Stream get(
    String name,
    pulumi.Input<String> id, {
    StreamState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Stream._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Stream._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/stream:Stream',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    allowedOrigins = registerOutput<List<String>?>('allowedOrigins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clippedFrom = registerOutput<String>('clippedFrom');
    created = registerOutput<String>('created');
    creator = registerOutput<String?>('creator');
    duration = registerOutput<double>('duration');
    identifier = registerOutput<String?>('identifier');
    input = registerOutput<StreamInput>('input', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    liveInput = registerOutput<String>('liveInput');
    maxDurationSeconds = registerOutput<int?>('maxDurationSeconds');
    maxSizeBytes = registerOutput<int>('maxSizeBytes');
    meta = registerOutput<String?>('meta');
    modified = registerOutput<String>('modified');
    playback = registerOutput<StreamPlayback>('playback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preview = registerOutput<String>('preview');
    publicDetails = registerOutput<StreamPublicDetails?>('publicDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamPublicDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    readyToStream = registerOutput<bool>('readyToStream');
    readyToStreamAt = registerOutput<String>('readyToStreamAt');
    requireSignedUrls = registerOutput<bool>('requireSignedUrls');
    scheduledDeletion = registerOutput<String?>('scheduledDeletion');
    size = registerOutput<double>('size');
    status = registerOutput<StreamStatus>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    thumbnail = registerOutput<String>('thumbnail');
    thumbnailTimestampPct = registerOutput<double>('thumbnailTimestampPct');
    uid = registerOutput<String?>('uid');
    uploadExpiry = registerOutput<String?>('uploadExpiry');
    uploaded = registerOutput<String>('uploaded');
    watermark = registerOutput<StreamWatermark>('watermark', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamWatermark.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Stream] resource.
  Stream.reference(String urn)
    : super(
        'cloudflare:index/stream:Stream',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    allowedOrigins = registerOutput<List<String>?>('allowedOrigins', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); });
    clippedFrom = registerOutput<String>('clippedFrom');
    created = registerOutput<String>('created');
    creator = registerOutput<String?>('creator');
    duration = registerOutput<double>('duration');
    identifier = registerOutput<String?>('identifier');
    input = registerOutput<StreamInput>('input', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamInput.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    liveInput = registerOutput<String>('liveInput');
    maxDurationSeconds = registerOutput<int?>('maxDurationSeconds');
    maxSizeBytes = registerOutput<int>('maxSizeBytes');
    meta = registerOutput<String?>('meta');
    modified = registerOutput<String>('modified');
    playback = registerOutput<StreamPlayback>('playback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    preview = registerOutput<String>('preview');
    publicDetails = registerOutput<StreamPublicDetails?>('publicDetails', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamPublicDetails.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    readyToStream = registerOutput<bool>('readyToStream');
    readyToStreamAt = registerOutput<String>('readyToStreamAt');
    requireSignedUrls = registerOutput<bool>('requireSignedUrls');
    scheduledDeletion = registerOutput<String?>('scheduledDeletion');
    size = registerOutput<double>('size');
    status = registerOutput<StreamStatus>('status', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamStatus.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    thumbnail = registerOutput<String>('thumbnail');
    thumbnailTimestampPct = registerOutput<double>('thumbnailTimestampPct');
    uid = registerOutput<String?>('uid');
    uploadExpiry = registerOutput<String?>('uploadExpiry');
    uploaded = registerOutput<String>('uploaded');
    watermark = registerOutput<StreamWatermark>('watermark', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamWatermark.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
