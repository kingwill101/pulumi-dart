// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamAudioTrackAudio {
  /// Denotes whether the audio track will be played by default in a player.
  final pulumi.Input<bool> default_;
  /// A string to uniquely identify the track amongst other audio track labels for the specified video.
  final pulumi.Input<String> label;
  /// Specifies the processing status of the video.
  /// Available values: "queued", "ready", "error".
  final pulumi.Input<String> status;
  /// A Cloudflare-generated unique identifier for a media item.
  final pulumi.Input<String> uid;

  /// Creates a new [GetStreamAudioTrackAudio].
  /// [default_] Denotes whether the audio track will be played by default in a player.
  /// [label] A string to uniquely identify the track amongst other audio track labels for the specified video.
  /// [status] Specifies the processing status of the video.
  /// [uid] A Cloudflare-generated unique identifier for a media item.
  const GetStreamAudioTrackAudio({
    required this.default_,
    required this.label,
    required this.status,
    required this.uid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': default_,
      'label': label,
      'status': status,
      'uid': uid,
    };
  }

  factory GetStreamAudioTrackAudio.fromMap(Map<String, dynamic> map) {
    return GetStreamAudioTrackAudio(
      default_: pulumi.Input.fromValue(map['default'] as bool),
      label: pulumi.Input.fromValue(map['label'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      uid: pulumi.Input.fromValue(map['uid'] as String),
    );
  }
}
