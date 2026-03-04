// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_config_overlay_animation_animation_fade.dart';

class JobTemplateConfigOverlayAnimation {
  /// Display overlay object with fade animation.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfigOverlayAnimationAnimationFade>?
  animationFade;

  /// Creates a new [JobTemplateConfigOverlayAnimation].
  /// [animationFade] Display overlay object with fade animation.
  JobTemplateConfigOverlayAnimation({this.animationFade});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animationFade':
          ?pulumi.Input.mapOptionalInputValue<
            JobTemplateConfigOverlayAnimationAnimationFade,
            Map<String, dynamic>
          >(animationFade, (value) => value.toMap()),
    };
  }

  factory JobTemplateConfigOverlayAnimation.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOverlayAnimation(
      animationFade: (() {
        final guardedValue = map['animationFade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobTemplateConfigOverlayAnimationAnimationFade.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
