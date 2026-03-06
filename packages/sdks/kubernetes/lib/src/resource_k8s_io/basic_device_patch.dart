// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_attribute_resource_k8s_io_v1alpha3.dart';

/// BasicDevice defines one device instance.
class BasicDevicePatch {
  /// Attributes defines the set of attributes for this device. The name of each attribute must be unique in that set.
  ///
  /// The maximum number of attributes and capacities combined is 32.
  final pulumi.Input<Map<String, DeviceAttributeResourceK8sIoV1alpha3>>? attributes;
  /// Capacity defines the set of capacities for this device. The name of each capacity must be unique in that set.
  ///
  /// The maximum number of attributes and capacities combined is 32.
  final pulumi.Input<Map<String, String>>? capacity;

  /// Creates a new [BasicDevicePatch].
  /// [attributes] Attributes defines the set of attributes for this device. The name of each attribute must be unique in that set.
  /// [capacity] Capacity defines the set of capacities for this device. The name of each capacity must be unique in that set.
  const BasicDevicePatch({
    this.attributes,
    this.capacity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?pulumi.Input.mapOptionalInputValue<Map<String, DeviceAttributeResourceK8sIoV1alpha3>, Map<String, Map<String, dynamic>>>(attributes, (value) => pulumi.Input.encodeMapValues<DeviceAttributeResourceK8sIoV1alpha3, Map<String, dynamic>>(value, (value) => value.toMap())),
      'capacity': ?capacity,
    };
  }

  factory BasicDevicePatch.fromMap(Map<String, dynamic> map) {
    return BasicDevicePatch(
      attributes: (() { final guardedValue = map['attributes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<DeviceAttributeResourceK8sIoV1alpha3>(guardedValue, (value) => DeviceAttributeResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>()))); })(),
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

