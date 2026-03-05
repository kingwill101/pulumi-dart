// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a combination of a group with a preference set.
class ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1 {
  /// Name of the group.
  final pulumi.Input<String> group;
  /// Name of the Preference Set.
  final pulumi.Input<String> preferenceSet;

  /// Creates a new [ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1].
  /// [group] Name of the group.
  /// [preferenceSet] Name of the Preference Set.
  ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1({
    required this.group,
    required this.preferenceSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'preferenceSet': preferenceSet,
    };
  }

  factory ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReportConfigGroupPreferenceSetAssignmentMigrationcenterV1alpha1(
      group: pulumi.Input.fromValue(map['group'] as String),
      preferenceSet: pulumi.Input.fromValue(map['preferenceSet'] as String),
    );
  }
}

