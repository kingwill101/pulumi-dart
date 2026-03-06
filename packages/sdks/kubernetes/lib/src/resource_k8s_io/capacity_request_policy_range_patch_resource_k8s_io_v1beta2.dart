// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// CapacityRequestPolicyRange defines a valid range for consumable capacity values.
///
/// - If the requested amount is less than Min, it is rounded up to the Min value.
/// - If Step is set and the requested amount is between Min and Max but not aligned with Step,
/// it will be rounded up to the next value equal to Min + (n * Step).
/// - If Step is not set, the requested amount is used as-is if it falls within the range Min to Max (if set).
/// - If the requested or rounded amount exceeds Max (if set), the request does not satisfy the policy,
/// and the device cannot be allocated.
class CapacityRequestPolicyRangePatchResourceK8sIoV1beta2 {
  /// Max defines the upper limit for capacity that can be requested.
  ///
  /// Max must be less than or equal to the capacity value. Min and requestPolicy.default must be less than or equal to the maximum.
  final pulumi.Input<String>? max;
  /// Min specifies the minimum capacity allowed for a consumption request.
  ///
  /// Min must be greater than or equal to zero, and less than or equal to the capacity value. requestPolicy.default must be more than or equal to the minimum.
  final pulumi.Input<String>? min;
  /// Step defines the step size between valid capacity amounts within the range.
  ///
  /// Max (if set) and requestPolicy.default must be a multiple of Step. Min + Step must be less than or equal to the capacity value.
  final pulumi.Input<String>? step;

  /// Creates a new [CapacityRequestPolicyRangePatchResourceK8sIoV1beta2].
  /// [max] Max defines the upper limit for capacity that can be requested.
  /// [min] Min specifies the minimum capacity allowed for a consumption request.
  /// [step] Step defines the step size between valid capacity amounts within the range.
  const CapacityRequestPolicyRangePatchResourceK8sIoV1beta2({
    this.max,
    this.min,
    this.step,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
      'step': ?step,
    };
  }

  factory CapacityRequestPolicyRangePatchResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return CapacityRequestPolicyRangePatchResourceK8sIoV1beta2(
      max: (() { final guardedValue = map['max']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      min: (() { final guardedValue = map['min']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      step: (() { final guardedValue = map['step']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

