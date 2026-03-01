// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_region_instance_group_manager_status_all_instances_config.dart';
import 'get_region_instance_group_manager_status_stateful.dart';
import 'get_region_instance_group_manager_status_version_target.dart';

class GetRegionInstanceGroupManagerStatus {
  /// Status of all-instances configuration on the group.
  final List<GetRegionInstanceGroupManagerStatusAllInstancesConfig> allInstancesConfigs;
  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final bool isStable;
  /// Stateful status of the given Instance Group Manager.
  final List<GetRegionInstanceGroupManagerStatusStateful> statefuls;
  /// A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  final List<GetRegionInstanceGroupManagerStatusVersionTarget> versionTargets;

  /// Creates a new [GetRegionInstanceGroupManagerStatus].
  /// [allInstancesConfigs] Status of all-instances configuration on the group.
  /// [isStable] A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  /// [statefuls] Stateful status of the given Instance Group Manager.
  /// [versionTargets] A status of consistency of Instances' versions with their target version specified by version field on Instance Group Manager.
  GetRegionInstanceGroupManagerStatus({
    required this.allInstancesConfigs,
    required this.isStable,
    required this.statefuls,
    required this.versionTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfigs': pulumi.Input.encodeList<GetRegionInstanceGroupManagerStatusAllInstancesConfig, Map<String, dynamic>>(allInstancesConfigs, (value) => value.toMap()),
      'isStable': isStable,
      'statefuls': pulumi.Input.encodeList<GetRegionInstanceGroupManagerStatusStateful, Map<String, dynamic>>(statefuls, (value) => value.toMap()),
      'versionTargets': pulumi.Input.encodeList<GetRegionInstanceGroupManagerStatusVersionTarget, Map<String, dynamic>>(versionTargets, (value) => value.toMap()),
    };
  }

  factory GetRegionInstanceGroupManagerStatus.fromMap(Map<String, dynamic> map) {
    return GetRegionInstanceGroupManagerStatus(
      allInstancesConfigs: pulumi.Input.decodeList<GetRegionInstanceGroupManagerStatusAllInstancesConfig>(map['allInstancesConfigs'], (value) => GetRegionInstanceGroupManagerStatusAllInstancesConfig.fromMap((value as Map).cast<String, dynamic>())),
      isStable: map['isStable'] as bool,
      statefuls: pulumi.Input.decodeList<GetRegionInstanceGroupManagerStatusStateful>(map['statefuls'], (value) => GetRegionInstanceGroupManagerStatusStateful.fromMap((value as Map).cast<String, dynamic>())),
      versionTargets: pulumi.Input.decodeList<GetRegionInstanceGroupManagerStatusVersionTarget>(map['versionTargets'], (value) => GetRegionInstanceGroupManagerStatusVersionTarget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

