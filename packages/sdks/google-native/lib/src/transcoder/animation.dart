// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'animation_end.dart';
import 'animation_fade.dart';
import 'animation_static.dart';

/// Animation types.
class Animation {
  /// End previous animation.
  final pulumi.Input<AnimationEnd>? animationEnd;

  /// Display overlay object with fade animation.
  final pulumi.Input<AnimationFade>? animationFade;

  /// Display static overlay object.
  final pulumi.Input<AnimationStatic>? animationStatic;

  /// Creates a new [Animation].
  /// [animationEnd] End previous animation.
  /// [animationFade] Display overlay object with fade animation.
  /// [animationStatic] Display static overlay object.
  Animation({this.animationEnd, this.animationFade, this.animationStatic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animationEnd':
          ?pulumi.Input.mapOptionalInputValue<
            AnimationEnd,
            Map<String, dynamic>
          >(animationEnd, (value) => value.toMap()),
      'animationFade':
          ?pulumi.Input.mapOptionalInputValue<
            AnimationFade,
            Map<String, dynamic>
          >(animationFade, (value) => value.toMap()),
      'animationStatic':
          ?pulumi.Input.mapOptionalInputValue<
            AnimationStatic,
            Map<String, dynamic>
          >(animationStatic, (value) => value.toMap()),
    };
  }

  factory Animation.fromMap(Map<String, dynamic> map) {
    return Animation(
      animationEnd: (() {
        final guardedValue = map['animationEnd'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AnimationEnd.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      animationFade: (() {
        final guardedValue = map['animationFade'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AnimationFade.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      animationStatic: (() {
        final guardedValue = map['animationStatic'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AnimationStatic.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
