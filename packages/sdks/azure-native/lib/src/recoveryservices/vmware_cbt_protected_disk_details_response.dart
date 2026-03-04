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
      'gatewayOperationDetails':
          pulumi.Input.mapInputValue<
            GatewayOperationDetailsResponse,
            Map<String, dynamic>
          >(gatewayOperationDetails, (value) => value.toMap()),
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

  factory VMwareCbtProtectedDiskDetailsResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VMwareCbtProtectedDiskDetailsResponse(
      capacityInBytes: pulumi.Input.fromValue(map['capacityInBytes'] as double),
      diskEncryptionSetId: pulumi.Input.fromValue(
        map['diskEncryptionSetId'] as String,
      ),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      diskName: pulumi.Input.fromValue(map['diskName'] as String),
      diskPath: pulumi.Input.fromValue(map['diskPath'] as String),
      diskType: (() {
        final guardedValue = map['diskType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      gatewayOperationDetails: pulumi.Input.fromValue(
        GatewayOperationDetailsResponse.fromMap(
          (map['gatewayOperationDetails']! as Map).cast<String, dynamic>(),
        ),
      ),
      isOSDisk: pulumi.Input.fromValue(map['isOSDisk'] as String),
      logStorageAccountId: pulumi.Input.fromValue(
        map['logStorageAccountId'] as String,
      ),
      logStorageAccountSasSecretName: pulumi.Input.fromValue(
        map['logStorageAccountSasSecretName'] as String,
      ),
      sectorSizeInBytes: (() {
        final guardedValue = map['sectorSizeInBytes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      seedBlobUri: pulumi.Input.fromValue(map['seedBlobUri'] as String),
      seedManagedDiskId: pulumi.Input.fromValue(
        map['seedManagedDiskId'] as String,
      ),
      targetBlobUri: pulumi.Input.fromValue(map['targetBlobUri'] as String),
      targetDiskName: (() {
        final guardedValue = map['targetDiskName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      targetManagedDiskId: pulumi.Input.fromValue(
        map['targetManagedDiskId'] as String,
      ),
    );
  }
}
