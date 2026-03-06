// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_status_all_instances_config_response.dart';
import 'instance_group_manager_status_stateful_response.dart';
import 'instance_group_manager_status_version_target_response.dart';

class InstanceGroupManagerStatusResponse {
  /// [Output only] Status of all-instances configuration on the group.
  final pulumi.Input<InstanceGroupManagerStatusAllInstancesConfigResponse> allInstancesConfig;
  /// The URL of the Autoscaler that targets this instance group manager.
  final pulumi.Input<String> autoscaler;
  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final pulumi.Input<bool> isStable;
  /// Stateful status of the given Instance Group Manager.
  final pulumi.Input<InstanceGroupManagerStatusStatefulResponse> stateful;
  /// A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  final pulumi.Input<InstanceGroupManagerStatusVersionTargetResponse> versionTarget;

  /// Creates a new [InstanceGroupManagerStatusResponse].
  /// [allInstancesConfig] [Output only] Status of all-instances configuration on the group.
  /// [autoscaler] The URL of the Autoscaler that targets this instance group manager.
  /// [isStable] A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  /// [stateful] Stateful status of the given Instance Group Manager.
  /// [versionTarget] A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  const InstanceGroupManagerStatusResponse({
    required this.allInstancesConfig,
    required this.autoscaler,
    required this.isStable,
    required this.stateful,
    required this.versionTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfig': pulumi.Input.mapInputValue<InstanceGroupManagerStatusAllInstancesConfigResponse, Map<String, dynamic>>(allInstancesConfig, (value) => value.toMap()),
      'autoscaler': autoscaler,
      'isStable': isStable,
      'stateful': pulumi.Input.mapInputValue<InstanceGroupManagerStatusStatefulResponse, Map<String, dynamic>>(stateful, (value) => value.toMap()),
      'versionTarget': pulumi.Input.mapInputValue<InstanceGroupManagerStatusVersionTargetResponse, Map<String, dynamic>>(versionTarget, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerStatusResponse.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusResponse(
      allInstancesConfig: pulumi.Input.fromValue(InstanceGroupManagerStatusAllInstancesConfigResponse.fromMap((map['allInstancesConfig']! as Map).cast<String, dynamic>())),
      autoscaler: pulumi.Input.fromValue(map['autoscaler'] as String),
      isStable: pulumi.Input.fromValue(map['isStable'] as bool),
      stateful: pulumi.Input.fromValue(InstanceGroupManagerStatusStatefulResponse.fromMap((map['stateful']! as Map).cast<String, dynamic>())),
      versionTarget: pulumi.Input.fromValue(InstanceGroupManagerStatusVersionTargetResponse.fromMap((map['versionTarget']! as Map).cast<String, dynamic>())),
    );
  }
}

