// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Optimization is applied on the image for a faster VM boot.
class ImageTemplatePropertiesResponseVmBoot {
  /// Enabling this field will improve VM boot time by optimizing the final customized image output.
  final pulumi.Input<String>? state;

  /// Creates a new [ImageTemplatePropertiesResponseVmBoot].
  /// [state] Enabling this field will improve VM boot time by optimizing the final customized image output.
  ImageTemplatePropertiesResponseVmBoot({this.state});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'state': ?state};
  }

  factory ImageTemplatePropertiesResponseVmBoot.fromMap(
    Map<String, dynamic> map,
  ) {
    return ImageTemplatePropertiesResponseVmBoot(
      state: (() {
        final guardedValue = map['state'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
