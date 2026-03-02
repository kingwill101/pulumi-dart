// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_status_stateful_per_instance_configs_response.dart';

class InstanceGroupManagerStatusStatefulResponse {
  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  final pulumi.Input<bool> hasStatefulConfig;
  /// A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions. This field is deprecated in favor of has_stateful_config.
  final pulumi.Input<bool> isStateful;
  /// Status of per-instance configurations on the instance.
  final pulumi.Input<InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse> perInstanceConfigs;

  /// Creates a new [InstanceGroupManagerStatusStatefulResponse].
  /// [hasStatefulConfig] A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions.
  /// [isStateful] A bit indicating whether the managed instance group has stateful configuration, that is, if you have configured any items in a stateful policy or in per-instance configs. The group might report that it has no stateful configuration even when there is still some preserved state on a managed instance, for example, if you have deleted all PICs but not yet applied those deletions. This field is deprecated in favor of has_stateful_config.
  /// [perInstanceConfigs] Status of per-instance configurations on the instance.
  InstanceGroupManagerStatusStatefulResponse({
    required this.hasStatefulConfig,
    required this.isStateful,
    required this.perInstanceConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hasStatefulConfig': hasStatefulConfig,
      'isStateful': isStateful,
      'perInstanceConfigs': pulumi.Input.mapInputValue<InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse, Map<String, dynamic>>(perInstanceConfigs, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerStatusStatefulResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusStatefulResponse(
      hasStatefulConfig: (map['hasStatefulConfig'] as bool).input(),
      isStateful: (map['isStateful'] as bool).input(),
      perInstanceConfigs: (InstanceGroupManagerStatusStatefulPerInstanceConfigsResponse.fromMap((map['perInstanceConfigs'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

