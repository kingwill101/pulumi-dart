// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AwsNodePoolMaxPodsConstraint {
  /// The maximum number of pods to schedule on a single node.
  ///
  /// - - -
  final pulumi.Input<int> maxPodsPerNode;

  /// Creates a new [AwsNodePoolMaxPodsConstraint].
  /// [maxPodsPerNode] The maximum number of pods to schedule on a single node.
  const AwsNodePoolMaxPodsConstraint({
    required this.maxPodsPerNode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxPodsPerNode': maxPodsPerNode,
    };
  }

  factory AwsNodePoolMaxPodsConstraint.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolMaxPodsConstraint(
      maxPodsPerNode: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['maxPodsPerNode'])),
    );
  }
}
