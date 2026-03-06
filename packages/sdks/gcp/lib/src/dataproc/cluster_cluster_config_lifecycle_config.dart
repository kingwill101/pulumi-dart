// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterClusterConfigLifecycleConfig {
  /// The time when cluster will be auto-deleted.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String>? autoDeleteTime;
  /// The time when cluster will be auto-stopped.
  /// A timestamp in RFC3339 UTC "Zulu" format, accurate to nanoseconds.
  /// Example: "2014-10-02T15:01:23.045123456Z".
  ///
  /// - - -
  final pulumi.Input<String>? autoStopTime;
  /// The duration to keep the cluster alive while idling
  /// (no jobs running). After this TTL, the cluster will be deleted. Valid range: [10m, 14d].
  final pulumi.Input<String>? idleDeleteTtl;
  /// Time when the cluster became idle
  /// (most recent job finished) and became eligible for deletion due to idleness.
  final pulumi.Input<String>? idleStartTime;
  /// The duration to keep the cluster alive while idling
  /// (no jobs running). After this TTL, the cluster will be stopped. Valid range: [10m, 14d].
  final pulumi.Input<String>? idleStopTtl;

  /// Creates a new [ClusterClusterConfigLifecycleConfig].
  /// [autoDeleteTime] The time when cluster will be auto-deleted.
  /// [autoStopTime] The time when cluster will be auto-stopped.
  /// [idleDeleteTtl] The duration to keep the cluster alive while idling
  /// [idleStartTime] Time when the cluster became idle
  /// [idleStopTtl] The duration to keep the cluster alive while idling
  const ClusterClusterConfigLifecycleConfig({
    this.autoDeleteTime,
    this.autoStopTime,
    this.idleDeleteTtl,
    this.idleStartTime,
    this.idleStopTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteTime': ?autoDeleteTime,
      'autoStopTime': ?autoStopTime,
      'idleDeleteTtl': ?idleDeleteTtl,
      'idleStartTime': ?idleStartTime,
      'idleStopTtl': ?idleStopTtl,
    };
  }

  factory ClusterClusterConfigLifecycleConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfigLifecycleConfig(
      autoDeleteTime: (() { final guardedValue = map['autoDeleteTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoStopTime: (() { final guardedValue = map['autoStopTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleDeleteTtl: (() { final guardedValue = map['idleDeleteTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleStartTime: (() { final guardedValue = map['idleStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      idleStopTtl: (() { final guardedValue = map['idleStopTtl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

