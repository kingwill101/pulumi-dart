// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_rcm_failback_sync_details_response.dart';

/// InMageRcmFailback protected disk details.
class InMageRcmFailbackProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final pulumi.Input<double> capacityInBytes;
  /// The data pending at source agent in MB.
  final pulumi.Input<double> dataPendingAtSourceAgentInMB;
  /// The data pending in log data store in MB.
  final pulumi.Input<double> dataPendingInLogDataStoreInMB;
  /// The disk Id (reported by source agent).
  final pulumi.Input<String> diskId;
  /// The disk name.
  final pulumi.Input<String> diskName;
  /// The disk Uuid (reported by vCenter).
  final pulumi.Input<String> diskUuid;
  /// The initial replication details.
  final pulumi.Input<InMageRcmFailbackSyncDetailsResponse>? irDetails;
  /// A value indicating whether initial replication is complete or not.
  final pulumi.Input<String> isInitialReplicationComplete;
  /// A value indicating whether the disk is the OS disk.
  final pulumi.Input<String> isOSDisk;
  /// The last sync time.
  final pulumi.Input<String> lastSyncTime;
  /// The resync details.
  final pulumi.Input<InMageRcmFailbackSyncDetailsResponse>? resyncDetails;

  /// Creates a new [InMageRcmFailbackProtectedDiskDetailsResponse].
  /// [capacityInBytes] The disk capacity in bytes.
  /// [dataPendingAtSourceAgentInMB] The data pending at source agent in MB.
  /// [dataPendingInLogDataStoreInMB] The data pending in log data store in MB.
  /// [diskId] The disk Id (reported by source agent).
  /// [diskName] The disk name.
  /// [diskUuid] The disk Uuid (reported by vCenter).
  /// [irDetails] The initial replication details.
  /// [isInitialReplicationComplete] A value indicating whether initial replication is complete or not.
  /// [isOSDisk] A value indicating whether the disk is the OS disk.
  /// [lastSyncTime] The last sync time.
  /// [resyncDetails] The resync details.
  InMageRcmFailbackProtectedDiskDetailsResponse({
    required this.capacityInBytes,
    required this.dataPendingAtSourceAgentInMB,
    required this.dataPendingInLogDataStoreInMB,
    required this.diskId,
    required this.diskName,
    required this.diskUuid,
    this.irDetails,
    required this.isInitialReplicationComplete,
    required this.isOSDisk,
    required this.lastSyncTime,
    this.resyncDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityInBytes': capacityInBytes,
      'dataPendingAtSourceAgentInMB': dataPendingAtSourceAgentInMB,
      'dataPendingInLogDataStoreInMB': dataPendingInLogDataStoreInMB,
      'diskId': diskId,
      'diskName': diskName,
      'diskUuid': diskUuid,
      'irDetails': ?pulumi.Input.mapOptionalInputValue<InMageRcmFailbackSyncDetailsResponse, Map<String, dynamic>>(irDetails, (value) => value.toMap()),
      'isInitialReplicationComplete': isInitialReplicationComplete,
      'isOSDisk': isOSDisk,
      'lastSyncTime': lastSyncTime,
      'resyncDetails': ?pulumi.Input.mapOptionalInputValue<InMageRcmFailbackSyncDetailsResponse, Map<String, dynamic>>(resyncDetails, (value) => value.toMap()),
    };
  }

  factory InMageRcmFailbackProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmFailbackProtectedDiskDetailsResponse(
      capacityInBytes: (map['capacityInBytes'] as double).input(),
      dataPendingAtSourceAgentInMB: (map['dataPendingAtSourceAgentInMB'] as double).input(),
      dataPendingInLogDataStoreInMB: (map['dataPendingInLogDataStoreInMB'] as double).input(),
      diskId: (map['diskId'] as String).input(),
      diskName: (map['diskName'] as String).input(),
      diskUuid: (map['diskUuid'] as String).input(),
      irDetails: map['irDetails'] == null ? null : (InMageRcmFailbackSyncDetailsResponse.fromMap((map['irDetails']! as Map).cast<String, dynamic>())).input(),
      isInitialReplicationComplete: (map['isInitialReplicationComplete'] as String).input(),
      isOSDisk: (map['isOSDisk'] as String).input(),
      lastSyncTime: (map['lastSyncTime'] as String).input(),
      resyncDetails: map['resyncDetails'] == null ? null : (InMageRcmFailbackSyncDetailsResponse.fromMap((map['resyncDetails']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

