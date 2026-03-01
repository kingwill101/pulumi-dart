// ignore_for_file: unused_element, unnecessary_cast

import 'celdevice_selector_patch_resource_k8s_io_v1beta2.dart';

/// DeviceSelector must have exactly one field set.
class DeviceSelectorPatchResourceK8sIoV1beta2 {
  /// CEL contains a CEL expression for selecting a device.
  final CELDeviceSelectorPatchResourceK8sIoV1beta2? cel;

  /// Creates a new [DeviceSelectorPatchResourceK8sIoV1beta2].
  /// [cel] CEL contains a CEL expression for selecting a device.
  DeviceSelectorPatchResourceK8sIoV1beta2({
    this.cel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cel': ?cel == null ? null : cel!.toMap(),
    };
  }

  factory DeviceSelectorPatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceSelectorPatchResourceK8sIoV1beta2(
      cel: map['cel'] == null ? null : CELDeviceSelectorPatchResourceK8sIoV1beta2.fromMap((map['cel'] as Map).cast<String, dynamic>()),
    );
  }
}

