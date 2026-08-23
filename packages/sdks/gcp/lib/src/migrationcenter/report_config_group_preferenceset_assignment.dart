// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ReportConfigGroupPreferencesetAssignment {
  /// Name of the group.
  final pulumi.Input<String> group;
  /// Name of the Preference Set.
  final pulumi.Input<String> preferenceSet;

  /// Creates a new [ReportConfigGroupPreferencesetAssignment].
  /// [group] Name of the group.
  /// [preferenceSet] Name of the Preference Set.
  const ReportConfigGroupPreferencesetAssignment({
    required this.group,
    required this.preferenceSet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'group': group,
      'preferenceSet': preferenceSet,
    };
  }

  factory ReportConfigGroupPreferencesetAssignment.fromMap(Map<String, dynamic> map) {
    return ReportConfigGroupPreferencesetAssignment(
      group: pulumi.Input.fromValue(map['group'] as String),
      preferenceSet: pulumi.Input.fromValue(map['preferenceSet'] as String),
    );
  }
}
