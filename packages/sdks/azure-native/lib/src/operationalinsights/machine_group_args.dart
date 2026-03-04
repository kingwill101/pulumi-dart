// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_reference_with_hints.dart';

/// {@template pulumi_operationalinsights_machine_group_args_doc}
/// The set of arguments for MachineGroup.
/// {@endtemplate}
/// {@macro pulumi_operationalinsights_machine_group_args_doc}
class MachineGroupArgs {
  /// Count of machines in this group. The value of count may be bigger than the number of machines in case of the group has been truncated due to exceeding the max number of machines a group can handle.
  final pulumi.Input<int>? count;

  /// User defined name for the group
  final pulumi.Input<String> displayName;

  /// Type of the machine group
  final pulumi.Input<String>? groupType;

  /// Additional resource type qualifier.
  /// Expected value is 'machineGroup'.
  final pulumi.Input<String> kind;

  /// Machine Group resource name.
  final pulumi.Input<String>? machineGroupName;

  /// References of the machines in this group. The hints within each reference do not represent the current value of the corresponding fields. They are a snapshot created during the last time the machine group was updated.
  final pulumi.Input<List<MachineReferenceWithHints>>? machines;

  /// Resource group name within the specified subscriptionId.
  final pulumi.Input<String> resourceGroupName;

  /// OMS workspace containing the resources of interest.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [MachineGroupArgs].
  /// [count] Count of machines in this group. The value of count may be bigger than the number of machines in case of the group has been truncated due to exceeding the max number of machines a group can handle.
  /// [displayName] User defined name for the group
  /// [groupType] Type of the machine group
  /// [kind] Additional resource type qualifier.
  /// [machineGroupName] Machine Group resource name.
  /// [machines] References of the machines in this group. The hints within each reference do not represent the current value of the corresponding fields. They are a snapshot created during the last time the machine group was updated.
  /// [resourceGroupName] Resource group name within the specified subscriptionId.
  /// [workspaceName] OMS workspace containing the resources of interest.
  MachineGroupArgs({
    this.count,
    required this.displayName,
    this.groupType,
    required this.kind,
    this.machineGroupName,
    this.machines,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'displayName': displayName,
      'groupType': ?groupType,
      'kind': kind,
      'machineGroupName': ?machineGroupName,
      'machines':
          ?pulumi.Input.mapOptionalInputValue<
            List<MachineReferenceWithHints>,
            List<Map<String, dynamic>>
          >(
            machines,
            (value) =>
                pulumi.Input.encodeList<
                  MachineReferenceWithHints,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory MachineGroupArgs.fromMap(Map<String, dynamic> map) {
    return MachineGroupArgs(
      count: (() {
        final guardedValue = map['count'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      displayName: pulumi.Input.fromValue(map['displayName'] as String),
      groupType: (() {
        final guardedValue = map['groupType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      machineGroupName: (() {
        final guardedValue = map['machineGroupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      machines: (() {
        final guardedValue = map['machines'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<MachineReferenceWithHints>(
            guardedValue,
            (value) => MachineReferenceWithHints.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
