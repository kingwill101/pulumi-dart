// ignore_for_file: unused_element, unnecessary_cast


/// Information specifying a multiTarget.
class MultiTarget {
  /// The target_ids of this multiTarget.
  final List<String> targetIds;

  /// Creates a new [MultiTarget].
  /// [targetIds] The target_ids of this multiTarget.
  MultiTarget({
    required this.targetIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'targetIds': targetIds,
    };
  }

  factory MultiTarget.fromMap(Map<String, dynamic> map) {
    return MultiTarget(
      targetIds: (map['targetIds'] as List).cast<String>(),
    );
  }
}

