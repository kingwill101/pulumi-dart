// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetMultiTarget {
  /// Required. The target_ids of this multiTarget.
  final pulumi.Input<List<String>> targetIds;

  /// Creates a new [TargetMultiTarget].
  /// [targetIds] Required. The target_ids of this multiTarget.
  const TargetMultiTarget({
    required this.targetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetIds': targetIds,
    };
  }

  factory TargetMultiTarget.fromMap(Map<String, dynamic> map) {
    return TargetMultiTarget(
      targetIds: pulumi.Input.fromValue((map['targetIds'] as List).cast<String>()),
    );
  }
}

