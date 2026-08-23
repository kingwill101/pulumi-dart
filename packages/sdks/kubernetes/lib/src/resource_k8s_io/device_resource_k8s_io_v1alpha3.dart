// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'basic_device.dart';

/// Device represents one individual hardware instance that can be selected based on its attributes. Besides the name, exactly one field must be set.
class DeviceResourceK8sIoV1alpha3 {
  /// Basic defines one device instance.
  final pulumi.Input<BasicDevice>? basic;
  /// Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  final pulumi.Input<String> name;

  /// Creates a new [DeviceResourceK8sIoV1alpha3].
  /// [basic] Basic defines one device instance.
  /// [name] Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  const DeviceResourceK8sIoV1alpha3({
    this.basic,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?pulumi.Input.mapOptionalInputValue<BasicDevice, Map<String, dynamic>>(basic, (value) => value.toMap()),
      'name': name,
    };
  }

  factory DeviceResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceResourceK8sIoV1alpha3(
      basic: (() { final guardedValue = map['basic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(BasicDevice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
