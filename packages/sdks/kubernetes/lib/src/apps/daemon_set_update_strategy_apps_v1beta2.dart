// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_daemon_set_apps_v1beta2.dart';

/// DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
class DaemonSetUpdateStrategyAppsV1beta2 {
  /// Rolling update config params. Present only if type = "RollingUpdate".
  final pulumi.Input<RollingUpdateDaemonSetAppsV1beta2>? rollingUpdate;
  /// Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
  final pulumi.Input<String>? type;

  /// Creates a new [DaemonSetUpdateStrategyAppsV1beta2].
  /// [rollingUpdate] Rolling update config params. Present only if type = "RollingUpdate".
  /// [type] Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
  DaemonSetUpdateStrategyAppsV1beta2({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?pulumi.Input.mapOptionalInputValue<RollingUpdateDaemonSetAppsV1beta2, Map<String, dynamic>>(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory DaemonSetUpdateStrategyAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return DaemonSetUpdateStrategyAppsV1beta2(
      rollingUpdate: map['rollingUpdate'] == null ? null : (RollingUpdateDaemonSetAppsV1beta2.fromMap((map['rollingUpdate'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

