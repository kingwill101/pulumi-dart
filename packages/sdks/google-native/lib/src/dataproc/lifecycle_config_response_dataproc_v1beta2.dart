// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the cluster auto-delete schedule configuration.
class LifecycleConfigResponseDataprocV1beta2 {
  /// Optional. The time when cluster will be auto-deleted. (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String> autoDeleteTime;

  /// Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String> autoDeleteTtl;

  /// Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String> idleDeleteTtl;

  /// The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  final pulumi.Input<String> idleStartTime;

  /// Creates a new [LifecycleConfigResponseDataprocV1beta2].
  /// [autoDeleteTime] Optional. The time when cluster will be auto-deleted. (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [autoDeleteTtl] Optional. The lifetime duration of cluster. The cluster will be auto-deleted at the end of this period. Minimum value is 10 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [idleDeleteTtl] Optional. The duration to keep the cluster alive while idling (when no jobs are running). Passing this threshold will cause the cluster to be deleted. Minimum value is 5 minutes; maximum value is 14 days (see JSON representation of Duration (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  /// [idleStartTime] The time when cluster became idle (most recent job finished) and became eligible for deletion due to idleness (see JSON representation of Timestamp (https://developers.google.com/protocol-buffers/docs/proto3#json)).
  LifecycleConfigResponseDataprocV1beta2({
    required this.autoDeleteTime,
    required this.autoDeleteTtl,
    required this.idleDeleteTtl,
    required this.idleStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDeleteTime': autoDeleteTime,
      'autoDeleteTtl': autoDeleteTtl,
      'idleDeleteTtl': idleDeleteTtl,
      'idleStartTime': idleStartTime,
    };
  }

  factory LifecycleConfigResponseDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return LifecycleConfigResponseDataprocV1beta2(
      autoDeleteTime: pulumi.Input.fromValue(map['autoDeleteTime'] as String),
      autoDeleteTtl: pulumi.Input.fromValue(map['autoDeleteTtl'] as String),
      idleDeleteTtl: pulumi.Input.fromValue(map['idleDeleteTtl'] as String),
      idleStartTime: pulumi.Input.fromValue(map['idleStartTime'] as String),
    );
  }
}
