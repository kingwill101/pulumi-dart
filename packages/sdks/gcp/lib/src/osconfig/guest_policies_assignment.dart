// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'guest_policies_assignment_group_label.dart';
import 'guest_policies_assignment_os_type.dart';

class GuestPoliciesAssignment {
  /// Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups,
  /// for example "env=prod or env=staging".
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesAssignmentGroupLabel>>? groupLabels;

  /// Targets VM instances whose name starts with one of these prefixes.
  /// Like labels, this is another way to group VM instances when targeting configs,
  /// for example prefix="prod-".
  /// Only supported for project-level policies.
  final pulumi.Input<List<String>>? instanceNamePrefixes;

  /// Targets any of the instances specified. Instances are specified by their URI in the form
  /// zones/[ZONE]/instances/[INSTANCE_NAME].
  /// Instance targeting is uncommon and is supported to facilitate the management of changes
  /// by the instance or to target specific VM instances for development and testing.
  /// Only supported for project-level policies and must reference instances within this project.
  final pulumi.Input<List<String>>? instances;

  /// Targets VM instances matching at least one of the following OS types.
  /// VM instances must match all supplied criteria for a given OsType to be included.
  /// Structure is documented below.
  final pulumi.Input<List<GuestPoliciesAssignmentOsType>>? osTypes;

  /// Targets instances in any of these zones. Leave empty to target instances in any zone.
  /// Zonal targeting is uncommon and is supported to facilitate the management of changes by zone.
  final pulumi.Input<List<String>>? zones;

  /// Creates a new [GuestPoliciesAssignment].
  /// [groupLabels] Targets instances matching at least one of these label sets. This allows an assignment to target disparate groups,
  /// [instanceNamePrefixes] Targets VM instances whose name starts with one of these prefixes.
  /// [instances] Targets any of the instances specified. Instances are specified by their URI in the form
  /// [osTypes] Targets VM instances matching at least one of the following OS types.
  /// [zones] Targets instances in any of these zones. Leave empty to target instances in any zone.
  GuestPoliciesAssignment({
    this.groupLabels,
    this.instanceNamePrefixes,
    this.instances,
    this.osTypes,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupLabels':
          ?pulumi.Input.mapOptionalInputValue<
            List<GuestPoliciesAssignmentGroupLabel>,
            List<Map<String, dynamic>>
          >(
            groupLabels,
            (value) =>
                pulumi.Input.encodeList<
                  GuestPoliciesAssignmentGroupLabel,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'instanceNamePrefixes': ?instanceNamePrefixes,
      'instances': ?instances,
      'osTypes':
          ?pulumi.Input.mapOptionalInputValue<
            List<GuestPoliciesAssignmentOsType>,
            List<Map<String, dynamic>>
          >(
            osTypes,
            (value) =>
                pulumi.Input.encodeList<
                  GuestPoliciesAssignmentOsType,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'zones': ?zones,
    };
  }

  factory GuestPoliciesAssignment.fromMap(Map<String, dynamic> map) {
    return GuestPoliciesAssignment(
      groupLabels: (() {
        final guardedValue = map['groupLabels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GuestPoliciesAssignmentGroupLabel>(
            guardedValue,
            (value) => GuestPoliciesAssignmentGroupLabel.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      instanceNamePrefixes: (() {
        final guardedValue = map['instanceNamePrefixes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      instances: (() {
        final guardedValue = map['instances'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      osTypes: (() {
        final guardedValue = map['osTypes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<GuestPoliciesAssignmentOsType>(
            guardedValue,
            (value) => GuestPoliciesAssignmentOsType.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      zones: (() {
        final guardedValue = map['zones'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
