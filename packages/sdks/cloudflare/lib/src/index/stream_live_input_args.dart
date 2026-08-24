// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_live_input_recording.dart';

/// {@template pulumi_index_stream_live_input_stream_live_input_args_doc}
/// The set of arguments for StreamLiveInput.
/// {@endtemplate}
/// {@macro pulumi_index_stream_live_input_stream_live_input_args_doc}
class StreamLiveInputArgs {
  /// Identifier.
  final pulumi.Input<String> accountId;
  /// Sets the creator ID asssociated with this live input.
  final pulumi.Input<String?>? defaultCreator;
  /// Indicates the number of days after which the live inputs recordings will be deleted. When a stream completes and the recording is ready, the value is used to calculate a scheduled deletion date for that recording. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion.
  final pulumi.Input<double?>? deleteRecordingAfterDays;
  /// Indicates whether the live input is enabled and can accept streams.
  final pulumi.Input<bool?>? enabled;
  /// A unique identifier for a live input.
  final pulumi.Input<String?>? liveInputIdentifier;
  /// A user modifiable key-value store used to reference other systems of record for managing live inputs.
  final pulumi.Input<String?>? meta;
  /// When enabled, the live stream is delivered using Low-Latency HLS (LL-HLS), reducing glass-to-glass latency for viewers at the cost of reduced player compatibility.
  final pulumi.Input<bool?>? preferLowLatency;
  /// Records the input to a Cloudflare Stream video. Behavior depends on the mode. In most cases, the video will initially be viewable as a live video and transition to on-demand after a condition is satisfied.
  final pulumi.Input<StreamLiveInputRecording?>? recording;

  /// Creates a new [StreamLiveInputArgs].
  /// [accountId] Identifier.
  /// [defaultCreator] Sets the creator ID asssociated with this live input.
  /// [deleteRecordingAfterDays] Indicates the number of days after which the live inputs recordings will be deleted. When a stream completes and the recording is ready, the value is used to calculate a scheduled deletion date for that recording. Omit the field to indicate no change, or include with a `null` value to remove an existing scheduled deletion.
  /// [enabled] Indicates whether the live input is enabled and can accept streams.
  /// [liveInputIdentifier] A unique identifier for a live input.
  /// [meta] A user modifiable key-value store used to reference other systems of record for managing live inputs.
  /// [preferLowLatency] When enabled, the live stream is delivered using Low-Latency HLS (LL-HLS), reducing glass-to-glass latency for viewers at the cost of reduced player compatibility.
  /// [recording] Records the input to a Cloudflare Stream video. Behavior depends on the mode. In most cases, the video will initially be viewable as a live video and transition to on-demand after a condition is satisfied.
  const StreamLiveInputArgs({
    required this.accountId,
    this.defaultCreator,
    this.deleteRecordingAfterDays,
    this.enabled,
    this.liveInputIdentifier,
    this.meta,
    this.preferLowLatency,
    this.recording,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'defaultCreator': ?defaultCreator,
      'deleteRecordingAfterDays': ?deleteRecordingAfterDays,
      'enabled': ?enabled,
      'liveInputIdentifier': ?liveInputIdentifier,
      'meta': ?meta,
      'preferLowLatency': ?preferLowLatency,
      'recording': ?pulumi.Input.mapOptionalInputValue<StreamLiveInputRecording, Map<String, dynamic>>(recording, (value) => value.toMap()),
    };
  }

  factory StreamLiveInputArgs.fromMap(Map<String, dynamic> map) {
    return StreamLiveInputArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      defaultCreator: (() { final guardedValue = map['defaultCreator']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deleteRecordingAfterDays: (() { final guardedValue = map['deleteRecordingAfterDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      liveInputIdentifier: (() { final guardedValue = map['liveInputIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      meta: (() { final guardedValue = map['meta']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferLowLatency: (() { final guardedValue = map['preferLowLatency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      recording: (() { final guardedValue = map['recording']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamLiveInputRecording.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
