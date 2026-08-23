// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_stateful_set_strategy_patch_apps_v1beta2.dart';

/// StatefulSetUpdateStrategy indicates the strategy that the StatefulSet controller will use to perform updates. It includes any additional parameters necessary to perform the update for the indicated strategy.
class StatefulSetUpdateStrategyPatchAppsV1beta2 {
  /// RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  final pulumi.Input<RollingUpdateStatefulSetStrategyPatchAppsV1beta2>? rollingUpdate;
  /// Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
  final pulumi.Input<String>? type;

  /// Creates a new [StatefulSetUpdateStrategyPatchAppsV1beta2].
  /// [rollingUpdate] RollingUpdate is used to communicate parameters when Type is RollingUpdateStatefulSetStrategyType.
  /// [type] Type indicates the type of the StatefulSetUpdateStrategy. Default is RollingUpdate.
  const StatefulSetUpdateStrategyPatchAppsV1beta2({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?pulumi.Input.mapOptionalInputValue<RollingUpdateStatefulSetStrategyPatchAppsV1beta2, Map<String, dynamic>>(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory StatefulSetUpdateStrategyPatchAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return StatefulSetUpdateStrategyPatchAppsV1beta2(
      rollingUpdate: (() { final guardedValue = map['rollingUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RollingUpdateStatefulSetStrategyPatchAppsV1beta2.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
