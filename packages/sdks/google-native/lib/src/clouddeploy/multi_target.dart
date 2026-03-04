// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information specifying a multiTarget.
class MultiTarget {
  /// The target_ids of this multiTarget.
  final pulumi.Input<List<String>> targetIds;

  /// Creates a new [MultiTarget].
  /// [targetIds] The target_ids of this multiTarget.
  MultiTarget({required this.targetIds});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'targetIds': targetIds};
  }

  factory MultiTarget.fromMap(Map<String, dynamic> map) {
    return MultiTarget(
      targetIds: pulumi.Input.fromValue(
        (map['targetIds'] as List).cast<String>(),
      ),
    );
  }
}
