// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'celdevice_selector_resource_k8s_io_v1beta2.dart';

/// DeviceSelector must have exactly one field set.
class DeviceSelectorResourceK8sIoV1beta2 {
  /// CEL contains a CEL expression for selecting a device.
  final pulumi.Input<CELDeviceSelectorResourceK8sIoV1beta2>? cel;

  /// Creates a new [DeviceSelectorResourceK8sIoV1beta2].
  /// [cel] CEL contains a CEL expression for selecting a device.
  DeviceSelectorResourceK8sIoV1beta2({this.cel});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cel':
          ?pulumi.Input.mapOptionalInputValue<
            CELDeviceSelectorResourceK8sIoV1beta2,
            Map<String, dynamic>
          >(cel, (value) => value.toMap()),
    };
  }

  factory DeviceSelectorResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceSelectorResourceK8sIoV1beta2(
      cel: (() {
        final guardedValue = map['cel'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CELDeviceSelectorResourceK8sIoV1beta2.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
