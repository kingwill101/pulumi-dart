// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the cluster auto-delete schedule configuration.
class LifecycleConfig {
  /// Optional. The time when cluster will be auto-deleted (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String>? autoDeleteTime;

  /// Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String>? autoDeleteTtl;

  /// Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String>? idleDeleteTtl;

  /// Creates a new [LifecycleConfig].
  /// [autoDeleteTime] Optional. The time when cluster will be auto-deleted (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [autoDeleteTtl] Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [idleDeleteTtl] Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  LifecycleConfig({
    this.autoDeleteTime,
    this.autoDeleteTtl,
    this.idleDeleteTtl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteTime': ?autoDeleteTime,
      'autoDeleteTtl': ?autoDeleteTtl,
      'idleDeleteTtl': ?idleDeleteTtl,
    };
  }

  factory LifecycleConfig.fromMap(Map<String, dynamic> map) {
    return LifecycleConfig(
      autoDeleteTime: (() {
        final guardedValue = map['autoDeleteTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoDeleteTtl: (() {
        final guardedValue = map['autoDeleteTtl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      idleDeleteTtl: (() {
        final guardedValue = map['idleDeleteTtl'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
