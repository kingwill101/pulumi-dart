// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'in_mage_rcm_sync_details_response.dart';

/// InMageRcm protected disk details.
class InMageRcmProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final pulumi.Input<double> capacityInBytes;
  /// The custom target Azure disk name.
  final pulumi.Input<String>? customTargetDiskName;
  /// The data pending at source agent in MB.
  final pulumi.Input<double> dataPendingAtSourceAgentInMB;
  /// The data pending in log data store in MB.
  final pulumi.Input<double> dataPendingInLogDataStoreInMB;
  /// The DiskEncryptionSet ARM Id.
  final pulumi.Input<String> diskEncryptionSetId;
  /// The disk Id.
  final pulumi.Input<String> diskId;
  /// The disk name.
  final pulumi.Input<String> diskName;
  /// The disk state.
  final pulumi.Input<String> diskState;
  /// The disk type.
  final pulumi.Input<String>? diskType;
  /// The initial replication details.
  final pulumi.Input<InMageRcmSyncDetailsResponse>? irDetails;
  /// A value indicating whether initial replication is complete or not.
  final pulumi.Input<String> isInitialReplicationComplete;
  /// A value indicating whether the disk is the OS disk.
  final pulumi.Input<String> isOSDisk;
  /// The log storage account ARM Id.
  final pulumi.Input<String> logStorageAccountId;
  /// The resync details.
  final pulumi.Input<InMageRcmSyncDetailsResponse>? resyncDetails;
  /// The logical sector size (in bytes), 512 by default.
  final pulumi.Input<int>? sectorSizeInBytes;
  /// The uri of the seed blob.
  final pulumi.Input<String> seedBlobUri;
  /// The ARM Id of the seed managed disk.
  final pulumi.Input<String> seedManagedDiskId;
  /// The ARM Id of the target managed disk.
  final pulumi.Input<String> targetManagedDiskId;

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
      'irDetails': ?pulumi.Input.mapOptionalInputValue<InMageRcmSyncDetailsResponse, Map<String, dynamic>>(irDetails, (value) => value.toMap()),
      'isInitialReplicationComplete': isInitialReplicationComplete,
      'isOSDisk': isOSDisk,
      'logStorageAccountId': logStorageAccountId,
      'resyncDetails': ?pulumi.Input.mapOptionalInputValue<InMageRcmSyncDetailsResponse, Map<String, dynamic>>(resyncDetails, (value) => value.toMap()),
      'sectorSizeInBytes': ?sectorSizeInBytes,
      'seedBlobUri': seedBlobUri,
      'seedManagedDiskId': seedManagedDiskId,
      'targetManagedDiskId': targetManagedDiskId,
    };
  }

  factory InMageRcmProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return InMageRcmProtectedDiskDetailsResponse(
      capacityInBytes: (map['capacityInBytes'] as double).input(),
      customTargetDiskName: map['customTargetDiskName'] == null ? null : (map['customTargetDiskName']! as String).input(),
      dataPendingAtSourceAgentInMB: (map['dataPendingAtSourceAgentInMB'] as double).input(),
      dataPendingInLogDataStoreInMB: (map['dataPendingInLogDataStoreInMB'] as double).input(),
      diskEncryptionSetId: (map['diskEncryptionSetId'] as String).input(),
      diskId: (map['diskId'] as String).input(),
      diskName: (map['diskName'] as String).input(),
      diskState: (map['diskState'] as String).input(),
      diskType: map['diskType'] == null ? null : (map['diskType']! as String).input(),
      irDetails: map['irDetails'] == null ? null : (InMageRcmSyncDetailsResponse.fromMap((map['irDetails']! as Map).cast<String, dynamic>())).input(),
      isInitialReplicationComplete: (map['isInitialReplicationComplete'] as String).input(),
      isOSDisk: (map['isOSDisk'] as String).input(),
      logStorageAccountId: (map['logStorageAccountId'] as String).input(),
      resyncDetails: map['resyncDetails'] == null ? null : (InMageRcmSyncDetailsResponse.fromMap((map['resyncDetails']! as Map).cast<String, dynamic>())).input(),
      sectorSizeInBytes: map['sectorSizeInBytes'] == null ? null : (map['sectorSizeInBytes']! as int).input(),
      seedBlobUri: (map['seedBlobUri'] as String).input(),
      seedManagedDiskId: (map['seedManagedDiskId'] as String).input(),
      targetManagedDiskId: (map['targetManagedDiskId'] as String).input(),
    );
  }
}

