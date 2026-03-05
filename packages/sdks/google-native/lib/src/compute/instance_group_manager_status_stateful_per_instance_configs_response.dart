// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse {
  /// A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  final pulumi.Input<bool> allEffective;

  /// Creates a new [InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse].
  /// [allEffective] A bit indicating if all of the group's per-instance configurations (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse({
    required this.allEffective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allEffective': allEffective,
    };
  }

  factory InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse(
      allEffective: pulumi.Input.fromValue(map['allEffective'] as bool),
    );
  }
}

