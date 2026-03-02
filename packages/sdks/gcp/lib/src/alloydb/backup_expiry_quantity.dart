// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class BackupExpiryQuantity {
  /// (Output)
  /// Output only. The backup's position among its backups with the same source cluster and type, by descending chronological order create time (i.e. newest first).
  final pulumi.Input<int>? retentionCount;
  /// (Output)
  /// Output only. The length of the quantity-based queue, specified by the backup's retention policy.
  final pulumi.Input<int>? totalRetentionCount;

  /// Creates a new [BackupExpiryQuantity].
  /// [retentionCount] (Output)
  /// [totalRetentionCount] (Output)
  BackupExpiryQuantity({
    this.retentionCount,
    this.totalRetentionCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionCount': ?retentionCount,
      'totalRetentionCount': ?totalRetentionCount,
    };
  }

  factory BackupExpiryQuantity.fromMap(Map<String, dynamic> map) {
    return BackupExpiryQuantity(
      retentionCount: map['retentionCount'] == null ? null : (map['retentionCount']! as int).input(),
      totalRetentionCount: map['totalRetentionCount'] == null ? null : (map['totalRetentionCount']! as int).input(),
    );
  }
}

