// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// End previous overlay animation from the video. Without `AnimationEnd`, the overlay object will keep the state of previous animation until the end of the video.
class AnimationEndResponse {
  /// The time to end overlay object, in seconds. Default: 0
  final pulumi.Input<String> startTimeOffset;

  /// Creates a new [AnimationEndResponse].
  /// [startTimeOffset] The time to end overlay object, in seconds. Default: 0
  const AnimationEndResponse({
    required this.startTimeOffset,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'startTimeOffset': startTimeOffset,
    };
  }

  factory AnimationEndResponse.fromMap(Map<String, dynamic> map) {
    return AnimationEndResponse(
      startTimeOffset: pulumi.Input.fromValue(map['startTimeOffset'] as String),
    );
  }
}
