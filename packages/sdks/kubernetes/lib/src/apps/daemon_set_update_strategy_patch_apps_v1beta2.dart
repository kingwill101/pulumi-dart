// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_daemon_set_patch_apps_v1beta2.dart';

/// DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
class DaemonSetUpdateStrategyPatchAppsV1beta2 {
  /// Rolling update config params. Present only if type = "RollingUpdate".
  final pulumi.Input<RollingUpdateDaemonSetPatchAppsV1beta2>? rollingUpdate;
  /// Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
  final pulumi.Input<String>? type;

  /// Creates a new [DaemonSetUpdateStrategyPatchAppsV1beta2].
  /// [rollingUpdate] Rolling update config params. Present only if type = "RollingUpdate".
  /// [type] Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
  DaemonSetUpdateStrategyPatchAppsV1beta2({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?pulumi.Input.mapOptionalInputValue<RollingUpdateDaemonSetPatchAppsV1beta2, Map<String, dynamic>>(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory DaemonSetUpdateStrategyPatchAppsV1beta2.fromMap(Map<String, dynamic> map) {
    return DaemonSetUpdateStrategyPatchAppsV1beta2(
      rollingUpdate: map['rollingUpdate'] == null ? null : (RollingUpdateDaemonSetPatchAppsV1beta2.fromMap((map['rollingUpdate']! as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type']! as String).input(),
    );
  }
}

