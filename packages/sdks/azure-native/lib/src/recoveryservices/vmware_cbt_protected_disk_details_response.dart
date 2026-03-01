// ignore_for_file: unused_element, unnecessary_cast

import 'gateway_operation_details_response.dart';

/// VMwareCbt protected disk details.
class VMwareCbtProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final double capacityInBytes;
  /// The DiskEncryptionSet ARM Id.
  final String diskEncryptionSetId;
  /// The disk id.
  final String diskId;
  /// The disk name.
  final String diskName;
  /// The disk path.
  final String diskPath;
  /// The disk type.
  final String? diskType;
  /// A value indicating the gateway operation details.
  final GatewayOperationDetailsResponse gatewayOperationDetails;
  /// A value indicating whether the disk is the OS disk.
  final String isOSDisk;
  /// The log storage account ARM Id.
  final String logStorageAccountId;
  /// The key vault secret name of the log storage account.
  final String logStorageAccountSasSecretName;
  /// The logical sector size (in bytes), 512 by default.
  final int? sectorSizeInBytes;
  /// The uri of the seed blob.
  final String seedBlobUri;
  /// The ARM Id of the seed managed disk.
  final String seedManagedDiskId;
  /// The uri of the target blob.
  final String targetBlobUri;
  /// The name for the target managed disk.
  final String? targetDiskName;
  /// The ARM Id of the target managed disk.
  final String targetManagedDiskId;

  /// Creates a new [VMwareCbtProtectedDiskDetailsResponse].
  /// [capacityInBytes] The disk capacity in bytes.
  /// [diskEncryptionSetId] The DiskEncryptionSet ARM Id.
  /// [diskId] The disk id.
  /// [diskName] The disk name.
  /// [diskPath] The disk path.
  /// [diskType] The disk type.
  /// [gatewayOperationDetails] A value indicating the gateway operation details.
  /// [isOSDisk] A value indicating whether the disk is the OS disk.
  /// [logStorageAccountId] The log storage account ARM Id.
  /// [logStorageAccountSasSecretName] The key vault secret name of the log storage account.
  /// [sectorSizeInBytes] The logical sector size (in bytes), 512 by default.
  /// [seedBlobUri] The uri of the seed blob.
  /// [seedManagedDiskId] The ARM Id of the seed managed disk.
  /// [targetBlobUri] The uri of the target blob.
  /// [targetDiskName] The name for the target managed disk.
  /// [targetManagedDiskId] The ARM Id of the target managed disk.
  VMwareCbtProtectedDiskDetailsResponse({
    required this.capacityInBytes,
    required this.diskEncryptionSetId,
    required this.diskId,
    required this.diskName,
    required this.diskPath,
    this.diskType,
    required this.gatewayOperationDetails,
    required this.isOSDisk,
    required this.logStorageAccountId,
    required this.logStorageAccountSasSecretName,
    this.sectorSizeInBytes,
    required this.seedBlobUri,
    required this.seedManagedDiskId,
    required this.targetBlobUri,
    this.targetDiskName,
    required this.targetManagedDiskId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacityInBytes': capacityInBytes,
      'diskEncryptionSetId': diskEncryptionSetId,
      'diskId': diskId,
      'diskName': diskName,
      'diskPath': diskPath,
      'diskType': ?diskType,
      'gatewayOperationDetails': gatewayOperationDetails.toMap(),
      'isOSDisk': isOSDisk,
      'logStorageAccountId': logStorageAccountId,
      'logStorageAccountSasSecretName': logStorageAccountSasSecretName,
      'sectorSizeInBytes': ?sectorSizeInBytes,
      'seedBlobUri': seedBlobUri,
      'seedManagedDiskId': seedManagedDiskId,
      'targetBlobUri': targetBlobUri,
      'targetDiskName': ?targetDiskName,
      'targetManagedDiskId': targetManagedDiskId,
    };
  }

  factory VMwareCbtProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return VMwareCbtProtectedDiskDetailsResponse(
      capacityInBytes: map['capacityInBytes'] as double,
      diskEncryptionSetId: map['diskEncryptionSetId'] as String,
      diskId: map['diskId'] as String,
      diskName: map['diskName'] as String,
      diskPath: map['diskPath'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      gatewayOperationDetails: GatewayOperationDetailsResponse.fromMap((map['gatewayOperationDetails'] as Map).cast<String, dynamic>()),
      isOSDisk: map['isOSDisk'] as String,
      logStorageAccountId: map['logStorageAccountId'] as String,
      logStorageAccountSasSecretName: map['logStorageAccountSasSecretName'] as String,
      sectorSizeInBytes: map['sectorSizeInBytes'] == null ? null : map['sectorSizeInBytes'] as int,
      seedBlobUri: map['seedBlobUri'] as String,
      seedManagedDiskId: map['seedManagedDiskId'] as String,
      targetBlobUri: map['targetBlobUri'] as String,
      targetDiskName: map['targetDiskName'] == null ? null : map['targetDiskName'] as String,
      targetManagedDiskId: map['targetManagedDiskId'] as String,
    );
  }
}

