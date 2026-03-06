// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'animation.dart';
import 'image.dart';

/// Overlay configuration.
class Overlay {
  /// List of animations. The list should be chronological, without any time overlap.
  final pulumi.Input<List<Animation>>? animations;
  /// Image overlay.
  final pulumi.Input<Image>? image;

  /// Creates a new [Overlay].
  /// [animations] List of animations. The list should be chronological, without any time overlap.
  /// [image] Image overlay.
  const Overlay({
    this.animations,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animations': ?pulumi.Input.mapOptionalInputValue<List<Animation>, List<Map<String, dynamic>>>(animations, (value) => pulumi.Input.encodeList<Animation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?pulumi.Input.mapOptionalInputValue<Image, Map<String, dynamic>>(image, (value) => value.toMap()),
    };
  }

  factory Overlay.fromMap(Map<String, dynamic> map) {
    return Overlay(
      animations: (() { final guardedValue = map['animations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<Animation>(guardedValue, (value) => Animation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      image: (() { final guardedValue = map['image']; if (guardedValue == null) return null; return pulumi.Input.fromValue(Image.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

