// ignore_for_file: unused_element, unnecessary_cast

import 'rolling_update_stateful_set_strategy.dart';

/// StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
class StatefulSetUpdateStrategy {
  /// RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  final RollingUpdateStatefulSetStrategy? rollingUpdate;
  /// Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
  final String? type;

  /// Creates a new [StatefulSetUpdateStrategy].
  /// [rollingUpdate] RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  /// [type] Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
  StatefulSetUpdateStrategy({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?rollingUpdate == null ? null : rollingUpdate!.toMap(),
      'type': ?type,
    };
  }

  factory StatefulSetUpdateStrategy.fromMap(Map<String, dynamic> map) {
    return StatefulSetUpdateStrategy(
      rollingUpdate: map['rollingUpdate'] == null ? null : RollingUpdateStatefulSetStrategy.fromMap((map['rollingUpdate'] as Map).cast<String, dynamic>()),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

