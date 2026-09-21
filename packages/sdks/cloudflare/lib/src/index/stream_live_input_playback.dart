// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StreamLiveInputPlayback {
  /// The DASH manifest URL used to play live video, referencing the live input ID.
  final pulumi.Input<String?>? dash;
  /// The HLS manifest URL used to play live video, referencing the live input ID.
  final pulumi.Input<String?>? hls;

  /// Creates a new [StreamLiveInputPlayback].
  /// [dash] The DASH manifest URL used to play live video, referencing the live input ID.
  /// [hls] The HLS manifest URL used to play live video, referencing the live input ID.
  const StreamLiveInputPlayback({
    this.dash,
    this.hls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dash': ?dash,
      'hls': ?hls,
    };
  }

  factory StreamLiveInputPlayback.fromMap(Map<String, dynamic> map) {
    return StreamLiveInputPlayback(
      dash: (() { final guardedValue = map['dash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hls: (() { final guardedValue = map['hls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
