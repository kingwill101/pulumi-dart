// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_group_label.dart';
import 'assignment_os_type.dart';

/// An assignment represents the group or groups of VM instances that the policy applies to. If an assignment is empty, it applies to all VM instances. Otherwise, the targeted VM instances must meet all the criteria specified. So if both labels and zones are specified, the policy applies to VM instances with those labels and in those zones.
class Assignment {
  /// Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups, for example "env=prod or env=staging".
  final pulumi.Input<List<AssignmentGroupLabel>>? groupLabels;
  /// Targets VM instances whose name starts with one of these prefixes. Like labels, this is another way to group VM instances when targeting configs, for example prefix="prod-". Only supported for project-level policies.
  final pulumi.Input<List<String>>? instanceNamePrefixes;
  /// Targets any of the instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`. Instance targeting is uncommon and is supported to facilitate the management of changes by the instance or to target specific VM instances for development and testing. Only supported for project-level policies and must reference instances within this project.
  final pulumi.Input<List<String>>? instances;
  /// Targets VM instances matching at least one of the following OS types. VM instances must match all supplied criteria for a given OsType to be included.
  final pulumi.Input<List<AssignmentOsType>>? osTypes;
  /// Targets instances in any of these zones. Leave empty to target instances in any zone. Zonal targeting is uncommon and is supported to facilitate the management of changes by zone.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [Assignment].
  /// [groupLabels] Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups, for example "env=prod or env=staging".
  /// [instanceNamePrefixes] Targets VM instances whose name starts with one of these prefixes. Like labels, this is another way to group VM instances when targeting configs, for example prefix="prod-". Only supported for project-level policies.
  /// [instances] Targets any of the instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`. Instance targeting is uncommon and is supported to facilitate the management of changes by the instance or to target specific VM instances for development and testing. Only supported for project-level policies and must reference instances within this project.
  /// [osTypes] Targets VM instances matching at least one of the following OS types. VM instances must match all supplied criteria for a given OsType to be included.
  /// [zones] Targets instances in any of these zones. Leave empty to target instances in any zone. Zonal targeting is uncommon and is supported to facilitate the management of changes by zone.
  Assignment({
    this.groupLabels,
    this.instanceNamePrefixes,
    this.instances,
    this.osTypes,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupLabels': ?pulumi.Input.mapOptionalInputValue<List<AssignmentGroupLabel>, List<Map<String, dynamic>>>(groupLabels, (value) => pulumi.Input.encodeList<AssignmentGroupLabel, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceNamePrefixes': ?instanceNamePrefixes,
      'instances': ?instances,
      'osTypes': ?pulumi.Input.mapOptionalInputValue<List<AssignmentOsType>, List<Map<String, dynamic>>>(osTypes, (value) => pulumi.Input.encodeList<AssignmentOsType, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zones': ?zones,
    };
  }

  factory Assignment.fromMap(Map<String, dynamic> map) {
    return Assignment(
      groupLabels: (() { final guardedValue = map['groupLabels']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssignmentGroupLabel>(guardedValue, (value) => AssignmentGroupLabel.fromMap((value as Map).cast<String, dynamic>()))); })(),
      instanceNamePrefixes: (() { final guardedValue = map['instanceNamePrefixes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      osTypes: (() { final guardedValue = map['osTypes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AssignmentOsType>(guardedValue, (value) => AssignmentOsType.fromMap((value as Map).cast<String, dynamic>()))); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

