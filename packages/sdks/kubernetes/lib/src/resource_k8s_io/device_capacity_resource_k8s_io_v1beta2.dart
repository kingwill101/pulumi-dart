// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_request_policy_resource_k8s_io_v1beta2.dart';

/// DeviceCapacity describes a quantity associated with a device.
class DeviceCapacityResourceK8sIoV1beta2 {
  /// RequestPolicy defines how this DeviceCapacity must be consumed when the device is allowed to be shared by multiple allocations.
  ///
  /// The Device must have allowMultipleAllocations set to true in order to set a requestPolicy.
  ///
  /// If unset, capacity requests are unconstrained: requests can consume any amount of capacity, as long as the total consumed across all allocations does not exceed the device's defined capacity. If request is also unset, default is the full capacity value.
  final pulumi.Input<CapacityRequestPolicyResourceK8sIoV1beta2>? requestPolicy;
  /// Value defines how much of a certain capacity that device has.
  ///
  /// This field reflects the fixed total capacity and does not change. The consumed amount is tracked separately by scheduler and does not affect this value.
  final pulumi.Input<String> value;

  /// Creates a new [DeviceCapacityResourceK8sIoV1beta2].
  /// [requestPolicy] RequestPolicy defines how this DeviceCapacity must be consumed when the device is allowed to be shared by multiple allocations.
  /// [value] Value defines how much of a certain capacity that device has.
  DeviceCapacityResourceK8sIoV1beta2({
    this.requestPolicy,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestPolicy': ?pulumi.Input.mapOptionalInputValue<CapacityRequestPolicyResourceK8sIoV1beta2, Map<String, dynamic>>(requestPolicy, (value) => value.toMap()),
      'value': value,
    };
  }

  factory DeviceCapacityResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return DeviceCapacityResourceK8sIoV1beta2(
      requestPolicy: map['requestPolicy'] == null ? null : (CapacityRequestPolicyResourceK8sIoV1beta2.fromMap((map['requestPolicy']! as Map).cast<String, dynamic>())).input(),
      value: (map['value'] as String).input(),
    );
  }
}

