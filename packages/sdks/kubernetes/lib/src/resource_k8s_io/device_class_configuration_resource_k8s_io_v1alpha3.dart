// ignore_for_file: unused_element, unnecessary_cast

import 'opaque_device_configuration_resource_k8s_io_v1alpha3.dart';

/// DeviceClassConfiguration is used in DeviceClass.
class DeviceClassConfigurationResourceK8sIoV1alpha3 {
  /// Opaque provides driver-specific configuration parameters.
  final OpaqueDeviceConfigurationResourceK8sIoV1alpha3? opaque;

  /// Creates a new [DeviceClassConfigurationResourceK8sIoV1alpha3].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  DeviceClassConfigurationResourceK8sIoV1alpha3({
    this.opaque,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?opaque == null ? null : opaque!.toMap(),
    };
  }

  factory DeviceClassConfigurationResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceClassConfigurationResourceK8sIoV1alpha3(
      opaque: map['opaque'] == null ? null : OpaqueDeviceConfigurationResourceK8sIoV1alpha3.fromMap((map['opaque'] as Map).cast<String, dynamic>()),
    );
  }
}

