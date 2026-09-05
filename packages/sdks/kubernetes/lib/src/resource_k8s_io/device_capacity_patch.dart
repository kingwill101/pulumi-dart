// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_request_policy_patch.dart';

/// DeviceCapacity describes a quantity associated with a device.
class DeviceCapacityPatch {
  /// RequestPolicy defines how this DeviceCapacity must be consumed when the device is allowed to be shared by multiple allocations.
  ///
  /// The Device must have allowMultipleAllocations set to true in order to set a requestPolicy.
  ///
  /// If unset, capacity requests are unconstrained: requests can consume any amount of capacity, as long as the total consumed across all allocations does not exceed the device's defined capacity. If request is also unset, default is the full capacity value.
  final pulumi.Input<CapacityRequestPolicyPatch?>? requestPolicy;
  /// Value defines how much of a certain capacity that device has.
  ///
  /// This field reflects the fixed total capacity and does not change. The consumed amount is tracked separately by scheduler and does not affect this value.
  final pulumi.Input<String?>? value;

  /// Creates a new [DeviceCapacityPatch].
  /// [requestPolicy] RequestPolicy defines how this DeviceCapacity must be consumed when the device is allowed to be shared by multiple allocations.
  /// [value] Value defines how much of a certain capacity that device has.
  const DeviceCapacityPatch({
    this.requestPolicy,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requestPolicy': ?pulumi.Input.mapOptionalInputValue<CapacityRequestPolicyPatch, Map<String, dynamic>>(requestPolicy, (value) => value.toMap()),
      'value': ?value,
    };
  }

  factory DeviceCapacityPatch.fromMap(Map<String, dynamic> map) {
    return DeviceCapacityPatch(
      requestPolicy: (() { final guardedValue = map['requestPolicy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CapacityRequestPolicyPatch.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
