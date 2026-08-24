// ignore_for_file: unused_element, unnecessary_cast

import 'get_stream_live_input_recording.dart';
import 'get_stream_live_input_rtmps.dart';
import 'get_stream_live_input_rtmps_playback.dart';
import 'get_stream_live_input_srt.dart';
import 'get_stream_live_input_srt_playback.dart';
import 'get_stream_live_input_web_rtc.dart';
import 'get_stream_live_input_web_rtc_playback.dart';

/// Result data returned by getStreamLiveInput.
class GetStreamLiveInputResult {
  /// Identifier.
  final String? accountId;
  /// The date and time the live input was created.
  final String? created;
  /// Indicates the number of days after which the live inputs recordings will be deleted. When a stream completes and the recording is ready, the value is used to calculate a scheduled deletion date for that recording. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion.
  final double? deleteRecordingAfterDays;
  /// Indicates whether the live input is enabled and can accept streams.
  final bool? enabled;
  /// The date and time the live input keys were last rotated. Omitted for live inputs that have never had their keys rotated.
  final String? keysRotatedAt;
  /// A unique identifier for a live input.
  final String? liveInputIdentifier;
  /// A user modifiable key-value store used to reference other systems of record for managing live inputs.
  final String? meta;
  /// The date and time the live input was last modified.
  final String? modified;
  /// When enabled, the live stream is delivered using Low-Latency HLS (LL-HLS), reducing glass-to-glass latency for viewers at the cost of reduced player compatibility.
  final bool? preferLowLatency;
  /// Records the input to a Cloudflare Stream video. Behavior depends on the mode. In most cases, the video will initially be viewable as a live video and transition to on-demand after a condition is satisfied.
  final GetStreamLiveInputRecording? recording;
  /// Details for streaming to an live input using RTMPS.
  final GetStreamLiveInputRtmps? rtmps;
  /// Details for playback from an live input using RTMPS.
  final GetStreamLiveInputRtmpsPlayback? rtmpsPlayback;
  /// Details for streaming to a live input using SRT.
  final GetStreamLiveInputSrt? srt;
  /// Details for playback from an live input using SRT.
  final GetStreamLiveInputSrtPlayback? srtPlayback;
  /// The connection status of a live input.
  /// Available values: "connected", "reconnected", "reconnecting", "client*disconnect", "ttl*exceeded", "failed*to*connect", "failed*to*reconnect", "new*configuration*accepted".
  final String? status;
  /// A unique identifier for a live input.
  final String? uid;
  /// Details for streaming to a live input using WebRTC.
  final GetStreamLiveInputWebRtc? webRtc;
  /// Details for playback from a live input using WebRTC.
  final GetStreamLiveInputWebRtcPlayback? webRtcPlayback;

  /// Creates a new [GetStreamLiveInputResult].
  /// [accountId] Identifier.
  /// [created] The date and time the live input was created.
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
  const GetStreamLiveInputResult({
    this.accountId,
    this.created,
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
      'deleteRecordingAfterDays': ?deleteRecordingAfterDays,
      'enabled': ?enabled,
      'keysRotatedAt': ?keysRotatedAt,
      'liveInputIdentifier': ?liveInputIdentifier,
      'meta': ?meta,
      'modified': ?modified,
      'preferLowLatency': ?preferLowLatency,
      'recording': ?recording?.toMap(),
      'rtmps': ?rtmps?.toMap(),
      'rtmpsPlayback': ?rtmpsPlayback?.toMap(),
      'srt': ?srt?.toMap(),
      'srtPlayback': ?srtPlayback?.toMap(),
      'status': ?status,
      'uid': ?uid,
      'webRtc': ?webRtc?.toMap(),
      'webRtcPlayback': ?webRtcPlayback?.toMap(),
    };
  }

  factory GetStreamLiveInputResult.fromMap(Map<String, dynamic> map) {
    return GetStreamLiveInputResult(
      accountId: (() { final guardedValue = map['accountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      created: (() { final guardedValue = map['created']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteRecordingAfterDays: (() { final guardedValue = map['deleteRecordingAfterDays']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      keysRotatedAt: (() { final guardedValue = map['keysRotatedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      liveInputIdentifier: (() { final guardedValue = map['liveInputIdentifier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return guardedValue as String; })(),
      modified: (() { final guardedValue = map['modified']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferLowLatency: (() { final guardedValue = map['preferLowLatency']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      recording: (() { final guardedValue = map['recording']; if (guardedValue == null) return null; return GetStreamLiveInputRecording.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rtmps: (() { final guardedValue = map['rtmps']; if (guardedValue == null) return null; return GetStreamLiveInputRtmps.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      rtmpsPlayback: (() { final guardedValue = map['rtmpsPlayback']; if (guardedValue == null) return null; return GetStreamLiveInputRtmpsPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      srt: (() { final guardedValue = map['srt']; if (guardedValue == null) return null; return GetStreamLiveInputSrt.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      srtPlayback: (() { final guardedValue = map['srtPlayback']; if (guardedValue == null) return null; return GetStreamLiveInputSrtPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webRtc: (() { final guardedValue = map['webRtc']; if (guardedValue == null) return null; return GetStreamLiveInputWebRtc.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      webRtcPlayback: (() { final guardedValue = map['webRtcPlayback']; if (guardedValue == null) return null; return GetStreamLiveInputWebRtcPlayback.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
