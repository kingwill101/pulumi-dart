// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerInstanceLifecyclePolicyResponseComputeV1 {
  /// A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  final pulumi.Input<String> forceUpdateOnRepair;

  /// Creates a new [InstanceGroupManagerInstanceLifecyclePolicyResponseComputeV1].
  /// [forceUpdateOnRepair] A bit indicating whether to forcefully apply the group's latest configuration when repairing a VM. Valid options are: - NO (default): If configuration updates are available, they are not forcefully applied during repair. Instead, configuration updates are applied according to the group's update policy. - YES: If configuration updates are available, they are applied during repair.
  InstanceGroupManagerInstanceLifecyclePolicyResponseComputeV1({
    required this.forceUpdateOnRepair,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'forceUpdateOnRepair': forceUpdateOnRepair,
    };
  }

  factory InstanceGroupManagerInstanceLifecyclePolicyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerInstanceLifecyclePolicyResponseComputeV1(
      forceUpdateOnRepair: (map['forceUpdateOnRepair'] as String).input(),
    );
  }
}

