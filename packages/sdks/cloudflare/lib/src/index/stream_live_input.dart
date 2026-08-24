import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_live_input_args.dart';
import 'stream_live_input_recording.dart';
import 'stream_live_input_rtmps.dart';
import 'stream_live_input_rtmps_playback.dart';
import 'stream_live_input_srt.dart';
import 'stream_live_input_srt_playback.dart';
import 'stream_live_input_state.dart';
import 'stream_live_input_web_rtc.dart';
import 'stream_live_input_web_rtc_playback.dart';

/// Accepted Permissions
///
/// - `Stream Read`
/// - `Stream Write`
///
/// ## Example Usage
///
///
/// ```hcl
/// pulumi {
///   required_providers {
///     cloudflare = {
///       source = "pulumi/cloudflare"
///     }
///   }
/// }
///
/// resource "cloudflare_streamliveinput" "example_stream_live_input" {
///   account_id                  = "023e105f4ecef8ad9ca31a8372d0c353"
///   default_creator             = "defaultCreator"
///   delete_recording_after_days = 45
///   enabled                     = true
///   meta = {
///     "name" = "test stream 1"
///   }
///   prefer_low_latency = true
///   recording = {
///     allowed_origins        = ["example.com"]
///     hide_live_viewer_count = false
///     mode                   = "off"
///     require_signed_urls    = false
///     timeout_seconds        = 0
///   }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleStreamLiveInput:
///     type: cloudflare:StreamLiveInput
///     name: example_stream_live_input
///     properties:
///       accountId: 023e105f4ecef8ad9ca31a8372d0c353
///       defaultCreator: defaultCreator
///       deleteRecordingAfterDays: 45
///       enabled: true
///       meta:
///         name: test stream 1
///       preferLowLatency: true
///       recording:
///         allowedOrigins:
///           - example.com
///         hideLiveViewerCount: false
///         mode: off
///         requireSignedUrls: false
///         timeoutSeconds: 0
/// ```
///
///
/// ## Import
///
/// &gt; This resource does not currently support `pulumi import`.
class StreamLiveInput extends pulumi.CustomResource {
  /// Identifier.
  late final pulumi.Output<String> accountId;
  /// The date and time the live input was created.
  late final pulumi.Output<String> created;
  /// Sets the creator ID asssociated with this live input.
  late final pulumi.Output<String?> defaultCreator;
  /// Indicates the number of days after which the live inputs recordings will be deleted. When a stream completes and the recording is ready, the value is used to calculate a scheduled deletion date for that recording. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion.
  late final pulumi.Output<double?> deleteRecordingAfterDays;
  /// Indicates whether the live input is enabled and can accept streams.
  late final pulumi.Output<bool> enabled;
  /// The date and time the live input keys were last rotated. Omitted for live inputs that have never had their keys rotated.
  late final pulumi.Output<String> keysRotatedAt;
  /// A unique identifier for a live input.
  late final pulumi.Output<String?> liveInputIdentifier;
  /// A user modifiable key-value store used to reference other systems of record for managing live inputs.
  late final pulumi.Output<String?> meta;
  /// The date and time the live input was last modified.
  late final pulumi.Output<String> modified;
  /// When enabled, the live stream is delivered using Low-Latency HLS (LL-HLS), reducing glass-to-glass latency for viewers at the cost of reduced player compatibility.
  late final pulumi.Output<bool> preferLowLatency;
  /// Records the input to a Cloudflare Stream video. Behavior depends on the mode. In most cases, the video will initially be viewable as a live video and transition to on-demand after a condition is satisfied.
  late final pulumi.Output<StreamLiveInputRecording> recording;
  /// Details for streaming to an live input using RTMPS.
  late final pulumi.Output<StreamLiveInputRtmps> rtmps;
  /// Details for playback from an live input using RTMPS.
  late final pulumi.Output<StreamLiveInputRtmpsPlayback> rtmpsPlayback;
  /// Details for streaming to a live input using SRT.
  late final pulumi.Output<StreamLiveInputSrt> srt;
  /// Details for playback from an live input using SRT.
  late final pulumi.Output<StreamLiveInputSrtPlayback> srtPlayback;
  /// The connection status of a live input.
  /// Available values: "connected", "reconnected", "reconnecting", "client*disconnect", "ttl*exceeded", "failed*to*connect", "failed*to*reconnect", "new*configuration*accepted".
  late final pulumi.Output<String> status;
  /// A unique identifier for a live input.
  late final pulumi.Output<String> uid;
  /// Details for streaming to a live input using WebRTC.
  late final pulumi.Output<StreamLiveInputWebRtc> webRtc;
  /// Details for playback from a live input using WebRTC.
  late final pulumi.Output<StreamLiveInputWebRtcPlayback> webRtcPlayback;

