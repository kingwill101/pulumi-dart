// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// ReplicationSync contain information about the last replica sync to the cloud.
class ReplicationSyncResponseVmmigrationV1alpha1 {
  /// The most updated snapshot created time in the source that finished replication.
  final pulumi.Input<String> lastSyncTime;

  /// Creates a new [ReplicationSyncResponseVmmigrationV1alpha1].
  /// [lastSyncTime] The most updated snapshot created time in the source that finished replication.
  const ReplicationSyncResponseVmmigrationV1alpha1({
    required this.lastSyncTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lastSyncTime': lastSyncTime,
    };
  }

  factory ReplicationSyncResponseVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ReplicationSyncResponseVmmigrationV1alpha1(
      lastSyncTime: pulumi.Input.fromValue(map['lastSyncTime'] as String),
    );
  }
}
