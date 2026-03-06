// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_overlay_animation_animation_fade.dart';

class JobConfigOverlayAnimation {
  /// Display overlay object with fade animation.
  /// Structure is documented below.
  final pulumi.Input<JobConfigOverlayAnimationAnimationFade>? animationFade;

  /// Creates a new [JobConfigOverlayAnimation].
  /// [animationFade] Display overlay object with fade animation.
  const JobConfigOverlayAnimation({
    this.animationFade,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animationFade': ?pulumi.Input.mapOptionalInputValue<JobConfigOverlayAnimationAnimationFade, Map<String, dynamic>>(animationFade, (value) => value.toMap()),
    };
  }

  factory JobConfigOverlayAnimation.fromMap(Map<String, dynamic> map) {
    return JobConfigOverlayAnimation(
      animationFade: (() { final guardedValue = map['animationFade']; if (guardedValue == null) return null; return pulumi.Input.fromValue(JobConfigOverlayAnimationAnimationFade.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

