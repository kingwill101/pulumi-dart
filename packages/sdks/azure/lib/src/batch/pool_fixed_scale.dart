// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolFixedScale {
  /// It determines what to do with a node and its running task(s) if the pool size is decreasing. Values are `Requeue`, `RetainedData`, `TaskCompletion` and `Terminate`.
  final pulumi.Input<String>? nodeDeallocationMethod;
  /// The timeout for resize operations. Defaults to `PT15M`.
  final pulumi.Input<String>? resizeTimeout;
  /// The number of nodes in the Batch pool. Defaults to `1`.
  final pulumi.Input<int>? targetDedicatedNodes;
  /// The number of low priority nodes in the Batch pool. Defaults to `0`.
  final pulumi.Input<int>? targetLowPriorityNodes;

  /// Creates a new [PoolFixedScale].
  /// [nodeDeallocationMethod] It determines what to do with a node and its running task(s) if the pool size is decreasing. Values are `Requeue`, `RetainedData`, `TaskCompletion` and `Terminate`.
  /// [resizeTimeout] The timeout for resize operations. Defaults to `PT15M`.
  /// [targetDedicatedNodes] The number of nodes in the Batch pool. Defaults to `1`.
  /// [targetLowPriorityNodes] The number of low priority nodes in the Batch pool. Defaults to `0`.
  const PoolFixedScale({
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
      nodeDeallocationMethod: (() { final guardedValue = map['nodeDeallocationMethod']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resizeTimeout: (() { final guardedValue = map['resizeTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targetDedicatedNodes: (() { final guardedValue = map['targetDedicatedNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      targetLowPriorityNodes: (() { final guardedValue = map['targetLowPriorityNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
