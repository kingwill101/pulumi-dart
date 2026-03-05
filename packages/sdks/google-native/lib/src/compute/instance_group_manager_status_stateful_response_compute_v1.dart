// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_status_stateful_per_instance_configs_response_compute_v1.dart';

class InstanceGroupManagerStatusStatefulResponseComputeV1 {
  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  final pulumi.Input<bool> hasStatefulConfig;
  /// Status of per-instance configurations on the instance.
  final pulumi.Input<InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1> perInstanceConfigs;

  /// Creates a new [InstanceGroupManagerStatusStatefulResponseComputeV1].
  /// [hasStatefulConfig] A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  /// [perInstanceConfigs] Status of per-instance configurations on the instance.
  InstanceGroupManagerStatusStatefulResponseComputeV1({
    required this.hasStatefulConfig,
    required this.perInstanceConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasStatefulConfig': hasStatefulConfig,
      'perInstanceConfigs': pulumi.Input.mapInputValue<InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1, Map<String, dynamic>>(perInstanceConfigs, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerStatusStatefulResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulResponseComputeV1(
      hasStatefulConfig: pulumi.Input.fromValue(map['hasStatefulConfig'] as bool),
      perInstanceConfigs: pulumi.Input.fromValue(InstanceGroupManagerStatusStatefulPerInstanceConfigsResponseComputeV1.fromMap((map['perInstanceConfigs']! as Map).cast<String, dynamic>())),
    );
  }
}

