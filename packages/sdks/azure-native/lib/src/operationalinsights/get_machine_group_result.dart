// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'machine_reference_with_hints_response.dart';

/// Result data returned by getMachineGroup.
class GetMachineGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Count of machines in this group. The value of count may be bigger than the number of machines in case of the group has been truncated due to exceeding the max number of machines a group can handle.
  final int? count;
  /// User defined name for the group
  final String displayName;
  /// Resource ETAG.
  final String? etag;
  /// Type of the machine group
  final String? groupType;
  /// Resource identifier.
  final String id;
  /// Additional resource type qualifier.
  /// Expected value is 'machineGroup'.
  final String kind;
  /// References of the machines in this group. The hints within each reference do not represent the current value of the corresponding fields. They are a snapshot created during the last time the machine group was updated.
  final List<MachineReferenceWithHintsResponse>? machines;
  /// Resource name.
  final String name;
  /// Resource type.
  final String type;

  /// Creates a new [GetMachineGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [count] Count of machines in this group. The value of count may be bigger than the number of machines in case of the group has been truncated due to exceeding the max number of machines a group can handle.
  /// [displayName] User defined name for the group
  /// [etag] Resource ETAG.
  /// [groupType] Type of the machine group
  /// [id] Resource identifier.
  /// [kind] Additional resource type qualifier.
  /// [machines] References of the machines in this group. The hints within each reference do not represent the current value of the corresponding fields. They are a snapshot created during the last time the machine group was updated.
  /// [name] Resource name.
  /// [type] Resource type.
  GetMachineGroupResult({
    required this.azureApiVersion,
    this.count,
    required this.displayName,
    this.etag,
    this.groupType,
    required this.id,
    required this.kind,
    this.machines,
    required this.name,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'count': ?count,
      'displayName': displayName,
      'etag': ?etag,
      'groupType': ?groupType,
      'id': id,
      'kind': kind,
      'machines': ?(() { final guardedValue = machines; if (guardedValue == null) return null; return pulumi.Input.encodeList<MachineReferenceWithHintsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'name': name,
      'type': type,
    };
  }

  factory GetMachineGroupResult.fromMap(Map<String, dynamic> map) {
    return GetMachineGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return guardedValue as int; })(),
      displayName: map['displayName'] as String,
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupType: (() { final guardedValue = map['groupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      kind: map['kind'] as String,
      machines: (() { final guardedValue = map['machines']; if (guardedValue == null) return null; return pulumi.Input.decodeList<MachineReferenceWithHintsResponse>(guardedValue, (value) => MachineReferenceWithHintsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      name: map['name'] as String,
      type: map['type'] as String,
    );
  }
}

