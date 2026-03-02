// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_stateful_set_strategy_apps_v1beta1.dart';

/// StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
class StatefulSetUpdateStrategyAppsV1beta1 {
  /// RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  final pulumi.Input<RollingUpdateStatefulSetStrategyAppsV1beta1>? rollingUpdate;
  /// Type indicates the type of the StatefulSetUpdateStrategy.
  final pulumi.Input<String>? type;

  /// Creates a new [StatefulSetUpdateStrategyAppsV1beta1].
  /// [rollingUpdate] RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  /// [type] Type indicates the type of the StatefulSetUpdateStrategy.
  StatefulSetUpdateStrategyAppsV1beta1({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?pulumi.Input.mapOptionalInputValue<RollingUpdateStatefulSetStrategyAppsV1beta1, Map<String, dynamic>>(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory StatefulSetUpdateStrategyAppsV1beta1.fromMap(Map<String, dynamic> map) {
    return StatefulSetUpdateStrategyAppsV1beta1(
      rollingUpdate: map['rollingUpdate'] == null ? null : (RollingUpdateStatefulSetStrategyAppsV1beta1.fromMap((map['rollingUpdate']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

