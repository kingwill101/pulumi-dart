// ignore_for_file: unused_element, unnecessary_cast

import 'disk_encryption_info.dart';

/// A2A managed disk input details.
class A2AVmManagedDiskInputDetails {
  /// The recovery disk encryption information (for one / single pass flows).
  final DiskEncryptionInfo? diskEncryptionInfo;
  /// The disk Id.
  final String diskId;
  /// The primary staging storage account Arm Id.
  final String primaryStagingAzureStorageAccountId;
  /// The recovery disk encryption set Id.
  final String? recoveryDiskEncryptionSetId;
  /// The replica disk type. Its an optional value and will be same as source disk type if not user provided.
  final String? recoveryReplicaDiskAccountType;
  /// The target resource group Arm Id.
  final String recoveryResourceGroupId;
  /// The target disk type after failover. Its an optional value and will be same as source disk type if not user provided.
  final String? recoveryTargetDiskAccountType;

  /// Creates a new [A2AVmManagedDiskInputDetails].
  /// [diskEncryptionInfo] The recovery disk encryption information (for one / single pass flows).
  /// [diskId] The disk Id.
  /// [primaryStagingAzureStorageAccountId] The primary staging storage account Arm Id.
  /// [recoveryDiskEncryptionSetId] The recovery disk encryption set Id.
  /// [recoveryReplicaDiskAccountType] The replica disk type. Its an optional value and will be same as source disk type if not user provided.
  /// [recoveryResourceGroupId] The target resource group Arm Id.
  /// [recoveryTargetDiskAccountType] The target disk type after failover. Its an optional value and will be same as source disk type if not user provided.
  A2AVmManagedDiskInputDetails({
    this.diskEncryptionInfo,
    required this.diskId,
    required this.primaryStagingAzureStorageAccountId,
    this.recoveryDiskEncryptionSetId,
    this.recoveryReplicaDiskAccountType,
    required this.recoveryResourceGroupId,
    this.recoveryTargetDiskAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionInfo': ?diskEncryptionInfo == null ? null : diskEncryptionInfo!.toMap(),
      'diskId': diskId,
      'primaryStagingAzureStorageAccountId': primaryStagingAzureStorageAccountId,
      'recoveryDiskEncryptionSetId': ?recoveryDiskEncryptionSetId,
      'recoveryReplicaDiskAccountType': ?recoveryReplicaDiskAccountType,
      'recoveryResourceGroupId': recoveryResourceGroupId,
      'recoveryTargetDiskAccountType': ?recoveryTargetDiskAccountType,
    };
  }

  factory A2AVmManagedDiskInputDetails.fromMap(Map<String, dynamic> map) {
    return A2AVmManagedDiskInputDetails(
      diskEncryptionInfo: map['diskEncryptionInfo'] == null ? null : DiskEncryptionInfo.fromMap((map['diskEncryptionInfo'] as Map).cast<String, dynamic>()),
      diskId: map['diskId'] as String,
      primaryStagingAzureStorageAccountId: map['primaryStagingAzureStorageAccountId'] as String,
      recoveryDiskEncryptionSetId: map['recoveryDiskEncryptionSetId'] == null ? null : map['recoveryDiskEncryptionSetId'] as String,
      recoveryReplicaDiskAccountType: map['recoveryReplicaDiskAccountType'] == null ? null : map['recoveryReplicaDiskAccountType'] as String,
      recoveryResourceGroupId: map['recoveryResourceGroupId'] as String,
      recoveryTargetDiskAccountType: map['recoveryTargetDiskAccountType'] == null ? null : map['recoveryTargetDiskAccountType'] as String,
    );
  }
}

