// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Statistics related to replication for storage account's Blob, Table, Queue and File services. It is only available when geo-redundant replication is enabled for the storage account.
class GeoReplicationStatsResponse {
  /// A boolean flag which indicates whether or not account failover is supported for the account.
  final pulumi.Input<bool> canFailover;
  /// A boolean flag which indicates whether or not planned account failover is supported for the account.
  final pulumi.Input<bool> canPlannedFailover;
  /// All primary writes preceding this UTC date/time value are guaranteed to be available for read operations. Primary writes following this point in time may or may not be available for reads. Element may be default value if value of LastSyncTime is not available, this can happen if secondary is offline or we are in bootstrap.
  final pulumi.Input<String> lastSyncTime;
  /// The redundancy type of the account after an account failover is performed.
  final pulumi.Input<String> postFailoverRedundancy;
  /// The redundancy type of the account after a planned account failover is performed.
  final pulumi.Input<String> postPlannedFailoverRedundancy;
  /// The status of the secondary location. Possible values are: - Live: Indicates that the secondary location is active and operational. - Bootstrap: Indicates initial synchronization from the primary location to the secondary location is in progress.This typically occurs when replication is first enabled. - Unavailable: Indicates that the secondary location is temporarily unavailable.
  final pulumi.Input<String> status;

  /// Creates a new [GeoReplicationStatsResponse].
  /// [canFailover] A boolean flag which indicates whether or not account failover is supported for the account.
  /// [canPlannedFailover] A boolean flag which indicates whether or not planned account failover is supported for the account.
  /// [lastSyncTime] All primary writes preceding this UTC date/time value are guaranteed to be available for read operations. Primary writes following this point in time may or may not be available for reads. Element may be default value if value of LastSyncTime is not available, this can happen if secondary is offline or we are in bootstrap.
  /// [postFailoverRedundancy] The redundancy type of the account after an account failover is performed.
  /// [postPlannedFailoverRedundancy] The redundancy type of the account after a planned account failover is performed.
  /// [status] The status of the secondary location. Possible values are: - Live: Indicates that the secondary location is active and operational. - Bootstrap: Indicates initial synchronization from the primary location to the secondary location is in progress.This typically occurs when replication is first enabled. - Unavailable: Indicates that the secondary location is temporarily unavailable.
  GeoReplicationStatsResponse({
    required this.canFailover,
    required this.canPlannedFailover,
    required this.lastSyncTime,
    required this.postFailoverRedundancy,
    required this.postPlannedFailoverRedundancy,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'canFailover': canFailover,
      'canPlannedFailover': canPlannedFailover,
      'lastSyncTime': lastSyncTime,
      'postFailoverRedundancy': postFailoverRedundancy,
      'postPlannedFailoverRedundancy': postPlannedFailoverRedundancy,
      'status': status,
    };
  }

  factory GeoReplicationStatsResponse.fromMap(Map<String, dynamic> map) {
    return GeoReplicationStatsResponse(
      canFailover: (map['canFailover'] as bool).input(),
      canPlannedFailover: (map['canPlannedFailover'] as bool).input(),
      lastSyncTime: (map['lastSyncTime'] as String).input(),
      postFailoverRedundancy: (map['postFailoverRedundancy'] as String).input(),
      postPlannedFailoverRedundancy: (map['postPlannedFailoverRedundancy'] as String).input(),
      status: (map['status'] as String).input(),
    );
  }
}

