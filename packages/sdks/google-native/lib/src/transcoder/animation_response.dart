// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'animation_end_response.dart';
import 'animation_fade_response.dart';
import 'animation_static_response.dart';

/// Animation types.
class AnimationResponse {
  /// End previous animation.
  final pulumi.Input<AnimationEndResponse> animationEnd;
  /// Display overlay object with fade animation.
  final pulumi.Input<AnimationFadeResponse> animationFade;
  /// Display static overlay object.
  final pulumi.Input<AnimationStaticResponse> animationStatic;

  /// Creates a new [AnimationResponse].
  /// [animationEnd] End previous animation.
  /// [animationFade] Display overlay object with fade animation.
  /// [animationStatic] Display static overlay object.
  const AnimationResponse({
    required this.animationEnd,
    required this.animationFade,
    required this.animationStatic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animationEnd': pulumi.Input.mapInputValue<AnimationEndResponse, Map<String, dynamic>>(animationEnd, (value) => value.toMap()),
      'animationFade': pulumi.Input.mapInputValue<AnimationFadeResponse, Map<String, dynamic>>(animationFade, (value) => value.toMap()),
      'animationStatic': pulumi.Input.mapInputValue<AnimationStaticResponse, Map<String, dynamic>>(animationStatic, (value) => value.toMap()),
    };
  }

  factory AnimationResponse.fromMap(Map<String, dynamic> map) {
    return AnimationResponse(
      animationEnd: pulumi.Input.fromValue(AnimationEndResponse.fromMap((map['animationEnd']! as Map).cast<String, dynamic>())),
      animationFade: pulumi.Input.fromValue(AnimationFadeResponse.fromMap((map['animationFade']! as Map).cast<String, dynamic>())),
      animationStatic: pulumi.Input.fromValue(AnimationStaticResponse.fromMap((map['animationStatic']! as Map).cast<String, dynamic>())),
    );
  }
}

