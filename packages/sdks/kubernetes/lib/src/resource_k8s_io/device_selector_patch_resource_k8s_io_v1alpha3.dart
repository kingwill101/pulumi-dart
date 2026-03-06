// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'celdevice_selector_patch_resource_k8s_io_v1alpha3.dart';

/// DeviceSelector must have exactly one field set.
class DeviceSelectorPatchResourceK8sIoV1alpha3 {
  /// CEL contains a CEL expression for selecting a device.
  final pulumi.Input<CELDeviceSelectorPatchResourceK8sIoV1alpha3>? cel;

  /// Creates a new [DeviceSelectorPatchResourceK8sIoV1alpha3].
  /// [cel] CEL contains a CEL expression for selecting a device.
  const DeviceSelectorPatchResourceK8sIoV1alpha3({
    this.cel,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cel': ?pulumi.Input.mapOptionalInputValue<CELDeviceSelectorPatchResourceK8sIoV1alpha3, Map<String, dynamic>>(cel, (value) => value.toMap()),
    };
  }

  factory DeviceSelectorPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceSelectorPatchResourceK8sIoV1alpha3(
      cel: (() { final guardedValue = map['cel']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CELDeviceSelectorPatchResourceK8sIoV1alpha3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

