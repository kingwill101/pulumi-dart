// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_stateful_set_strategy_patch.dart';

/// StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
class StatefulSetUpdateStrategyPatch {
  /// RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  final pulumi.Input<RollingUpdateStatefulSetStrategyPatch>? rollingUpdate;

  /// Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
  final pulumi.Input<String>? type;

  /// Creates a new [StatefulSetUpdateStrategyPatch].
  /// [rollingUpdate] RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  /// [type] Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
  StatefulSetUpdateStrategyPatch({this.rollingUpdate, this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate':
          ?pulumi.Input.mapOptionalInputValue<
            RollingUpdateStatefulSetStrategyPatch,
            Map<String, dynamic>
          >(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory StatefulSetUpdateStrategyPatch.fromMap(Map<String, dynamic> map) {
    return StatefulSetUpdateStrategyPatch(
      rollingUpdate: (() {
        final guardedValue = map['rollingUpdate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          RollingUpdateStatefulSetStrategyPatch.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      type: (() {
        final guardedValue = map['type'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
