// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamAudioTrackAudio {
  /// Denotes whether the audio track will be played by default in a player.
  final pulumi.Input<bool?>? default_;
  /// A string to uniquely identify the track amongst other audio track labels for the specified video.
  final pulumi.Input<String?>? label;
  /// Specifies the processing status of the video.
  /// Available values: "queued", "ready", "error".
  final pulumi.Input<String?>? status;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String?>? uid;

  /// Creates a new [StreamAudioTrackAudio].
  /// [default_] Denotes whether the audio track will be played by default in a player.
  /// [label] A string to uniquely identify the track amongst other audio track labels for the specified video.
  /// [status] Specifies the processing status of the video.
  /// [uid] A Cloudflare-generated unique identifier for a media item.
  const StreamAudioTrackAudio({
    this.default_,
    this.label,
    this.status,
    this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'label': ?label,
      'status': ?status,
      'uid': ?uid,
    };
  }

  factory StreamAudioTrackAudio.fromMap(Map<String, dynamic> map) {
    return StreamAudioTrackAudio(
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      uid: (() { final guardedValue = map['uid']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
