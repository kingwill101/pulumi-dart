// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_patch_resource_k8s_io_v1beta2.dart';

/// DeviceClassConfiguration is used in DeviceClass.
class DeviceClassConfigurationPatchResourceK8sIoV1beta2 {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2>? opaque;

  /// Creates a new [DeviceClassConfigurationPatchResourceK8sIoV1beta2].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  DeviceClassConfigurationPatchResourceK8sIoV1beta2({
    this.opaque,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2, Map<String, dynamic>>(opaque, (value) => value.toMap()),
    };
  }

  factory DeviceClassConfigurationPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceClassConfigurationPatchResourceK8sIoV1beta2(
      opaque: (() { final guardedValue = map['opaque']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpaqueDeviceConfigurationPatchResourceK8sIoV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

