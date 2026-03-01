// ignore_for_file: unused_element, unnecessary_cast

import 'image_template_properties_response_vm_boot.dart';

/// Specifies optimization to be performed on image.
class ImageTemplatePropertiesResponseOptimize {
  /// Optimization is applied on the image for a faster VM boot.
  final ImageTemplatePropertiesResponseVmBoot? vmBoot;

  /// Creates a new [ImageTemplatePropertiesResponseOptimize].
  /// [vmBoot] Optimization is applied on the image for a faster VM boot.
  ImageTemplatePropertiesResponseOptimize({
    this.vmBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmBoot': ?vmBoot == null ? null : vmBoot!.toMap(),
    };
  }

  factory ImageTemplatePropertiesResponseOptimize.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesResponseOptimize(
      vmBoot: map['vmBoot'] == null ? null : ImageTemplatePropertiesResponseVmBoot.fromMap((map['vmBoot'] as Map).cast<String, dynamic>()),
    );
  }
}

