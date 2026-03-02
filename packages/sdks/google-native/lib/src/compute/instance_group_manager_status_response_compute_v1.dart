// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_status_stateful_response_compute_v1.dart';
import 'instance_group_manager_status_version_target_response_compute_v1.dart';

class InstanceGroupManagerStatusResponseComputeV1 {
  /// The URL of the Autoscaler that targets this instance group manager.
  final pulumi.Input<String> autoscaler;
  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final pulumi.Input<bool> isStable;
  /// Stateful status of the given Instance Group Manager.
  final pulumi.Input<InstanceGroupManagerStatusStatefulResponseComputeV1> stateful;
  /// A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  final pulumi.Input<InstanceGroupManagerStatusVersionTargetResponseComputeV1> versionTarget;

  /// Creates a new [InstanceGroupManagerStatusResponseComputeV1].
  /// [autoscaler] The URL of the Autoscaler that targets this instance group manager.
  /// [isStable] A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  /// [stateful] Stateful status of the given Instance Group Manager.
  /// [versionTarget] A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  InstanceGroupManagerStatusResponseComputeV1({
    required this.autoscaler,
    required this.isStable,
    required this.stateful,
    required this.versionTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoscaler': autoscaler,
      'isStable': isStable,
      'stateful': pulumi.Input.mapInputValue<InstanceGroupManagerStatusStatefulResponseComputeV1, Map<String, dynamic>>(stateful, (value) => value.toMap()),
      'versionTarget': pulumi.Input.mapInputValue<InstanceGroupManagerStatusVersionTargetResponseComputeV1, Map<String, dynamic>>(versionTarget, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerStatusResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatusResponseComputeV1(
      autoscaler: (map['autoscaler'] as String).input(),
      isStable: (map['isStable'] as bool).input(),
      stateful: (InstanceGroupManagerStatusStatefulResponseComputeV1.fromMap((map['stateful'] as Map).cast<String, dynamic>())).input(),
      versionTarget: (InstanceGroupManagerStatusVersionTargetResponseComputeV1.fromMap((map['versionTarget'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

