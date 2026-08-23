// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_manager_status_stateful_per_instance_config.dart';

class GetInstanceGroupManagerStatusStateful {
  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful config even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  final pulumi.Input<bool> hasStatefulConfig;
  /// Status of per-instance configs on the instances.
  final pulumi.Input<List<GetInstanceGroupManagerStatusStatefulPerInstanceConfig>> perInstanceConfigs;

  /// Creates a new [GetInstanceGroupManagerStatusStateful].
  /// [hasStatefulConfig] A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful config even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  /// [perInstanceConfigs] Status of per-instance configs on the instances.
  const GetInstanceGroupManagerStatusStateful({
    required this.hasStatefulConfig,
    required this.perInstanceConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasStatefulConfig': hasStatefulConfig,
      'perInstanceConfigs': pulumi.Input.mapInputValue<List<GetInstanceGroupManagerStatusStatefulPerInstanceConfig>, List<Map<String, dynamic>>>(perInstanceConfigs, (value) => pulumi.Input.encodeList<GetInstanceGroupManagerStatusStatefulPerInstanceConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceGroupManagerStatusStateful.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerStatusStateful(
      hasStatefulConfig: pulumi.Input.fromValue(map['hasStatefulConfig'] as bool),
      perInstanceConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetInstanceGroupManagerStatusStatefulPerInstanceConfig>(map['perInstanceConfigs']!, (value) => GetInstanceGroupManagerStatusStatefulPerInstanceConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
