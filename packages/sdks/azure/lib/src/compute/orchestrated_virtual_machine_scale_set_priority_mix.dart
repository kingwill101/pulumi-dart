// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OrchestratedVirtualMachineScaleSetPriorityMix {
  /// Specifies the base number of VMs of `Regular` priority that will be created before any VMs of priority `Spot` are created. Possible values are integers between `0` and `1000`. Defaults to `0`.
  final pulumi.Input<int>? baseRegularCount;
  /// Specifies the desired percentage of VM instances that are of `Regular` priority after the base count has been reached. Possible values are integers between `0` and `100`. Defaults to `0`.
  final pulumi.Input<int>? regularPercentageAboveBase;

  /// Creates a new [OrchestratedVirtualMachineScaleSetPriorityMix].
  /// [baseRegularCount] Specifies the base number of VMs of `Regular` priority that will be created before any VMs of priority `Spot` are created. Possible values are integers between `0` and `1000`. Defaults to `0`.
  /// [regularPercentageAboveBase] Specifies the desired percentage of VM instances that are of `Regular` priority after the base count has been reached. Possible values are integers between `0` and `100`. Defaults to `0`.
  OrchestratedVirtualMachineScaleSetPriorityMix({
    this.baseRegularCount,
    this.regularPercentageAboveBase,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'baseRegularCount': ?baseRegularCount,
      'regularPercentageAboveBase': ?regularPercentageAboveBase,
    };
  }

  factory OrchestratedVirtualMachineScaleSetPriorityMix.fromMap(Map<String, dynamic> map) {
    return OrchestratedVirtualMachineScaleSetPriorityMix(
      baseRegularCount: (() { final guardedValue = map['baseRegularCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      regularPercentageAboveBase: (() { final guardedValue = map['regularPercentageAboveBase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

