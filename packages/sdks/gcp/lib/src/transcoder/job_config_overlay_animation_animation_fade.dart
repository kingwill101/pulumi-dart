// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_overlay_animation_animation_fade_xy.dart';

class JobConfigOverlayAnimationAnimationFade {
  /// The time to end the fade animation, in seconds.
  final pulumi.Input<String?>? endTimeOffset;
  /// Required. Type of fade animation: `FADE_IN` or `FADE_OUT`.
  /// The possible values are:
  /// * `FADE_TYPE_UNSPECIFIED`: The fade type is not specified.
  /// * `FADE_IN`: Fade the overlay object into view.
  /// * `FADE_OUT`: Fade the overlay object out of view.
  /// Possible values are: `FADE_TYPE_UNSPECIFIED`, `FADE_IN`, `FADE_OUT`.
  final pulumi.Input<String> fadeType;
  /// The time to start the fade animation, in seconds.
  final pulumi.Input<String?>? startTimeOffset;
  /// Normalized coordinates based on output video resolution.
  /// Structure is documented below.
  final pulumi.Input<JobConfigOverlayAnimationAnimationFadeXy?>? xy;

  /// Creates a new [JobConfigOverlayAnimationAnimationFade].
  /// [endTimeOffset] The time to end the fade animation, in seconds.
  /// [fadeType] Required. Type of fade animation: `FADE_IN` or `FADE_OUT`.
  /// [startTimeOffset] The time to start the fade animation, in seconds.
  /// [xy] Normalized coordinates based on output video resolution.
  const JobConfigOverlayAnimationAnimationFade({
    this.endTimeOffset,
    required this.fadeType,
    this.startTimeOffset,
    this.xy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTimeOffset': ?endTimeOffset,
      'fadeType': fadeType,
      'startTimeOffset': ?startTimeOffset,
      'xy': ?pulumi.Input.mapOptionalInputValue<JobConfigOverlayAnimationAnimationFadeXy, Map<String, dynamic>>(xy, (value) => value.toMap()),
    };
  }

  factory JobConfigOverlayAnimationAnimationFade.fromMap(Map<String, dynamic> map) {
    return JobConfigOverlayAnimationAnimationFade(
      endTimeOffset: (() { final guardedValue = map['endTimeOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fadeType: pulumi.Input.fromValue(map['fadeType'] as String),
      startTimeOffset: (() { final guardedValue = map['startTimeOffset']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      xy: (() { final guardedValue = map['xy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigOverlayAnimationAnimationFadeXy.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
