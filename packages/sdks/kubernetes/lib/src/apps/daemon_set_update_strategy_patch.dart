// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_daemon_set_patch.dart';

/// DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
class DaemonSetUpdateStrategyPatch {
  /// Rolling update config params. Present only if type = "RollingUpdate".
  final pulumi.Input<RollingUpdateDaemonSetPatch>? rollingUpdate;
  /// Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
  final pulumi.Input<String>? type;

  /// Creates a new [DaemonSetUpdateStrategyPatch].
  /// [rollingUpdate] Rolling update config params. Present only if type = "RollingUpdate".
  /// [type] Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
  DaemonSetUpdateStrategyPatch({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?pulumi.Input.mapOptionalInputValue<RollingUpdateDaemonSetPatch, Map<String, dynamic>>(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory DaemonSetUpdateStrategyPatch.fromMap(Map<String, dynamic> map) {
    return DaemonSetUpdateStrategyPatch(
      rollingUpdate: map['rollingUpdate'] == null ? null : (RollingUpdateDaemonSetPatch.fromMap((map['rollingUpdate'] as Map).cast<String, dynamic>())).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

