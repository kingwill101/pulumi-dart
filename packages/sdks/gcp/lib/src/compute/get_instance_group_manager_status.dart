// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_instance_group_manager_status_all_instances_config.dart';
import 'get_instance_group_manager_status_stateful.dart';
import 'get_instance_group_manager_status_version_target.dart';

class GetInstanceGroupManagerStatus {
  /// Status of all-instances configuration on the group.
  final pulumi.Input<List<GetInstanceGroupManagerStatusAllInstancesConfig>> allInstancesConfigs;
  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final pulumi.Input<bool> isStable;
  /// Stateful status of the given Instance Group Manager.
  final pulumi.Input<List<GetInstanceGroupManagerStatusStateful>> statefuls;
  /// A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  final pulumi.Input<List<GetInstanceGroupManagerStatusVersionTarget>> versionTargets;

  /// Creates a new [GetInstanceGroupManagerStatus].
  /// [allInstancesConfigs] Status of all-instances configuration on the group.
  /// [isStable] A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  /// [statefuls] Stateful status of the given Instance Group Manager.
  /// [versionTargets] A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  GetInstanceGroupManagerStatus({
    required this.allInstancesConfigs,
    required this.isStable,
    required this.statefuls,
    required this.versionTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfigs': pulumi.Input.mapInputValue<List<GetInstanceGroupManagerStatusAllInstancesConfig>, List<Map<String, dynamic>>>(allInstancesConfigs, (value) => pulumi.Input.encodeList<GetInstanceGroupManagerStatusAllInstancesConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isStable': isStable,
      'statefuls': pulumi.Input.mapInputValue<List<GetInstanceGroupManagerStatusStateful>, List<Map<String, dynamic>>>(statefuls, (value) => pulumi.Input.encodeList<GetInstanceGroupManagerStatusStateful, Map<String, dynamic>>(value, (value) => value.toMap())),
      'versionTargets': pulumi.Input.mapInputValue<List<GetInstanceGroupManagerStatusVersionTarget>, List<Map<String, dynamic>>>(versionTargets, (value) => pulumi.Input.encodeList<GetInstanceGroupManagerStatusVersionTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInstanceGroupManagerStatus.fromMap(Map<String, dynamic> map) {
    return GetInstanceGroupManagerStatus(
      allInstancesConfigs: (pulumi.Input.decodeList<GetInstanceGroupManagerStatusAllInstancesConfig>(map['allInstancesConfigs'], (value) => GetInstanceGroupManagerStatusAllInstancesConfig.fromMap((value as Map).cast<String, dynamic>()))).input(),
      isStable: (map['isStable'] as bool).input(),
      statefuls: (pulumi.Input.decodeList<GetInstanceGroupManagerStatusStateful>(map['statefuls'], (value) => GetInstanceGroupManagerStatusStateful.fromMap((value as Map).cast<String, dynamic>()))).input(),
      versionTargets: (pulumi.Input.decodeList<GetInstanceGroupManagerStatusVersionTarget>(map['versionTargets'], (value) => GetInstanceGroupManagerStatusVersionTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

