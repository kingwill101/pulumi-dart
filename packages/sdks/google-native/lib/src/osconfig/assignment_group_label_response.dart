// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a group of VM intances that can be identified as having all these labels, for example "env=prod and app=web".
class AssignmentGroupLabelResponse {
  /// Google Compute Engine instance labels that must be present for an instance to be included in this assignment group.
  final pulumi.Input<Map<String, String>> labels;

  /// Creates a new [AssignmentGroupLabelResponse].
  /// [labels] Google Compute Engine instance labels that must be present for an instance to be included in this assignment group.
  const AssignmentGroupLabelResponse({
    required this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': labels,
    };
  }

  factory AssignmentGroupLabelResponse.fromMap(Map<String, dynamic> map) {
    return AssignmentGroupLabelResponse(
      labels: pulumi.Input.fromValue((map['labels'] as Map).cast<String, String>()),
    );
  }
}

