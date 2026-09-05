// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_stateful_set_strategy_patch_apps_v1beta1.dart';

/// StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
class StatefulSetUpdateStrategyPatchAppsV1beta1 {
  /// RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  final pulumi.Input<RollingUpdateStatefulSetStrategyPatchAppsV1beta1?>? rollingUpdate;
  /// Type indicates the type of the StatefulSetUpdateStrategy.
  final pulumi.Input<String?>? type;

  /// Creates a new [StatefulSetUpdateStrategyPatchAppsV1beta1].
  /// [rollingUpdate] RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  /// [type] Type indicates the type of the StatefulSetUpdateStrategy.
  const StatefulSetUpdateStrategyPatchAppsV1beta1({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?pulumi.Input.mapOptionalInputValue<RollingUpdateStatefulSetStrategyPatchAppsV1beta1, Map<String, dynamic>>(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory StatefulSetUpdateStrategyPatchAppsV1beta1.fromMap(Map<String, dynamic> map) {
    return StatefulSetUpdateStrategyPatchAppsV1beta1(
      rollingUpdate: (() { final guardedValue = map['rollingUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RollingUpdateStatefulSetStrategyPatchAppsV1beta1.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
