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
      'machines': ?pulumi.Input.mapOptionalInputValue<List<MachineReferenceWithHints>, List<Map<String, dynamic>>>(machines, (value) => pulumi.Input.encodeList<MachineReferenceWithHints, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory MachineGroupArgs.fromMap(Map<String, dynamic> map) {
    return MachineGroupArgs(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      displayName: (map['displayName'] as String).input(),
      groupType: map['groupType'] == null ? null : (map['groupType'] as String).input(),
      kind: (map['kind'] as String).input(),
      machineGroupName: map['machineGroupName'] == null ? null : (map['machineGroupName'] as String).input(),
      machines: map['machines'] == null ? null : (pulumi.Input.decodeList<MachineReferenceWithHints>(map['machines'], (value) => MachineReferenceWithHints.fromMap((value as Map).cast<String, dynamic>()))).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

