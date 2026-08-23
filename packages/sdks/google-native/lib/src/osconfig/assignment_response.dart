// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'assignment_group_label_response.dart';
import 'assignment_os_type_response.dart';

/// An assignment represents the group or groups of VM instances that the policy applies to. If an assignment is empty, it applies to all VM instances. Otherwise, the targeted VM instances must meet all the criteria specified. So if both labels and zones are specified, the policy applies to VM instances with those labels and in those zones.
class AssignmentResponse {
  /// Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups, for example "env=prod or env=staging".
  final pulumi.Input<List<AssignmentGroupLabelResponse>> groupLabels;
  /// Targets VM instances whose name starts with one of these prefixes. Like labels, this is another way to group VM instances when targeting configs, for example prefix="prod-". Only supported for project-level policies.
  final pulumi.Input<List<String>> instanceNamePrefixes;
  /// Targets any of the instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`. Instance targeting is uncommon and is supported to facilitate the management of changes by the instance or to target specific VM instances for development and testing. Only supported for project-level policies and must reference instances within this project.
  final pulumi.Input<List<String>> instances;
  /// Targets VM instances matching at least one of the following OS types. VM instances must match all supplied criteria for a given OsType to be included.
  final pulumi.Input<List<AssignmentOsTypeResponse>> osTypes;
  /// Targets instances in any of these zones. Leave empty to target instances in any zone. Zonal targeting is uncommon and is supported to facilitate the management of changes by zone.
  final pulumi.Input<List<String>> zones;

  /// Creates a new [AssignmentResponse].
  /// [groupLabels] Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups, for example "env=prod or env=staging".
  /// [instanceNamePrefixes] Targets VM instances whose name starts with one of these prefixes. Like labels, this is another way to group VM instances when targeting configs, for example prefix="prod-". Only supported for project-level policies.
  /// [instances] Targets any of the instances specified. Instances are specified by their URI in the form `zones/[ZONE]/instances/[INSTANCE_NAME]`. Instance targeting is uncommon and is supported to facilitate the management of changes by the instance or to target specific VM instances for development and testing. Only supported for project-level policies and must reference instances within this project.
  /// [osTypes] Targets VM instances matching at least one of the following OS types. VM instances must match all supplied criteria for a given OsType to be included.
  /// [zones] Targets instances in any of these zones. Leave empty to target instances in any zone. Zonal targeting is uncommon and is supported to facilitate the management of changes by zone.
  const AssignmentResponse({
    required this.groupLabels,
    required this.instanceNamePrefixes,
    required this.instances,
    required this.osTypes,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupLabels': pulumi.Input.mapInputValue<List<AssignmentGroupLabelResponse>, List<Map<String, dynamic>>>(groupLabels, (value) => pulumi.Input.encodeList<AssignmentGroupLabelResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'instanceNamePrefixes': instanceNamePrefixes,
      'instances': instances,
      'osTypes': pulumi.Input.mapInputValue<List<AssignmentOsTypeResponse>, List<Map<String, dynamic>>>(osTypes, (value) => pulumi.Input.encodeList<AssignmentOsTypeResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'zones': zones,
    };
  }

  factory AssignmentResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentResponse(
      groupLabels: pulumi.Input.fromValue(pulumi.Input.decodeList<AssignmentGroupLabelResponse>(map['groupLabels']!, (value) => AssignmentGroupLabelResponse.fromMap((value as Map).cast<String, dynamic>()))),
      instanceNamePrefixes: pulumi.Input.fromValue((map['instanceNamePrefixes'] as List).cast<String>()),
      instances: pulumi.Input.fromValue((map['instances'] as List).cast<String>()),
      osTypes: pulumi.Input.fromValue(pulumi.Input.decodeList<AssignmentOsTypeResponse>(map['osTypes']!, (value) => AssignmentOsTypeResponse.fromMap((value as Map).cast<String, dynamic>()))),
      zones: pulumi.Input.fromValue((map['zones'] as List).cast<String>()),
    );
  }
}
