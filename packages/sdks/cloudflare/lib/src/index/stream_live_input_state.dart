// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_live_input_recording.dart';
import 'stream_live_input_rtmps.dart';
import 'stream_live_input_rtmps_playback.dart';
import 'stream_live_input_srt.dart';
import 'stream_live_input_srt_playback.dart';
import 'stream_live_input_web_rtc.dart';
import 'stream_live_input_web_rtc_playback.dart';

/// Input properties used for looking up and filtering StreamLiveInput resources.
class StreamLiveInputState {
  /// Identifier.
  final pulumi.Input<String?>? accountId;
  /// The date and time the live input was created.
  final pulumi.Input<String?>? created;
  /// Sets the creator ID asssociated with this live input.
  final pulumi.Input<String?>? defaultCreator;
  /// Indicates the number of days after which the live inputs recordings will be deleted. When a stream completes and the recording is ready, the value is used to calculate a scheduled deletion date for that recording. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion.
  final pulumi.Input<double?>? deleteRecordingAfterDays;
  /// Indicates whether the live input is enabled and can accept streams.
  final pulumi.Input<bool?>? enabled;
  /// The date and time the live input keys were last rotated. Omitted for live inputs that have never had their keys rotated.
  final pulumi.Input<String?>? keysRotatedAt;
  /// A unique identifier for a live input.
  final pulumi.Input<String?>? liveInputIdentifier;
  /// A user modifiable key-value store used to reference other systems of record for managing live inputs.
  final pulumi.Input<String?>? meta;
  /// The date and time the live input was last modified.
  final pulumi.Input<String?>? modified;
  /// When enabled, the live stream is delivered using Low-Latency HLS (LL-HLS), reducing glass-to-glass latency for viewers at the cost of reduced player compatibility.
  final pulumi.Input<bool?>? preferLowLatency;
  /// Records the input to a Cloudflare Stream video. Behavior depends on the mode. In most cases, the video will initially be viewable as a live video and transition to on-demand after a condition is satisfied.
  final pulumi.Input<StreamLiveInputRecording?>? recording;
  /// Details for streaming to an live input using RTMPS.
  final pulumi.Input<StreamLiveInputRtmps?>? rtmps;
  /// Details for playback from an live input using RTMPS.
  final pulumi.Input<StreamLiveInputRtmpsPlayback?>? rtmpsPlayback;
  /// Details for streaming to a live input using SRT.
  final pulumi.Input<StreamLiveInputSrt?>? srt;
  /// Details for playback from an live input using SRT.
  final pulumi.Input<StreamLiveInputSrtPlayback?>? srtPlayback;
  /// The connection status of a live input.
  /// Available values: "connected", "reconnected", "reconnecting", "client*disconnect", "ttl*exceeded", "failed*to*connect", "failed*to*reconnect", "new*configuration*accepted".
  final pulumi.Input<String?>? status;
  /// A unique identifier for a live input.
  final pulumi.Input<String?>? uid;
  /// Details for streaming to a live input using WebRTC.
  final pulumi.Input<StreamLiveInputWebRtc?>? webRtc;
  /// Details for playback from a live input using WebRTC.
  final pulumi.Input<StreamLiveInputWebRtcPlayback?>? webRtcPlayback;

