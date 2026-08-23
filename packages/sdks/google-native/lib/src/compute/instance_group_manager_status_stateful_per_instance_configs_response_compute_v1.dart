// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1 {
  /// A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  final pulumi.Input<bool> allEffective;

  /// Creates a new [InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1].
  /// [allEffective] A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  const InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1({
    required this.allEffective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allEffective': allEffective,
    };
  }

  factory InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1(
      allEffective: pulumi.Input.fromValue(map['allEffective'] as bool),
    );
  }
}
