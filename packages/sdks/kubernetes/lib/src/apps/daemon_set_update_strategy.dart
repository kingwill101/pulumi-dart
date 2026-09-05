// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rolling_update_daemon_set.dart';

/// DaemonSetUpdateStrategy is a struct used to control the update strategy for a DaemonSet.
class DaemonSetUpdateStrategy {
  /// Rolling update config params. Present only if type = "RollingUpdate".
  final pulumi.Input<RollingUpdateDaemonSet?>? rollingUpdate;
  /// Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
  final pulumi.Input<String?>? type;

  /// Creates a new [DaemonSetUpdateStrategy].
  /// [rollingUpdate] Rolling update config params. Present only if type = "RollingUpdate".
  /// [type] Type of daemon set update. Can be "RollingUpdate" or "OnDelete". Default is RollingUpdate.
  const DaemonSetUpdateStrategy({
    this.rollingUpdate,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rollingUpdate': ?pulumi.Input.mapOptionalInputValue<RollingUpdateDaemonSet, Map<String, dynamic>>(rollingUpdate, (value) => value.toMap()),
      'type': ?type,
    };
  }

  factory DaemonSetUpdateStrategy.fromMap(Map<String, dynamic> map) {
    return DaemonSetUpdateStrategy(
      rollingUpdate: (() { final guardedValue = map['rollingUpdate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RollingUpdateDaemonSet.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
