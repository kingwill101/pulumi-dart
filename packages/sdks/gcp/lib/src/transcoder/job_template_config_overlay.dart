// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'job_template_config_overlay_animation.dart';
import 'job_template_config_overlay_image.dart';

class JobTemplateConfigOverlay {
  /// List of animations. The list should be chronological, without any time overlap.
  /// Structure is documented below.
  final pulumi.Input<List<JobTemplateConfigOverlayAnimation>>? animations;
  /// Image overlay.
  /// Structure is documented below.
  final pulumi.Input<JobTemplateConfigOverlayImage>? image;

  /// Creates a new [JobTemplateConfigOverlay].
  /// [animations] List of animations. The list should be chronological, without any time overlap.
  /// [image] Image overlay.
  JobTemplateConfigOverlay({
    this.animations,
    this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'animations': ?pulumi.Input.mapOptionalInputValue<List<JobTemplateConfigOverlayAnimation>, List<Map<String, dynamic>>>(animations, (value) => pulumi.Input.encodeList<JobTemplateConfigOverlayAnimation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'image': ?pulumi.Input.mapOptionalInputValue<JobTemplateConfigOverlayImage, Map<String, dynamic>>(image, (value) => value.toMap()),
    };
  }

  factory JobTemplateConfigOverlay.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigOverlay(
      animations: map['animations'] == null ? null : (pulumi.Input.decodeList<JobTemplateConfigOverlayAnimation>(map['animations'], (value) => JobTemplateConfigOverlayAnimation.fromMap((value as Map).cast<String, dynamic>()))).input(),
      image: map['image'] == null ? null : (JobTemplateConfigOverlayImage.fromMap((map['image'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

