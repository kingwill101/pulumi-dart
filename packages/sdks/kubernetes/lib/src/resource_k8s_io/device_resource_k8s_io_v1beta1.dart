// ignore_for_file: unused_element, unnecessary_cast

import 'basic_device_resource_k8s_io_v1beta1.dart';

/// Device represents one individual hardware instance that can be selected based on its attributes. Besides the name, exactly one field must be set.
class DeviceResourceK8sIoV1beta1 {
  /// Basic defines one device instance.
  final BasicDeviceResourceK8sIoV1beta1? basic;
  /// Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  final String name;

  /// Creates a new [DeviceResourceK8sIoV1beta1].
  /// [basic] Basic defines one device instance.
  /// [name] Name is unique identifier among all devices managed by the driver in the pool. It must be a DNS label.
  DeviceResourceK8sIoV1beta1({
    this.basic,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'basic': ?basic == null ? null : basic!.toMap(),
      'name': name,
    };
  }

  factory DeviceResourceK8sIoV1beta1.fromMap(Map<String, dynamic> map) {
    return DeviceResourceK8sIoV1beta1(
      basic: map['basic'] == null ? null : BasicDeviceResourceK8sIoV1beta1.fromMap((map['basic'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}

