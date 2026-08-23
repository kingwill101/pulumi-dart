// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_patch.dart';

/// DeviceClassConfiguration is used in DeviceClass.
class DeviceClassConfigurationPatch {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationPatch>? opaque;

  /// Creates a new [DeviceClassConfigurationPatch].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  const DeviceClassConfigurationPatch({
    this.opaque,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationPatch, Map<String, dynamic>>(opaque, (value) => value.toMap()),
    };
  }

  factory DeviceClassConfigurationPatch.fromMap(Map<String, dynamic> map) {
    return DeviceClassConfigurationPatch(
      opaque: (() { final guardedValue = map['opaque']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpaqueDeviceConfigurationPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
