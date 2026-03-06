// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vmboot_optimization_state.dart';

/// Optimization is applied on the image for a faster VM boot.
class ImageTemplatePropertiesVmBoot {
  /// Enabling this field will improve VM boot time by optimizing the final customized image output.
  final pulumi.Input<VMBootOptimizationState>? state;

  /// Creates a new [ImageTemplatePropertiesVmBoot].
  /// [state] Enabling this field will improve VM boot time by optimizing the final customized image output.
  const ImageTemplatePropertiesVmBoot({
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'state': ?pulumi.Input.mapOptionalInputValue<VMBootOptimizationState, String>(state, (value) => value.wireValue),
    };
  }

  factory ImageTemplatePropertiesVmBoot.fromMap(Map<String, dynamic> map) {
    return ImageTemplatePropertiesVmBoot(
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VMBootOptimizationState.fromValue(guardedValue as String)); })(),
    );
  }
}

