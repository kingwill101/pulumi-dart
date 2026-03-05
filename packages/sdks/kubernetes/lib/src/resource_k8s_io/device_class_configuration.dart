// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration.dart';

/// DeviceClassConfiguration is used in DeviceClass.
class DeviceClassConfiguration {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfiguration>? opaque;

  /// Creates a new [DeviceClassConfiguration].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  DeviceClassConfiguration({
    this.opaque,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfiguration, Map<String, dynamic>>(opaque, (value) => value.toMap()),
    };
  }

  factory DeviceClassConfiguration.fromMap(Map<String, dynamic> map) {
    return DeviceClassConfiguration(
      opaque: (() { final guardedValue = map['opaque']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpaqueDeviceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

