// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_group_manager_status_all_instances_config.dart';
import 'instance_group_manager_status_stateful.dart';
import 'instance_group_manager_status_version_target.dart';

class InstanceGroupManagerStatus {
  /// Properties to set on all instances in the group. After setting
  /// allInstancesConfig on the group, you must update the group's instances to
  /// apply the configuration.
  final pulumi.Input<List<InstanceGroupManagerStatusAllInstancesConfig>>?
  allInstancesConfigs;

  /// A bit indicating whether the managed instance group is in a stable state. A stable state means that: none of the instances in the managed instance group is currently undergoing any type of change (for example, creation, restart, or deletion); no future changes are scheduled for instances in the managed instance group; and the managed instance group itself is not being modified.
  final pulumi.Input<bool>? isStable;

  /// Stateful status of the given Instance Group Manager.
  final pulumi.Input<List<InstanceGroupManagerStatusStateful>>? statefuls;

  /// A bit indicating whether version target has been reached in this managed instance group, i.e. all instances are in their target version. Instances' target version are specified by version field on Instance Group Manager.
  final pulumi.Input<List<InstanceGroupManagerStatusVersionTarget>>?
  versionTargets;

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
      'allInstancesConfigs':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceGroupManagerStatusAllInstancesConfig>,
            List<Map<String, dynamic>>
          >(
            allInstancesConfigs,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupManagerStatusAllInstancesConfig,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'isStable': ?isStable,
      'statefuls':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceGroupManagerStatusStateful>,
            List<Map<String, dynamic>>
          >(
            statefuls,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupManagerStatusStateful,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'versionTargets':
          ?pulumi.Input.mapOptionalInputValue<
            List<InstanceGroupManagerStatusVersionTarget>,
            List<Map<String, dynamic>>
          >(
            versionTargets,
            (value) =>
                pulumi.Input.encodeList<
                  InstanceGroupManagerStatusVersionTarget,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory InstanceGroupManagerStatus.fromMap(Map<String, dynamic> map) {
    return InstanceGroupManagerStatus(
      allInstancesConfigs: (() {
        final guardedValue = map['allInstancesConfigs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceGroupManagerStatusAllInstancesConfig>(
            guardedValue,
            (value) => InstanceGroupManagerStatusAllInstancesConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      isStable: (() {
        final guardedValue = map['isStable'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      statefuls: (() {
        final guardedValue = map['statefuls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceGroupManagerStatusStateful>(
            guardedValue,
            (value) => InstanceGroupManagerStatusStateful.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      versionTargets: (() {
        final guardedValue = map['versionTargets'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<InstanceGroupManagerStatusVersionTarget>(
            guardedValue,
            (value) => InstanceGroupManagerStatusVersionTarget.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
