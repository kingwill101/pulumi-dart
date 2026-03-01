// ignore_for_file: unused_element, unnecessary_cast

import 'image_template_properties_vm_boot.dart';

/// Specifies optimization to be performed on image.
class ImageTemplatePropertiesOptimize {
  /// Optimization is applied on the image for a faster VM boot.
  final ImageTemplatePropertiesVmBoot? vmBoot;

  /// Creates a new [ImageTemplatePropertiesOptimize].
  /// [vmBoot] Optimization is applied on the image for a faster VM boot.
  ImageTemplatePropertiesOptimize({
    this.vmBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmBoot': ?vmBoot == null ? null : vmBoot!.toMap(),
    };
  }

  factory ImageTemplatePropertiesOptimize.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesOptimize(
      vmBoot: map['vmBoot'] == null ? null : ImageTemplatePropertiesVmBoot.fromMap((map['vmBoot'] as Map).cast<String, dynamic>()),
    );
  }
}

