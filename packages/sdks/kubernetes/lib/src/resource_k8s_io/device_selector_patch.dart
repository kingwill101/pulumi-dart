// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'celdevice_selector_patch.dart';

/// DeviceSelector must have exactly one field set.
class DeviceSelectorPatch {
  /// CEL contains a CEL expression for selecting a device.
  final pulumi.Input<CELDeviceSelectorPatch>? cel;

  /// Creates a new [DeviceSelectorPatch].
  /// [cel] CEL contains a CEL expression for selecting a device.
  DeviceSelectorPatch({
    this.cel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cel': ?pulumi.Input.mapOptionalInputValue<CELDeviceSelectorPatch, Map<String, dynamic>>(cel, (value) => value.toMap()),
    };
  }

  factory DeviceSelectorPatch.fromMap(Map<String, dynamic> map) {
    return DeviceSelectorPatch(
      cel: map['cel'] == null ? null : (CELDeviceSelectorPatch.fromMap((map['cel']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

