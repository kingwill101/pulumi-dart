// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_request_policy_range_patch_resource_k8s_io_v1beta1.dart';

/// CapacityRequestPolicy defines how requests consume device capacity.
///
/// Must not set more than one ValidRequestValues.
class CapacityRequestPolicyPatchResourceK8sIoV1beta1 {
  /// Default specifies how much of this capacity is consumed by a request that does not contain an entry for it in DeviceRequest's Capacity.
  final pulumi.Input<String>? default_;

  /// ValidRange defines an acceptable quantity value range in consuming requests.
  ///
  /// If this field is set, Default must be defined and it must fall within the defined ValidRange.
  ///
  /// If the requested amount does not fall within the defined range, the request violates the policy, and this device cannot be allocated.
  ///
  /// If the request doesn't contain this capacity entry, Default value is used.
  final pulumi.Input<CapacityRequestPolicyRangePatchResourceK8sIoV1beta1>?
  validRange;

  /// ValidValues defines a set of acceptable quantity values in consuming requests.
  ///
  /// Must not contain more than 10 entries. Must be sorted in ascending order.
  ///
  /// If this field is set, Default must be defined and it must be included in ValidValues list.
  ///
  /// If the requested amount does not match any valid value but smaller than some valid values, the scheduler calculates the smallest valid value that is greater than or equal to the request. That is: min(ceil(requestedValue) ∈ validValues), where requestedValue ≤ max(validValues).
  ///
  /// If the requested amount exceeds all valid values, the request violates the policy, and this device cannot be allocated.
  final pulumi.Input<List<String>>? validValues;

  /// Creates a new [CapacityRequestPolicyPatchResourceK8sIoV1beta1].
  /// [default_] Default specifies how much of this capacity is consumed by a request that does not contain an entry for it in DeviceRequest's Capacity.
  /// [validRange] ValidRange defines an acceptable quantity value range in consuming requests.
  /// [validValues] ValidValues defines a set of acceptable quantity values in consuming requests.
  CapacityRequestPolicyPatchResourceK8sIoV1beta1({
    this.default_,
    this.validRange,
    this.validValues,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'default': ?default_,
      'validRange':
          ?pulumi.Input.mapOptionalInputValue<
            CapacityRequestPolicyRangePatchResourceK8sIoV1beta1,
            Map<String, dynamic>
          >(validRange, (value) => value.toMap()),
      'validValues': ?validValues,
    };
  }

  factory CapacityRequestPolicyPatchResourceK8sIoV1beta1.fromMap(
    Map<String, dynamic> map,
  ) {
    return CapacityRequestPolicyPatchResourceK8sIoV1beta1(
      default_: (() {
        final guardedValue = map['default'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validRange: (() {
        final guardedValue = map['validRange'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CapacityRequestPolicyRangePatchResourceK8sIoV1beta1.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      validValues: (() {
        final guardedValue = map['validValues'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
