// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the cluster auto-delete schedule configuration.
class LifecycleConfigDataprocV1beta2 {
  /// Optional. The time when cluster will be auto-deleted. (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String>? autoDeleteTime;
  /// Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String>? autoDeleteTtl;
  /// Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String>? idleDeleteTtl;

  /// Creates a new [LifecycleConfigDataprocV1beta2].
  /// [autoDeleteTime] Optional. The time when cluster will be auto-deleted. (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [autoDeleteTtl] Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [idleDeleteTtl] Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  LifecycleConfigDataprocV1beta2({
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

  factory LifecycleConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return LifecycleConfigDataprocV1beta2(
      autoDeleteTime: map['autoDeleteTime'] == null ? null : (map['autoDeleteTime'] as String).input(),
      autoDeleteTtl: map['autoDeleteTtl'] == null ? null : (map['autoDeleteTtl'] as String).input(),
      idleDeleteTtl: map['idleDeleteTtl'] == null ? null : (map['idleDeleteTtl'] as String).input(),
    );
  }
}

