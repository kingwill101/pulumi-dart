// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a group of VM intances that can be identified as having all these labels, for example "env=prod and app=web".
class AssignmentGroupLabel {
  /// Google Compute Engine instance labels that must be present for an instance to be included in this assignment group.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [AssignmentGroupLabel].
  /// [labels] Google Compute Engine instance labels that must be present for an instance to be included in this assignment group.
  AssignmentGroupLabel({this.labels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'labels': ?labels};
  }

  factory AssignmentGroupLabel.fromMap(Map<String, dynamic> map) {
    return AssignmentGroupLabel(
      labels: (() {
        final guardedValue = map['labels'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
