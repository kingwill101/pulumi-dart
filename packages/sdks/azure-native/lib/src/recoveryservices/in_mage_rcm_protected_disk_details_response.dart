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
      'irDetails':
          ?pulumi.Input.mapOptionalInputValue<
            InMageRcmSyncDetailsResponse,
            Map<String, dynamic>
          >(irDetails, (value) => value.toMap()),
      'isInitialReplicationComplete': isInitialReplicationComplete,
      'isOSDisk': isOSDisk,
      'logStorageAccountId': logStorageAccountId,
      'resyncDetails':
          ?pulumi.Input.mapOptionalInputValue<
            InMageRcmSyncDetailsResponse,
            Map<String, dynamic>
          >(resyncDetails, (value) => value.toMap()),
      'sectorSizeInBytes': ?sectorSizeInBytes,
      'seedBlobUri': seedBlobUri,
      'seedManagedDiskId': seedManagedDiskId,
      'targetManagedDiskId': targetManagedDiskId,
    };
  }

  factory InMageRcmProtectedDiskDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return InMageRcmProtectedDiskDetailsResponse(
      capacityInBytes: pulumi.Input.fromValue(map['capacityInBytes'] as double),
      customTargetDiskName: (() {
        final guardedValue = map['customTargetDiskName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataPendingAtSourceAgentInMB: pulumi.Input.fromValue(
        map['dataPendingAtSourceAgentInMB'] as double,
      ),
      dataPendingInLogDataStoreInMB: pulumi.Input.fromValue(
        map['dataPendingInLogDataStoreInMB'] as double,
      ),
      diskEncryptionSetId: pulumi.Input.fromValue(
        map['diskEncryptionSetId'] as String,
      ),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
      diskState: pulumi.Input.fromValue(map['diskState'] as String),
      diskType: (() {
        final guardedValue = map['diskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      irDetails: (() {
        final guardedValue = map['irDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InMageRcmSyncDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      isInitialReplicationComplete: pulumi.Input.fromValue(
        map['isInitialReplicationComplete'] as String,
      ),
      isOSDisk: pulumi.Input.fromValue(map['isOSDisk'] as String),
      logStorageAccountId: pulumi.Input.fromValue(
        map['logStorageAccountId'] as String,
      ),
      resyncDetails: (() {
        final guardedValue = map['resyncDetails'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          InMageRcmSyncDetailsResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      sectorSizeInBytes: (() {
        final guardedValue = map['sectorSizeInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      seedBlobUri: pulumi.Input.fromValue(map['seedBlobUri'] as String),
      seedManagedDiskId: pulumi.Input.fromValue(
        map['seedManagedDiskId'] as String,
      ),
      targetManagedDiskId: pulumi.Input.fromValue(
        map['targetManagedDiskId'] as String,
      ),
    );
  }
}
