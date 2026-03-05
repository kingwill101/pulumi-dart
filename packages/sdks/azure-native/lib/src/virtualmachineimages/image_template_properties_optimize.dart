// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_template_properties_vm_boot.dart';

/// Specifies optimization to be performed on image.
class ImageTemplatePropertiesOptimize {
  /// Optimization is applied on the image for a faster VM boot.
  final pulumi.Input<ImageTemplatePropertiesVmBoot>? vmBoot;

  /// Creates a new [ImageTemplatePropertiesOptimize].
  /// [vmBoot] Optimization is applied on the image for a faster VM boot.
  ImageTemplatePropertiesOptimize({
    this.vmBoot,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmBoot': ?pulumi.Input.mapOptionalInputValue<ImageTemplatePropertiesVmBoot, Map<String, dynamic>>(vmBoot, (value) => value.toMap()),
    };
  }

  factory ImageTemplatePropertiesOptimize.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesOptimize(
      vmBoot: (() { final guardedValue = map['vmBoot']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ImageTemplatePropertiesVmBoot.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

