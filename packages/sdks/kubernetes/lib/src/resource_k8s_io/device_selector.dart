// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'celdevice_selector.dart';

/// DeviceSelector must have exactly one field set.
class DeviceSelector {
  /// CEL contains a CEL expression for selecting a device.
  final pulumi.Input<CELDeviceSelector>? cel;

  /// Creates a new [DeviceSelector].
  /// [cel] CEL contains a CEL expression for selecting a device.
  const DeviceSelector({
    this.cel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cel': ?pulumi.Input.mapOptionalInputValue<CELDeviceSelector, Map<String, dynamic>>(cel, (value) => value.toMap()),
    };
  }

  factory DeviceSelector.fromMap(Map<String, dynamic> map) {
    return DeviceSelector(
      cel: (() { final guardedValue = map['cel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CELDeviceSelector.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

