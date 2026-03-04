// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CapacityRequirements defines the capacity requirements for a specific device request.
class CapacityRequirementsPatch {
  /// Requests represent individual device resource requests for distinct resources, all of which must be provided by the device.
  ///
  /// This value is used as an additional filtering condition against the available capacity on the device. This is semantically equivalent to a CEL selector with `device.capacity[&lt;domain&gt;].&lt;name&gt;.compareTo(quantity(&lt;request quantity&gt;)) &gt;= 0`. For example, device.capacity['test-driver.cdi.k8s.io'].counters.compareTo(quantity('2')) &gt;= 0.
  ///
  /// When a requestPolicy is defined, the requested amount is adjusted upward to the nearest valid value based on the policy. If the requested amount cannot be adjusted to a valid value—because it exceeds what the requestPolicy allows— the device is considered ineligible for allocation.
  ///
  /// For any capacity that is not explicitly requested: - If no requestPolicy is set, the default consumed capacity is equal to the full device capacity
  /// (i.e., the whole device is claimed).
  /// - If a requestPolicy is set, the default consumed capacity is determined according to that policy.
  ///
  /// If the device allows multiple allocation, the aggregated amount across all requests must not exceed the capacity value. The consumed capacity, which may be adjusted based on the requestPolicy if defined, is recorded in the resource claim’s status.devices[*].consumedCapacity field.
  final pulumi.Input<Map<String, String>>? requests;

  /// Creates a new [CapacityRequirementsPatch].
  /// [requests] Requests represent individual device resource requests for distinct resources, all of which must be provided by the device.
  CapacityRequirementsPatch({this.requests});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'requests': ?requests};
  }

  factory CapacityRequirementsPatch.fromMap(Map<String, dynamic> map) {
    return CapacityRequirementsPatch(
      requests: (() {
        final guardedValue = map['requests'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
