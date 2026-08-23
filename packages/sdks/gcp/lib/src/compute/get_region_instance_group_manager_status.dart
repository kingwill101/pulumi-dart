// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_status_all_instances_config.dart';
import 'get_region_instance_group_manager_status_stateful.dart';
import 'get_region_instance_group_manager_status_version_target.dart';

class GetRegionInstanceGroupManagerStatus {
  /// Status of all-instances configuration on the group.
  final pulumi.Input<List<GetRegionInstanceGroupManagerStatusAllInstancesConfig>> allInstancesConfigs;
  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final pulumi.Input<bool> isStable;
  /// Stateful status of the given Instance Group Manager.
  final pulumi.Input<List<GetRegionInstanceGroupManagerStatusStateful>> statefuls;
  /// A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  final pulumi.Input<List<GetRegionInstanceGroupManagerStatusVersionTarget>> versionTargets;

  /// Creates a new [GetRegionInstanceGroupManagerStatus].
  /// [allInstancesConfigs] Status of all-instances configuration on the group.
  /// [isStable] A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  /// [statefuls] Stateful status of the given Instance Group Manager.
  /// [versionTargets] A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  const GetRegionInstanceGroupManagerStatus({
    required this.allInstancesConfigs,
    required this.isStable,
    required this.statefuls,
    required this.versionTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfigs': pulumi.Input.mapInputValue<List<GetRegionInstanceGroupManagerStatusAllInstancesConfig>, List<Map<String, dynamic>>>(allInstancesConfigs, (value) => pulumi.Input.encodeList<GetRegionInstanceGroupManagerStatusAllInstancesConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
      'isStable': isStable,
      'statefuls': pulumi.Input.mapInputValue<List<GetRegionInstanceGroupManagerStatusStateful>, List<Map<String, dynamic>>>(statefuls, (value) => pulumi.Input.encodeList<GetRegionInstanceGroupManagerStatusStateful, Map<String, dynamic>>(value, (value) => value.toMap())),
      'versionTargets': pulumi.Input.mapInputValue<List<GetRegionInstanceGroupManagerStatusVersionTarget>, List<Map<String, dynamic>>>(versionTargets, (value) => pulumi.Input.encodeList<GetRegionInstanceGroupManagerStatusVersionTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegionInstanceGroupManagerStatus.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerStatus(
      allInstancesConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionInstanceGroupManagerStatusAllInstancesConfig>(map['allInstancesConfigs']!, (value) => GetRegionInstanceGroupManagerStatusAllInstancesConfig.fromMap((value as Map).cast<String, dynamic>()))),
      isStable: pulumi.Input.fromValue(map['isStable'] as bool),
      statefuls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionInstanceGroupManagerStatusStateful>(map['statefuls']!, (value) => GetRegionInstanceGroupManagerStatusStateful.fromMap((value as Map).cast<String, dynamic>()))),
      versionTargets: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegionInstanceGroupManagerStatusVersionTarget>(map['versionTargets']!, (value) => GetRegionInstanceGroupManagerStatusVersionTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
