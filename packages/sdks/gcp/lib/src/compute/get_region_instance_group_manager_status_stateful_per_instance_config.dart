// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig {
  /// A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  final pulumi.Input<bool> allEffective;

  /// Creates a new [GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig].
  /// [allEffective] A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status EFFECTIVE or there are no per-instance-configs.
  GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig({
    required this.allEffective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allEffective': allEffective,
    };
  }

  factory GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerStatusStatefulPerInstanceConfig(
      allEffective: (map['allEffective'] as bool).input(),
    );
  }
}

