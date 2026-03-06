// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a combination of a group with a preference set.
class ReportConfigGroupPreferenceSetAssignment {
  /// Name of the group.
  final pulumi.Input<String> group;
  /// Name of the Preference Set.
  final pulumi.Input<String> preferenceSet;

  /// Creates a new [ReportConfigGroupPreferenceSetAssignment].
  /// [group] Name of the group.
  /// [preferenceSet] Name of the Preference Set.
  const ReportConfigGroupPreferenceSetAssignment({
    required this.group,
    required this.preferenceSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'preferenceSet': preferenceSet,
    };
  }

  factory ReportConfigGroupPreferenceSetAssignment.fromMap(Map<String, dynamic> map) {
    return ReportConfigGroupPreferenceSetAssignment(
      group: pulumi.Input.fromValue(map['group'] as String),
      preferenceSet: pulumi.Input.fromValue(map['preferenceSet'] as String),
    );
  }
}

