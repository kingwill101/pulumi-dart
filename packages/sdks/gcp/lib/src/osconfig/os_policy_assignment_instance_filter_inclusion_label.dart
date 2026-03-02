// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OsPolicyAssignmentInstanceFilterInclusionLabel {
  /// Labels are identified by key/value pairs in this map.
  /// A VM should contain all the key/value pairs specified in this map to be
  /// selected.
  final pulumi.Input<Map<String, String>>? labels;

  /// Creates a new [OsPolicyAssignmentInstanceFilterInclusionLabel].
  /// [labels] Labels are identified by key/value pairs in this map.
  OsPolicyAssignmentInstanceFilterInclusionLabel({
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
    };
  }

  factory OsPolicyAssignmentInstanceFilterInclusionLabel.fromMap(Map<String, dynamic> map) {
    return OsPolicyAssignmentInstanceFilterInclusionLabel(
      labels: map['labels'] == null ? null : ((map['labels']! as Map).cast<String, String>()).input(),
    );
  }
}

