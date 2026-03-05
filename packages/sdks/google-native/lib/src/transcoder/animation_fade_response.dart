// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'normalized_coordinate_response.dart';

/// Display overlay object with fade animation.
class AnimationFadeResponse {
  /// The time to end the fade animation, in seconds. Default: `start_time_offset` + 1s
  final pulumi.Input<String> endTimeOffset;
  /// Type of fade animation: `FADE_IN` or `FADE_OUT`.
  final pulumi.Input<String> fadeType;
  /// The time to start the fade animation, in seconds. Default: 0
  final pulumi.Input<String> startTimeOffset;
  /// Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.
  final pulumi.Input<NormalizedCoordinateResponse> xy;

  /// Creates a new [AnimationFadeResponse].
  /// [endTimeOffset] The time to end the fade animation, in seconds. Default: `start_time_offset` + 1s
  /// [fadeType] Type of fade animation: `FADE_IN` or `FADE_OUT`.
  /// [startTimeOffset] The time to start the fade animation, in seconds. Default: 0
  /// [xy] Normalized coordinates based on output video resolution. Valid values: `0.0`–`1.0`. `xy` is the upper-left coordinate of the overlay object. For example, use the x and y coordinates {0,0} to position the top-left corner of the overlay animation in the top-left corner of the output video.
  AnimationFadeResponse({
    required this.endTimeOffset,
    required this.fadeType,
    required this.startTimeOffset,
    required this.xy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeOffset': endTimeOffset,
      'fadeType': fadeType,
      'startTimeOffset': startTimeOffset,
      'xy': pulumi.Input.mapInputValue<NormalizedCoordinateResponse, Map<String, dynamic>>(xy, (value) => value.toMap()),
    };
  }

  factory AnimationFadeResponse.fromMap(Map<String, dynamic> map) {
    return AnimationFadeResponse(
      endTimeOffset: pulumi.Input.fromValue(map['endTimeOffset'] as String),
      fadeType: pulumi.Input.fromValue(map['fadeType'] as String),
      startTimeOffset: pulumi.Input.fromValue(map['startTimeOffset'] as String),
      xy: pulumi.Input.fromValue(NormalizedCoordinateResponse.fromMap((map['xy']! as Map).cast<String, dynamic>())),
    );
  }
}

