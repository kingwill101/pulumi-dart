// ignore_for_file: unused_element, unnecessary_cast

import 'capacity_request_policy.dart';

/// DeviceCapacity describes a quantity associated with a device.
class DeviceCapacity {
  /// RequestPolicy defines how this DeviceCapacity must be consumed when the device is allowed to be shared by multiple allocations.
  ///
  /// The Device must have allowMultipleAllocations set to true in order to set a requestPolicy.
  ///
  /// If unset, capacity requests are unconstrained: requests can consume any amount of capacity, as long as the total consumed across all allocations does not exceed the device's defined capacity. If request is also unset, default is the full capacity value.
  final CapacityRequestPolicy? requestPolicy;
  /// Value defines how much of a certain capacity that device has.
  ///
  /// This field reflects the fixed total capacity and does not change. The consumed amount is tracked separately by scheduler and does not affect this value.
  final String value;

  /// Creates a new [DeviceCapacity].
  /// [requestPolicy] RequestPolicy defines how this DeviceCapacity must be consumed when the device is allowed to be shared by multiple allocations.
  /// [value] Value defines how much of a certain capacity that device has.
  DeviceCapacity({
    this.requestPolicy,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestPolicy': ?requestPolicy == null ? null : requestPolicy!.toMap(),
      'value': value,
    };
  }

  factory DeviceCapacity.fromMap(Map<String, dynamic> map) {
    return DeviceCapacity(
      requestPolicy: map['requestPolicy'] == null ? null : CapacityRequestPolicy.fromMap((map['requestPolicy'] as Map).cast<String, dynamic>()),
      value: map['value'] as String,
    );
  }
}

