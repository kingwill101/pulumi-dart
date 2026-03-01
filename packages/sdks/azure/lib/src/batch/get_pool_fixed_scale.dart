// ignore_for_file: unused_element, unnecessary_cast


class GetPoolFixedScale {
  /// The timeout for resize operations.
  final String resizeTimeout;
  /// The number of nodes in the Batch pool.
  final int targetDedicatedNodes;
  /// The number of low priority nodes in the Batch pool.
  final int targetLowPriorityNodes;

  /// Creates a new [GetPoolFixedScale].
  /// [resizeTimeout] The timeout for resize operations.
  /// [targetDedicatedNodes] The number of nodes in the Batch pool.
  /// [targetLowPriorityNodes] The number of low priority nodes in the Batch pool.
  GetPoolFixedScale({
    required this.resizeTimeout,
    required this.targetDedicatedNodes,
    required this.targetLowPriorityNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resizeTimeout': resizeTimeout,
      'targetDedicatedNodes': targetDedicatedNodes,
      'targetLowPriorityNodes': targetLowPriorityNodes,
    };
  }

  factory GetPoolFixedScale.fromMap(Map<String, dynamic> map) {
    return GetPoolFixedScale(
      resizeTimeout: map['resizeTimeout'] as String,
      targetDedicatedNodes: map['targetDedicatedNodes'] as int,
      targetLowPriorityNodes: map['targetLowPriorityNodes'] as int,
    );
  }
}

