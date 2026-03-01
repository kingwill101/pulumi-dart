// ignore_for_file: unused_element, unnecessary_cast

import 'basic_device.dart';

/// Device represents one individual hardware instance that can be selected based on its attributes. Besides the name, exactly one field must be set.
class DeviceResourceK8sIoV1alpha3 {
  /// Basic defines one device instance.
  final BasicDevice? basic;
  /// Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  final String name;

  /// Creates a new [DeviceResourceK8sIoV1alpha3].
  /// [basic] Basic defines one device instance.
  /// [name] Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  DeviceResourceK8sIoV1alpha3({
    this.basic,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic == null ? null : basic!.toMap(),
      'name': name,
    };
  }

  factory DeviceResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return DeviceResourceK8sIoV1alpha3(
      basic: map['basic'] == null ? null : BasicDevice.fromMap((map['basic'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