  /// Creates a new [StreamLiveInput].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [StreamLiveInput]. {@macro pulumi_index_stream_live_input_stream_live_input_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  StreamLiveInput(
    String name, {
    StreamLiveInputArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamLiveInput:StreamLiveInput',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '6.19.0').merge(options),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    defaultCreator = registerOutput<String?>('defaultCreator');
    deleteRecordingAfterDays = registerOutput<double?>('deleteRecordingAfterDays');
    enabled = registerOutput<bool>('enabled');
    keysRotatedAt = registerOutput<String>('keysRotatedAt');
    liveInputIdentifier = registerOutput<String?>('liveInputIdentifier');
    meta = registerOutput<String?>('meta');
    modified = registerOutput<String>('modified');
    preferLowLatency = registerOutput<bool>('preferLowLatency');
    recording = registerOutput<StreamLiveInputRecording>('recording', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputRecording.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rtmps = registerOutput<StreamLiveInputRtmps>('rtmps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputRtmps.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rtmpsPlayback = registerOutput<StreamLiveInputRtmpsPlayback>('rtmpsPlayback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputRtmpsPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    srt = registerOutput<StreamLiveInputSrt>('srt', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputSrt.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    srtPlayback = registerOutput<StreamLiveInputSrtPlayback>('srtPlayback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputSrtPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    uid = registerOutput<String>('uid');
    webRtc = registerOutput<StreamLiveInputWebRtc>('webRtc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputWebRtc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webRtcPlayback = registerOutput<StreamLiveInputWebRtcPlayback>('webRtcPlayback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputWebRtcPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [StreamLiveInput] resource's state with the given [name] and [id].
  static StreamLiveInput get(
    String name,
    pulumi.Input<String> id, {
    StreamLiveInputState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return StreamLiveInput._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  StreamLiveInput._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'cloudflare:index/streamLiveInput:StreamLiveInput',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    defaultCreator = registerOutput<String?>('defaultCreator');
    deleteRecordingAfterDays = registerOutput<double?>('deleteRecordingAfterDays');
    enabled = registerOutput<bool>('enabled');
    keysRotatedAt = registerOutput<String>('keysRotatedAt');
    liveInputIdentifier = registerOutput<String?>('liveInputIdentifier');
    meta = registerOutput<String?>('meta');
    modified = registerOutput<String>('modified');
    preferLowLatency = registerOutput<bool>('preferLowLatency');
    recording = registerOutput<StreamLiveInputRecording>('recording', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputRecording.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rtmps = registerOutput<StreamLiveInputRtmps>('rtmps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputRtmps.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rtmpsPlayback = registerOutput<StreamLiveInputRtmpsPlayback>('rtmpsPlayback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputRtmpsPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    srt = registerOutput<StreamLiveInputSrt>('srt', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputSrt.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    srtPlayback = registerOutput<StreamLiveInputSrtPlayback>('srtPlayback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputSrtPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    uid = registerOutput<String>('uid');
    webRtc = registerOutput<StreamLiveInputWebRtc>('webRtc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputWebRtc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webRtcPlayback = registerOutput<StreamLiveInputWebRtcPlayback>('webRtcPlayback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputWebRtcPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [StreamLiveInput] resource.
  StreamLiveInput.reference(String urn)
    : super(
        'cloudflare:index/streamLiveInput:StreamLiveInput',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    accountId = registerOutput<String>('accountId');
    created = registerOutput<String>('created');
    defaultCreator = registerOutput<String?>('defaultCreator');
    deleteRecordingAfterDays = registerOutput<double?>('deleteRecordingAfterDays');
    enabled = registerOutput<bool>('enabled');
    keysRotatedAt = registerOutput<String>('keysRotatedAt');
    liveInputIdentifier = registerOutput<String?>('liveInputIdentifier');
    meta = registerOutput<String?>('meta');
    modified = registerOutput<String>('modified');
    preferLowLatency = registerOutput<bool>('preferLowLatency');
    recording = registerOutput<StreamLiveInputRecording>('recording', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputRecording.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rtmps = registerOutput<StreamLiveInputRtmps>('rtmps', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputRtmps.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    rtmpsPlayback = registerOutput<StreamLiveInputRtmpsPlayback>('rtmpsPlayback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputRtmpsPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    srt = registerOutput<StreamLiveInputSrt>('srt', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputSrt.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    srtPlayback = registerOutput<StreamLiveInputSrtPlayback>('srtPlayback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputSrtPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    status = registerOutput<String>('status');
    uid = registerOutput<String>('uid');
    webRtc = registerOutput<StreamLiveInputWebRtc>('webRtc', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputWebRtc.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    webRtcPlayback = registerOutput<StreamLiveInputWebRtcPlayback>('webRtcPlayback', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamLiveInputWebRtcPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
