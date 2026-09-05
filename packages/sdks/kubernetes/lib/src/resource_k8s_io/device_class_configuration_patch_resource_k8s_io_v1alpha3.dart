// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_patch_resource_k8s_io_v1alpha3.dart';

/// DeviceClassConfiguration is used in DeviceClass.
class DeviceClassConfigurationPatchResourceK8sIoV1alpha3 {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationPatchResourceK8sIoV1alpha3?>? opaque;

  /// Creates a new [DeviceClassConfigurationPatchResourceK8sIoV1alpha3].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  const DeviceClassConfigurationPatchResourceK8sIoV1alpha3({
    this.opaque,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(opaque, (value) => value.toMap()),
    };
  }

  factory DeviceClassConfigurationPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceClassConfigurationPatchResourceK8sIoV1alpha3(
      opaque: (() { final guardedValue = map['opaque']; if (guardedValue == null) return null; return pulumi.Input.fromValue(OpaqueDeviceConfigurationPatchResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
