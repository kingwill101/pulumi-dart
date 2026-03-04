// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_config_overlay_animation.dart';
import 'job_config_overlay_image.dart';

class JobConfigOverlay {
  /// List of animations. The list should be chronological, without any time overlap.
  /// Structure is documented below.
  final pulumi.Input<List<JobConfigOverlayAnimation>>? animations;

  /// Image overlay.
  /// Structure is documented below.
  final pulumi.Input<JobConfigOverlayImage>? image;

  /// Creates a new [JobConfigOverlay].
  /// [animations] List of animations. The list should be chronological, without any time overlap.
  /// [image] Image overlay.
  JobConfigOverlay({this.animations, this.image});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animations':
          ?pulumi.Input.mapOptionalInputValue<
            List<JobConfigOverlayAnimation>,
            List<Map<String, dynamic>>
          >(
            animations,
            (value) =>
                pulumi.Input.encodeList<
                  JobConfigOverlayAnimation,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'image':
          ?pulumi.Input.mapOptionalInputValue<
            JobConfigOverlayImage,
            Map<String, dynamic>
          >(image, (value) => value.toMap()),
    };
  }

  factory JobConfigOverlay.fromMap(Map<String, dynamic> map) {
    return JobConfigOverlay(
      animations: (() {
        final guardedValue = map['animations'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<JobConfigOverlayAnimation>(
            guardedValue,
            (value) => JobConfigOverlayAnimation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      image: (() {
        final guardedValue = map['image'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          JobConfigOverlayImage.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
