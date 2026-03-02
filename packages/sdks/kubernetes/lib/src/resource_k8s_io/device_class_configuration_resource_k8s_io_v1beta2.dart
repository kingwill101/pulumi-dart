// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_resource_k8s_io_v1beta2.dart';

/// DeviceClassConfiguration is used in DeviceClass.
class DeviceClassConfigurationResourceK8sIoV1beta2 {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationResourceK8sIoV1beta2>? opaque;

  /// Creates a new [DeviceClassConfigurationResourceK8sIoV1beta2].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  DeviceClassConfigurationResourceK8sIoV1beta2({
    this.opaque,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationResourceK8sIoV1beta2, Map<String, dynamic>>(opaque, (value) => value.toMap()),
    };
  }

  factory DeviceClassConfigurationResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceClassConfigurationResourceK8sIoV1beta2(
      opaque: map['opaque'] == null ? null : (OpaqueDeviceConfigurationResourceK8sIoV1beta2.fromMap((map['opaque']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

