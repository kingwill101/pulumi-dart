// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobTemplateConfigOverlayAnimationAnimationFadeXy {
  /// Normalized x coordinate.
  final pulumi.Input<double?>? x;
  /// Normalized y coordinate.
  final pulumi.Input<double?>? y;

  /// Creates a new [JobTemplateConfigOverlayAnimationAnimationFadeXy].
  /// [x] Normalized x coordinate.
  /// [y] Normalized y coordinate.
  const JobTemplateConfigOverlayAnimationAnimationFadeXy({
    this.x,
    this.y,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'x': ?x,
      'y': ?y,
    };
  }

  factory JobTemplateConfigOverlayAnimationAnimationFadeXy.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOverlayAnimationAnimationFadeXy(
      x: (() { final guardedValue = map['x']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      y: (() { final guardedValue = map['y']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
    );
  }
}
