// ignore_for_file: unused_element, unnecessary_cast

import 'in_mage_rcm_sync_details_response.dart';

/// InMageRcm protected disk details.
class InMageRcmProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final double capacityInBytes;
  /// The custom target Azure disk name.
  final String? customTargetDiskName;
  /// The data pending at source agent in MB.
  final double dataPendingAtSourceAgentInMB;
  /// The data pending in log data store in MB.
  final double dataPendingInLogDataStoreInMB;
  /// The DiskEncryptionSet ARM Id.
  final String diskEncryptionSetId;
  /// The disk Id.
  final String diskId;
  /// The disk name.
  final String diskName;
  /// The disk state.
  final String diskState;
  /// The disk type.
  final String? diskType;
  /// The initial replication details.
  final InMageRcmSyncDetailsResponse? irDetails;
  /// A value indicating whether initial replication is complete or not.
  final String isInitialReplicationComplete;
  /// A value indicating whether the disk is the OS disk.
  final String isOSDisk;
  /// The log storage account ARM Id.
  final String logStorageAccountId;
  /// The resync details.
  final InMageRcmSyncDetailsResponse? resyncDetails;
  /// The logical sector size (in bytes), 512 by default.
  final int? sectorSizeInBytes;
  /// The uri of the seed blob.
  final String seedBlobUri;
  /// The ARM Id of the seed managed disk.
  final String seedManagedDiskId;
  /// The ARM Id of the target managed disk.
  final String targetManagedDiskId;

  /// Creates a new [InMageRcmProtectedDiskDetailsResponse].
  /// [capacityInBytes] The disk capacity in bytes.
  /// [customTargetDiskName] The custom target Azure disk name.
  /// [dataPendingAtSourceAgentInMB] The data pending at source agent in MB.
  /// [dataPendingInLogDataStoreInMB] The data pending in log data store in MB.
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM Id.
  /// [diskId] The disk Id.
  /// [diskName] The disk name.
  /// [diskState] The disk state.
  /// [diskType] The disk type.
  /// [irDetails] The initial replication details.
  /// [isInitialReplicationComplete] A value indicating whether initial replication is complete or not.
  /// [isOSDisk] A value indicating whether the disk is the OS disk.
  /// [logStorageAccountId] The log storage account ARM Id.
  /// [resyncDetails] The resync details.
  /// [sectorSizeInBytes] The logical sector size (in bytes), 512 by default.
  /// [seedBlobUri] The uri of the seed blob.
  /// [seedManagedDiskId] The ARM Id of the seed managed disk.
  /// [targetManagedDiskId] The ARM Id of the target managed disk.
  InMageRcmProtectedDiskDetailsResponse({
    required this.capacityInBytes,
    this.customTargetDiskName,
    required this.dataPendingAtSourceAgentInMB,
    required this.dataPendingInLogDataStoreInMB,
    required this.diskEncryptionSetId,
    required this.diskId,
    required this.diskName,
    required this.diskState,
    this.diskType,
    this.irDetails,
    required this.isInitialReplicationComplete,
    required this.isOSDisk,
    required this.logStorageAccountId,
    this.resyncDetails,
    this.sectorSizeInBytes,
    required this.seedBlobUri,
    required this.seedManagedDiskId,
    required this.targetManagedDiskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityInBytes': capacityInBytes,
      'customTargetDiskName': ?customTargetDiskName,
      'dataPendingAtSourceAgentInMB': dataPendingAtSourceAgentInMB,
      'dataPendingInLogDataStoreInMB': dataPendingInLogDataStoreInMB,
      'diskEncryptionSetId': diskEncryptionSetId,
      'diskId': diskId,
      'diskName': diskName,
      'diskState': diskState,
      'diskType': ?diskType,
      'irDetails': ?irDetails == null ? null : irDetails!.toMap(),
      'isInitialReplicationComplete': isInitialReplicationComplete,
      'isOSDisk': isOSDisk,
      'logStorageAccountId': logStorageAccountId,
      'resyncDetails': ?resyncDetails == null ? null : resyncDetails!.toMap(),
      'sectorSizeInBytes': ?sectorSizeInBytes,
      'seedBlobUri': seedBlobUri,
      'seedManagedDiskId': seedManagedDiskId,
      'targetManagedDiskId': targetManagedDiskId,
    };
  }

  factory InMageRcmProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmProtectedDiskDetailsResponse(
      capacityInBytes: map['capacityInBytes'] as double,
      customTargetDiskName: map['customTargetDiskName'] == null ? null : map['customTargetDiskName'] as String,
      dataPendingAtSourceAgentInMB: map['dataPendingAtSourceAgentInMB'] as double,
      dataPendingInLogDataStoreInMB: map['dataPendingInLogDataStoreInMB'] as double,
      diskEncryptionSetId: map['diskEncryptionSetId'] as String,
      diskId: map['diskId'] as String,
      diskName: map['diskName'] as String,
      diskState: map['diskState'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      irDetails: map['irDetails'] == null ? null : InMageRcmSyncDetailsResponse.fromMap((map['irDetails'] as Map).cast<String, dynamic>()),
      isInitialReplicationComplete: map['isInitialReplicationComplete'] as String,
      isOSDisk: map['isOSDisk'] as String,
      logStorageAccountId: map['logStorageAccountId'] as String,
      resyncDetails: map['resyncDetails'] == null ? null : InMageRcmSyncDetailsResponse.fromMap((map['resyncDetails'] as Map).cast<String, dynamic>()),
      sectorSizeInBytes: map['sectorSizeInBytes'] == null ? null : map['sectorSizeInBytes'] as int,
      seedBlobUri: map['seedBlobUri'] as String,
      seedManagedDiskId: map['seedManagedDiskId'] as String,
      targetManagedDiskId: map['targetManagedDiskId'] as String,
    );
  }
}

