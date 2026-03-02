// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_device_patch.dart';

/// Device represents one individual hardware instance that can be selected based on its attributes. Besides the name, exactly one field must be set.
class DevicePatchResourceK8sIoV1alpha3 {
  /// Basic defines one device instance.
  final pulumi.Input<BasicDevicePatch>? basic;
  /// Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  final pulumi.Input<String>? name;

  /// Creates a new [DevicePatchResourceK8sIoV1alpha3].
  /// [basic] Basic defines one device instance.
  /// [name] Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  DevicePatchResourceK8sIoV1alpha3({
    this.basic,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?pulumi.Input.mapOptionalInputValue<BasicDevicePatch, Map<String, dynamic>>(basic, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory DevicePatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DevicePatchResourceK8sIoV1alpha3(
      basic: map['basic'] == null ? null : (BasicDevicePatch.fromMap((map['basic']! as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
    );
  }
}

