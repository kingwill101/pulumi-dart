// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opaque_device_configuration_patch_resource_k8s_io_v1beta1.dart';

/// DeviceClassConfiguration is used in DeviceClass.
class DeviceClassConfigurationPatchResourceK8sIoV1beta1 {
  /// Opaque provides driver-specific configuration parameters.
  final pulumi.Input<OpaqueDeviceConfigurationPatchResourceK8sIoV1beta1>? opaque;

  /// Creates a new [DeviceClassConfigurationPatchResourceK8sIoV1beta1].
  /// [opaque] Opaque provides driver-specific configuration parameters.
  DeviceClassConfigurationPatchResourceK8sIoV1beta1({
    this.opaque,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'opaque': ?pulumi.Input.mapOptionalInputValue<OpaqueDeviceConfigurationPatchResourceK8sIoV1beta1, Map<String, dynamic>>(opaque, (value) => value.toMap()),
    };
  }

  factory DeviceClassConfigurationPatchResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceClassConfigurationPatchResourceK8sIoV1beta1(
      opaque: map['opaque'] == null ? null : (OpaqueDeviceConfigurationPatchResourceK8sIoV1beta1.fromMap((map['opaque'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

