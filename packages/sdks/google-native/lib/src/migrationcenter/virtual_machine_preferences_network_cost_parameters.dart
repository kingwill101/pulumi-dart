// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Parameters that affect network cost estimations.
class VirtualMachinePreferencesNetworkCostParameters {
  /// Optional. An estimated percentage of priced outbound traffic (egress traffic) from the measured outbound traffic. Must be in the interval [0, 100].
  final pulumi.Input<int>? estimatedEgressTrafficPercentage;

  /// Creates a new [VirtualMachinePreferencesNetworkCostParameters].
  /// [estimatedEgressTrafficPercentage] Optional. An estimated percentage of priced outbound traffic (egress traffic) from the measured outbound traffic. Must be in the interval [0, 100].
  const VirtualMachinePreferencesNetworkCostParameters({
    this.estimatedEgressTrafficPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'estimatedEgressTrafficPercentage': ?estimatedEgressTrafficPercentage,
    };
  }

  factory VirtualMachinePreferencesNetworkCostParameters.fromMap(Map<String, dynamic> map) {
    return VirtualMachinePreferencesNetworkCostParameters(
      estimatedEgressTrafficPercentage: (() { final guardedValue = map['estimatedEgressTrafficPercentage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
