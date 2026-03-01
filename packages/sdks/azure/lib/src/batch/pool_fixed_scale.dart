// ignore_for_file: unused_element, unnecessary_cast


class PoolFixedScale {
  /// It determines what to do with a node and its running task(s) if the pool size is decreasing. Values are `Requeue`, `RetainedData`, `TaskCompletion` and `Terminate`.
  final String? nodeDeallocationMethod;
  /// The timeout for resize operations. Defaults to `PT15M`.
  final String? resizeTimeout;
  /// The number of nodes in the Batch pool. Defaults to `1`.
  final int? targetDedicatedNodes;
  /// The number of low priority nodes in the Batch pool. Defaults to `0`.
  final int? targetLowPriorityNodes;

  /// Creates a new [PoolFixedScale].
  /// [nodeDeallocationMethod] It determines what to do with a node and its running task(s) if the pool size is decreasing. Values are `Requeue`, `RetainedData`, `TaskCompletion` and `Terminate`.
  /// [resizeTimeout] The timeout for resize operations. Defaults to `PT15M`.
  /// [targetDedicatedNodes] The number of nodes in the Batch pool. Defaults to `1`.
  /// [targetLowPriorityNodes] The number of low priority nodes in the Batch pool. Defaults to `0`.
  PoolFixedScale({
    this.nodeDeallocationMethod,
    this.resizeTimeout,
    this.targetDedicatedNodes,
    this.targetLowPriorityNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeDeallocationMethod': ?nodeDeallocationMethod,
      'resizeTimeout': ?resizeTimeout,
      'targetDedicatedNodes': ?targetDedicatedNodes,
      'targetLowPriorityNodes': ?targetLowPriorityNodes,
    };
  }

  factory PoolFixedScale.fromMap(Map<String, dynamic> map) {
    return PoolFixedScale(
      nodeDeallocationMethod: map['nodeDeallocationMethod'] == null ? null : map['nodeDeallocationMethod'] as String,
      resizeTimeout: map['resizeTimeout'] == null ? null : map['resizeTimeout'] as String,
      targetDedicatedNodes: map['targetDedicatedNodes'] == null ? null : map['targetDedicatedNodes'] as int,
      targetLowPriorityNodes: map['targetLowPriorityNodes'] == null ? null : map['targetLowPriorityNodes'] as int,
    );
  }
}

