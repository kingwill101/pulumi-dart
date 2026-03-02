// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'animation_response.dart';
import 'image_response.dart';

/// Overlay configuration.
class OverlayResponse {
  /// List of animations. The list should be chronological, without any time overlap.
  final pulumi.Input<List<AnimationResponse>> animations;
  /// Image overlay.
  final pulumi.Input<ImageResponse> image;

  /// Creates a new [OverlayResponse].
  /// [animations] List of animations. The list should be chronological, without any time overlap.
  /// [image] Image overlay.
  OverlayResponse({
    required this.animations,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animations': pulumi.Input.mapInputValue<List<AnimationResponse>, List<Map<String, dynamic>>>(animations, (value) => pulumi.Input.encodeList<AnimationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': pulumi.Input.mapInputValue<ImageResponse, Map<String, dynamic>>(image, (value) => value.toMap()),
    };
  }

  factory OverlayResponse.fromMap(Map<String, dynamic> map) {
    return OverlayResponse(
      animations: (pulumi.Input.decodeList<AnimationResponse>(map['animations'], (value) => AnimationResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: (ImageResponse.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

