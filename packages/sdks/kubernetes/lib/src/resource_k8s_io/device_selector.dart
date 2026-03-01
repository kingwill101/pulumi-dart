// ignore_for_file: unused_element, unnecessary_cast

import 'celdevice_selector.dart';

/// DeviceSelector must have exactly one field set.
class DeviceSelector {
  /// CEL contains a CEL expression for selecting a device.
  final CELDeviceSelector? cel;

  /// Creates a new [DeviceSelector].
  /// [cel] CEL contains a CEL expression for selecting a device.
  DeviceSelector({
    this.cel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cel': ?cel == null ? null : cel!.toMap(),
    };
  }

  factory DeviceSelector.fromMap(Map<String, dynamic> map) {
    return DeviceSelector(
      cel: map['cel'] == null ? null : CELDeviceSelector.fromMap((map['cel'] as Map).cast<String, dynamic>()),
    );
  }
}

