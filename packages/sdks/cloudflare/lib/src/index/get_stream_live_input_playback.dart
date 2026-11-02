// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetStreamLiveInputPlayback {
  /// The DASH manifest URL used to play live video, referencing the live input ID.
  final pulumi.Input<String> dash;
  /// The HLS manifest URL used to play live video, referencing the live input ID.
  final pulumi.Input<String> hls;

  /// Creates a new [GetStreamLiveInputPlayback].
  /// [dash] The DASH manifest URL used to play live video, referencing the live input ID.
  /// [hls] The HLS manifest URL used to play live video, referencing the live input ID.
  const GetStreamLiveInputPlayback({
    required this.dash,
    required this.hls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dash': dash,
      'hls': hls,
    };
  }

  factory GetStreamLiveInputPlayback.fromMap(Map<String, dynamic> map) {
    return GetStreamLiveInputPlayback(
      dash: pulumi.Input.fromValue(map['dash'] as String),
      hls: pulumi.Input.fromValue(map['hls'] as String),
    );
  }
}
