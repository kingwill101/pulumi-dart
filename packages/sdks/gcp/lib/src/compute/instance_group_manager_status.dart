// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_status_all_instances_config.dart';
import 'instance_group_manager_status_stateful.dart';
import 'instance_group_manager_status_version_target.dart';

class InstanceGroupManagerStatus {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  final List<InstanceGroupManagerStatusAllInstancesConfig>? allInstancesConfigs;
  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final bool? isStable;
  /// Stateful status of the given Instance Group Manager.
  final List<InstanceGroupManagerStatusStateful>? statefuls;
  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final List<InstanceGroupManagerStatusVersionTarget>? versionTargets;

  /// Creates a new [InstanceGroupManagerStatus].
  /// [allInstancesConfigs] Properties to set on all instances in the group. After setting
  /// [isStable] A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  /// [statefuls] Stateful status of the given Instance Group Manager.
  /// [versionTargets] A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  InstanceGroupManagerStatus({
    this.allInstancesConfigs,
    this.isStable,
    this.statefuls,
    this.versionTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allInstancesConfigs': ?allInstancesConfigs == null ? null : pulumi.Input.encodeList<InstanceGroupManagerStatusAllInstancesConfig, Map<String, dynamic>>(allInstancesConfigs!, (value) => value.toMap()),
      'isStable': ?isStable,
      'statefuls': ?statefuls == null ? null : pulumi.Input.encodeList<InstanceGroupManagerStatusStateful, Map<String, dynamic>>(statefuls!, (value) => value.toMap()),
      'versionTargets': ?versionTargets == null ? null : pulumi.Input.encodeList<InstanceGroupManagerStatusVersionTarget, Map<String, dynamic>>(versionTargets!, (value) => value.toMap()),
    };
  }

  factory InstanceGroupManagerStatus.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatus(
      allInstancesConfigs: map['allInstancesConfigs'] == null ? null : pulumi.Input.decodeList<InstanceGroupManagerStatusAllInstancesConfig>(map['allInstancesConfigs'], (value) => InstanceGroupManagerStatusAllInstancesConfig.fromMap((value as Map).cast<String, dynamic>())),
      isStable: map['isStable'] == null ? null : map['isStable'] as bool,
      statefuls: map['statefuls'] == null ? null : pulumi.Input.decodeList<InstanceGroupManagerStatusStateful>(map['statefuls'], (value) => InstanceGroupManagerStatusStateful.fromMap((value as Map).cast<String, dynamic>())),
      versionTargets: map['versionTargets'] == null ? null : pulumi.Input.decodeList<InstanceGroupManagerStatusVersionTarget>(map['versionTargets'], (value) => InstanceGroupManagerStatusVersionTarget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

