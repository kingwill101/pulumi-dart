// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_attribute_resource_k8s_io_v1alpha3.dart';

/// BasicDevice defines one device instance.
class BasicDevice {
  /// Attributes defines the set of attributes for this device. The name of each attribute must be unique in that set.
  ///
  /// The maximum number of attributes and capacities combined is 32.
  final Map<String, DeviceAttributeResourceK8sIoV1alpha3>? attributes;
  /// Capacity defines the set of capacities for this device. The name of each capacity must be unique in that set.
  ///
  /// The maximum number of attributes and capacities combined is 32.
  final Map<String, String>? capacity;

  /// Creates a new [BasicDevice].
  /// [attributes] Attributes defines the set of attributes for this device. The name of each attribute must be unique in that set.
  /// [capacity] Capacity defines the set of capacities for this device. The name of each capacity must be unique in that set.
  BasicDevice({
    this.attributes,
    this.capacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes == null ? null : pulumi.Input.encodeMapValues<DeviceAttributeResourceK8sIoV1alpha3, Map<String, dynamic>>(attributes!, (value) => value.toMap()),
      'capacity': ?capacity,
    };
  }

  factory BasicDevice.fromMap(Map<String, dynamic> map) {
    return BasicDevice(
      attributes: map['attributes'] == null ? null : pulumi.Input.decodeMapValues<DeviceAttributeResourceK8sIoV1alpha3>(map['attributes'], (value) => DeviceAttributeResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>())),
      capacity: map['capacity'] == null ? null : (map['capacity'] as Map).cast<String, String>(),
    );
  }
}

