// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamPlayback {
  /// DASH Media Presentation Description for the video.
  final pulumi.Input<String?>? dash;
  /// The HLS manifest for the video.
  final pulumi.Input<String?>? hls;

  /// Creates a new [StreamPlayback].
  /// [dash] DASH Media Presentation Description for the video.
  /// [hls] The HLS manifest for the video.
  const StreamPlayback({
    this.dash,
    this.hls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dash': ?dash,
      'hls': ?hls,
    };
  }

  factory StreamPlayback.fromMap(Map<String, dynamic> map) {
    return StreamPlayback(
      dash: (() { final guardedValue = map['dash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hls: (() { final guardedValue = map['hls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
