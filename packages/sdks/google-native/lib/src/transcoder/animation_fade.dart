// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'animation_fade_fade_type.dart';
import 'normalized_coordinate.dart';

/// Display overlay object with fade animation.
class AnimationFade {
  /// The time to end the fade animation, in seconds. Default: `start_time_offset` + 1s
  final pulumi.Input<String>? endTimeOffset;
  /// Type of fade animation: `FADE_IN` or `FADE_OUT`.
  final pulumi.Input<AnimationFadeFadeType> fadeType;
  /// The time to start the fade animation, in seconds. Default: 0
  final pulumi.Input<String>? startTimeOffset;
  /// Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.
  final pulumi.Input<NormalizedCoordinate>? xy;

  /// Creates a new [AnimationFade].
  /// [endTimeOffset] The time to end the fade animation, in seconds. Default: `start_time_offset` + 1s
  /// [fadeType] Type of fade animation: `FADE_IN` or `FADE_OUT`.
  /// [startTimeOffset] The time to start the fade animation, in seconds. Default: 0
  /// [xy] Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.
  AnimationFade({
    this.endTimeOffset,
    required this.fadeType,
    this.startTimeOffset,
    this.xy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeOffset': ?endTimeOffset,
      'fadeType': pulumi.Input.mapInputValue<AnimationFadeFadeType, String>(fadeType, (value) => value.value),
      'startTimeOffset': ?startTimeOffset,
      'xy': ?pulumi.Input.mapOptionalInputValue<NormalizedCoordinate, Map<String, dynamic>>(xy, (value) => value.toMap()),
    };
  }

  factory AnimationFade.fromMap(Map<String, dynamic> map) {
    return AnimationFade(
      endTimeOffset: map['endTimeOffset'] == null ? null : (map['endTimeOffset']! as String).input(),
      fadeType: (AnimationFadeFadeType.fromValue(map['fadeType'] as String)).input(),
      startTimeOffset: map['startTimeOffset'] == null ? null : (map['startTimeOffset']! as String).input(),
      xy: map['xy'] == null ? null : (NormalizedCoordinate.fromMap((map['xy']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

