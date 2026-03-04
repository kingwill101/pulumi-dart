// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A backup's position in a quantity-based retention queue, of backups with the same source cluster and type, with length, retention, specified by the backup's retention policy. Once the position is greater than the retention, the backup is eligible to be garbage collected. Example: 5 backups from the same source cluster and type with a quantity-based retention of 3 and denoted by backup_id (position, retention). Safe: backup_5 (1, 3), backup_4, (2, 3), backup_3 (3, 3). Awaiting garbage collection: backup_2 (4, 3), backup_1 (5, 3)
class QuantityBasedExpiryResponseAlloydbV1alpha {
  /// The backup's position among its backups with the same source cluster and type, by descending chronological order create time(i.e. newest first).
  final pulumi.Input<int> retentionCount;

  /// The length of the quantity-based queue, specified by the backup's retention policy.
  final pulumi.Input<int> totalRetentionCount;

  /// Creates a new [QuantityBasedExpiryResponseAlloydbV1alpha].
  /// [retentionCount] The backup's position among its backups with the same source cluster and type, by descending chronological order create time(i.e. newest first).
  /// [totalRetentionCount] The length of the quantity-based queue, specified by the backup's retention policy.
  QuantityBasedExpiryResponseAlloydbV1alpha({
    required this.retentionCount,
    required this.totalRetentionCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'retentionCount': retentionCount,
      'totalRetentionCount': totalRetentionCount,
    };
  }

  factory QuantityBasedExpiryResponseAlloydbV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return QuantityBasedExpiryResponseAlloydbV1alpha(
      retentionCount: pulumi.Input.fromValue(map['retentionCount'] as int),
      totalRetentionCount: pulumi.Input.fromValue(
        map['totalRetentionCount'] as int,
      ),
    );
  }
}
