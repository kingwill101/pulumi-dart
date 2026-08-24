// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_stream_audio_track_stream_audio_track_args_doc}
/// The set of arguments for StreamAudioTrack.
/// {@endtemplate}
/// {@macro pulumi_index_stream_audio_track_stream_audio_track_args_doc}
class StreamAudioTrackArgs {
  /// The account identifier tag.
  final pulumi.Input<String> accountId;
  /// The unique identifier for an additional audio track.
  final pulumi.Input<String?>? audioIdentifier;
  /// Denotes whether the audio track will be played by default in a player.
  final pulumi.Input<bool?>? default_;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String> identifier;
  /// A string to uniquely identify the track amongst other audio track labels for the specified video.
  final pulumi.Input<String?>? label;

  /// Creates a new [StreamAudioTrackArgs].
  /// [accountId] The account identifier tag.
  /// [audioIdentifier] The unique identifier for an additional audio track.
  /// [default_] Denotes whether the audio track will be played by default in a player.
  /// [identifier] A Cloudflare-generated unique identifier for a media item.
  /// [label] A string to uniquely identify the track amongst other audio track labels for the specified video.
  const StreamAudioTrackArgs({
    required this.accountId,
    this.audioIdentifier,
    this.default_,
    required this.identifier,
    this.label,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'audioIdentifier': ?audioIdentifier,
      'default': ?default_,
      'identifier': identifier,
      'label': ?label,
    };
  }

  factory StreamAudioTrackArgs.fromMap(Map<String, dynamic> map) {
    return StreamAudioTrackArgs(
      accountId: pulumi.Input.fromValue(map['accountId'] as String),
      audioIdentifier: (() { final guardedValue = map['audioIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      identifier: pulumi.Input.fromValue(map['identifier'] as String),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
