// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceGroupManagerStatusStatefulPerInstanceConfig {
  /// A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status `EFFECTIVE` or there are no per-instance-configs.
  final pulumi.Input<bool>? allEffective;

  /// Creates a new [InstanceGroupManagerStatusStatefulPerInstanceConfig].
  /// [allEffective] A bit indicating if all of the group's per-instance configs (listed in the output of a listPerInstanceConfigs API call) have status `EFFECTIVE` or there are no per-instance-configs.
  const InstanceGroupManagerStatusStatefulPerInstanceConfig({
    this.allEffective,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allEffective': ?allEffective,
    };
  }

  factory InstanceGroupManagerStatusStatefulPerInstanceConfig.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulPerInstanceConfig(
      allEffective: (() { final guardedValue = map['allEffective']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
