// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_device_patch_resource_k8s_io_v1beta1.dart';

/// Device represents one individual hardware instance that can be selected based on its attributes. Besides the name, exactly one field must be set.
class DevicePatchResourceK8sIoV1beta1 {
  /// Basic defines one device instance.
  final pulumi.Input<BasicDevicePatchResourceK8sIoV1beta1?>? basic;
  /// Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  final pulumi.Input<String?>? name;

  /// Creates a new [DevicePatchResourceK8sIoV1beta1].
  /// [basic] Basic defines one device instance.
  /// [name] Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  const DevicePatchResourceK8sIoV1beta1({
    this.basic,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?pulumi.Input.mapOptionalInputValue<BasicDevicePatchResourceK8sIoV1beta1, Map<String, dynamic>>(basic, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory DevicePatchResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DevicePatchResourceK8sIoV1beta1(
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicDevicePatchResourceK8sIoV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
