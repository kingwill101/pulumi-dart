// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegionInstanceGroupManagerStatusStatefulPerInstanceConfig {
  /// A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status `EFFECTIVE` or there are no per-instance-configs.
  final pulumi.Input<bool>? allEffective;

  /// Creates a new [RegionInstanceGroupManagerStatusStatefulPerInstanceConfig].
  /// [allEffective] A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status `EFFECTIVE` or there are no per-instance-configs.
  const RegionInstanceGroupManagerStatusStatefulPerInstanceConfig({
    this.allEffective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allEffective': ?allEffective,
    };
  }

  factory RegionInstanceGroupManagerStatusStatefulPerInstanceConfig.fromMap(Map<String, dynamic> map) {
    return RegionInstanceGroupManagerStatusStatefulPerInstanceConfig(
      allEffective: (() { final guardedValue = map['allEffective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