  /// Creates a new [StreamLiveInputState].
  /// [accountId] Identifier.
  /// [created] The date and time the live input was created.
  /// [defaultCreator] Sets the creator ID asssociated with this live input.
  /// [deleteRecordingAfterDays] Indicates the number of days after which the live inputs recordings will be deleted. When a stream completes and the recording is ready, the value is used to calculate a scheduled deletion date for that recording. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion.
  /// [enabled] Indicates whether the live input is enabled and can accept streams.
  /// [keysRotatedAt] The date and time the live input keys were last rotated. Omitted for live inputs that have never had their keys rotated.
  /// [liveInputIdentifier] A unique identifier for a live input.
  /// [meta] A user modifiable key-value store used to reference other systems of record for managing live inputs.
  /// [modified] The date and time the live input was last modified.
  /// [preferLowLatency] When enabled, the live stream is delivered using Low-Latency HLS (LL-HLS), reducing glass-to-glass latency for viewers at the cost of reduced player compatibility.
  /// [recording] Records the input to a Cloudflare Stream video. Behavior depends on the mode. In most cases, the video will initially be viewable as a live video and transition to on-demand after a condition is satisfied.
  /// [rtmps] Details for streaming to an live input using RTMPS.
  /// [rtmpsPlayback] Details for playback from an live input using RTMPS.
  /// [srt] Details for streaming to a live input using SRT.
  /// [srtPlayback] Details for playback from an live input using SRT.
  /// [status] The connection status of a live input.
  /// [uid] A unique identifier for a live input.
  /// [webRtc] Details for streaming to a live input using WebRTC.
  /// [webRtcPlayback] Details for playback from a live input using WebRTC.
  const StreamLiveInputState({
    this.accountId,
    this.created,
    this.defaultCreator,
    this.deleteRecordingAfterDays,
    this.enabled,
    this.keysRotatedAt,
    this.liveInputIdentifier,
    this.meta,
    this.modified,
    this.preferLowLatency,
    this.recording,
    this.rtmps,
    this.rtmpsPlayback,
    this.srt,
    this.srtPlayback,
    this.status,
    this.uid,
    this.webRtc,
    this.webRtcPlayback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'created': ?created,
      'defaultCreator': ?defaultCreator,
      'deleteRecordingAfterDays': ?deleteRecordingAfterDays,
      'enabled': ?enabled,
      'keysRotatedAt': ?keysRotatedAt,
      'liveInputIdentifier': ?liveInputIdentifier,
      'meta': ?meta,
      'modified': ?modified,
      'preferLowLatency': ?preferLowLatency,
      'recording': ?pulumi.Input.mapOptionalInputValue<StreamLiveInputRecording, Map<String, dynamic>>(recording, (value) => value.toMap()),
      'rtmps': ?pulumi.Input.mapOptionalInputValue<StreamLiveInputRtmps, Map<String, dynamic>>(rtmps, (value) => value.toMap()),
      'rtmpsPlayback': ?pulumi.Input.mapOptionalInputValue<StreamLiveInputRtmpsPlayback, Map<String, dynamic>>(rtmpsPlayback, (value) => value.toMap()),
      'srt': ?pulumi.Input.mapOptionalInputValue<StreamLiveInputSrt, Map<String, dynamic>>(srt, (value) => value.toMap()),
      'srtPlayback': ?pulumi.Input.mapOptionalInputValue<StreamLiveInputSrtPlayback, Map<String, dynamic>>(srtPlayback, (value) => value.toMap()),
      'status': ?status,
      'uid': ?uid,
      'webRtc': ?pulumi.Input.mapOptionalInputValue<StreamLiveInputWebRtc, Map<String, dynamic>>(webRtc, (value) => value.toMap()),
      'webRtcPlayback': ?pulumi.Input.mapOptionalInputValue<StreamLiveInputWebRtcPlayback, Map<String, dynamic>>(webRtcPlayback, (value) => value.toMap()),
    };
  }

  factory StreamLiveInputState.fromMap(Map<String, dynamic> map) {
    return StreamLiveInputState(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      defaultCreator: (() { final guardedValue = map['defaultCreator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteRecordingAfterDays: (() { final guardedValue = map['deleteRecordingAfterDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keysRotatedAt: (() { final guardedValue = map['keysRotatedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      liveInputIdentifier: (() { final guardedValue = map['liveInputIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferLowLatency: (() { final guardedValue = map['preferLowLatency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recording: (() { final guardedValue = map['recording']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamLiveInputRecording.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rtmps: (() { final guardedValue = map['rtmps']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamLiveInputRtmps.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rtmpsPlayback: (() { final guardedValue = map['rtmpsPlayback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamLiveInputRtmpsPlayback.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      srt: (() { final guardedValue = map['srt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamLiveInputSrt.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      srtPlayback: (() { final guardedValue = map['srtPlayback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamLiveInputSrtPlayback.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      webRtc: (() { final guardedValue = map['webRtc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamLiveInputWebRtc.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      webRtcPlayback: (() { final guardedValue = map['webRtcPlayback']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamLiveInputWebRtcPlayback.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
