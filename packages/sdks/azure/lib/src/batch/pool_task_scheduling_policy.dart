// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PoolTaskSchedulingPolicy {
  /// Supported values are "Pack" and "Spread". "Pack" means as many tasks as possible (taskSlotsPerNode) should be assigned to each node in the pool before any tasks are assigned to the next node in the pool. "Spread" means that tasks should be assigned evenly across all nodes in the pool.
  final pulumi.Input<String>? nodeFillType;

  /// Creates a new [PoolTaskSchedulingPolicy].
  /// [nodeFillType] Supported values are "Pack" and "Spread". "Pack" means as many tasks as possible (taskSlotsPerNode) should be assigned to each node in the pool before any tasks are assigned to the next node in the pool. "Spread" means that tasks should be assigned evenly across all nodes in the pool.
  const PoolTaskSchedulingPolicy({
    this.nodeFillType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeFillType': ?nodeFillType,
    };
  }

  factory PoolTaskSchedulingPolicy.fromMap(Map<String, dynamic> map) {
    return PoolTaskSchedulingPolicy(
      nodeFillType: (() { final guardedValue = map['nodeFillType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
