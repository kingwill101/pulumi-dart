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
      'fadeType': pulumi.Input.mapInputValue<AnimationFadeFadeType, String>(fadeType, (value) => value.wireValue),
      'startTimeOffset': ?startTimeOffset,
      'xy': ?pulumi.Input.mapOptionalInputValue<NormalizedCoordinate, Map<String, dynamic>>(xy, (value) => value.toMap()),
    };
  }

  factory AnimationFade.fromMap(Map<String, dynamic> map) {
    return AnimationFade(
      endTimeOffset: (() { final guardedValue = map['endTimeOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fadeType: pulumi.Input.fromValue(AnimationFadeFadeType.fromValue(map['fadeType']! as String)),
      startTimeOffset: (() { final guardedValue = map['startTimeOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xy: (() { final guardedValue = map['xy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(NormalizedCoordinate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

