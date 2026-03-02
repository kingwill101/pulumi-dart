// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'gateway_operation_details_response.dart';

/// VMwareCbt protected disk details.
class VMwareCbtProtectedDiskDetailsResponse {
  /// The disk capacity in bytes.
  final pulumi.Input<double> capacityInBytes;
  /// The DiskEncryptionSet ARM Id.
  final pulumi.Input<String> diskEncryptionSetId;
  /// The disk id.
  final pulumi.Input<String> diskId;
  /// The disk name.
  final pulumi.Input<String> diskName;
  /// The disk path.
  final pulumi.Input<String> diskPath;
  /// The disk type.
  final pulumi.Input<String>? diskType;
  /// A value indicating the gateway operation details.
  final pulumi.Input<GatewayOperationDetailsResponse> gatewayOperationDetails;
  /// A value indicating whether the disk is the OS disk.
  final pulumi.Input<String> isOSDisk;
  /// The log storage account ARM Id.
  final pulumi.Input<String> logStorageAccountId;
  /// The key vault secret name of the log storage account.
  final pulumi.Input<String> logStorageAccountSasSecretName;
  /// The logical sector size (in bytes), 512 by default.
  final pulumi.Input<int>? sectorSizeInBytes;
  /// The uri of the seed blob.
  final pulumi.Input<String> seedBlobUri;
  /// The ARM Id of the seed managed disk.
  final pulumi.Input<String> seedManagedDiskId;
  /// The uri of the target blob.
  final pulumi.Input<String> targetBlobUri;
  /// The name for the target managed disk.
  final pulumi.Input<String>? targetDiskName;
  /// The ARM Id of the target managed disk.
  final pulumi.Input<String> targetManagedDiskId;

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
      'gatewayOperationDetails': pulumi.Input.mapInputValue<GatewayOperationDetailsResponse, Map<String, dynamic>>(gatewayOperationDetails, (value) => value.toMap()),
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
      capacityInBytes: (map['capacityInBytes'] as double).input(),
      diskEncryptionSetId: (map['diskEncryptionSetId'] as String).input(),
      diskId: (map['diskId'] as String).input(),
      diskName: (map['diskName'] as String).input(),
      diskPath: (map['diskPath'] as String).input(),
      diskType: map['diskType'] == null ? null : (map['diskType'] as String).input(),
      gatewayOperationDetails: (GatewayOperationDetailsResponse.fromMap((map['gatewayOperationDetails'] as Map).cast<String, dynamic>())).input(),
      isOSDisk: (map['isOSDisk'] as String).input(),
      logStorageAccountId: (map['logStorageAccountId'] as String).input(),
      logStorageAccountSasSecretName: (map['logStorageAccountSasSecretName'] as String).input(),
      sectorSizeInBytes: map['sectorSizeInBytes'] == null ? null : (map['sectorSizeInBytes'] as int).input(),
      seedBlobUri: (map['seedBlobUri'] as String).input(),
      seedManagedDiskId: (map['seedManagedDiskId'] as String).input(),
      targetBlobUri: (map['targetBlobUri'] as String).input(),
      targetDiskName: map['targetDiskName'] == null ? null : (map['targetDiskName'] as String).input(),
      targetManagedDiskId: (map['targetManagedDiskId'] as String).input(),
    );
  }
}

