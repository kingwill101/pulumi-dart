// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamsResultPlayback {
  /// DASH Media Presentation Description for the video.
  final pulumi.Input<String> dash;
  /// The HLS manifest for the video.
  final pulumi.Input<String> hls;

  /// Creates a new [GetStreamsResultPlayback].
  /// [dash] DASH Media Presentation Description for the video.
  /// [hls] The HLS manifest for the video.
  const GetStreamsResultPlayback({
    required this.dash,
    required this.hls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dash': dash,
      'hls': hls,
    };
  }

  factory GetStreamsResultPlayback.fromMap(Map<String, dynamic> map) {
    return GetStreamsResultPlayback(
      dash: pulumi.Input.fromValue(map['dash'] as String),
      hls: pulumi.Input.fromValue(map['hls'] as String),
    );
  }
}
