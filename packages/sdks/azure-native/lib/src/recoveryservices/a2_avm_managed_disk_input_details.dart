// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_encryption_info.dart';

/// A2A managed disk input details.
class A2AVmManagedDiskInputDetails {
  /// The recovery disk encryption information (for one / single pass flows).
  final pulumi.Input<DiskEncryptionInfo>? diskEncryptionInfo;
  /// The disk Id.
  final pulumi.Input<String> diskId;
  /// The primary staging storage account Arm Id.
  final pulumi.Input<String> primaryStagingAzureStorageAccountId;
  /// The recovery disk encryption set Id.
  final pulumi.Input<String>? recoveryDiskEncryptionSetId;
  /// The replica disk type. Its an optional value and will be same as source disk type if not user provided.
  final pulumi.Input<String>? recoveryReplicaDiskAccountType;
  /// The target resource group Arm Id.
  final pulumi.Input<String> recoveryResourceGroupId;
  /// The target disk type after failover. Its an optional value and will be same as source disk type if not user provided.
  final pulumi.Input<String>? recoveryTargetDiskAccountType;

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
      'diskEncryptionInfo': ?pulumi.Input.mapOptionalInputValue<DiskEncryptionInfo, Map<String, dynamic>>(diskEncryptionInfo, (value) => value.toMap()),
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
      diskEncryptionInfo: map['diskEncryptionInfo'] == null ? null : (DiskEncryptionInfo.fromMap((map['diskEncryptionInfo'] as Map).cast<String, dynamic>())).input(),
      diskId: (map['diskId'] as String).input(),
      primaryStagingAzureStorageAccountId: (map['primaryStagingAzureStorageAccountId'] as String).input(),
      recoveryDiskEncryptionSetId: map['recoveryDiskEncryptionSetId'] == null ? null : (map['recoveryDiskEncryptionSetId'] as String).input(),
      recoveryReplicaDiskAccountType: map['recoveryReplicaDiskAccountType'] == null ? null : (map['recoveryReplicaDiskAccountType'] as String).input(),
      recoveryResourceGroupId: (map['recoveryResourceGroupId'] as String).input(),
      recoveryTargetDiskAccountType: map['recoveryTargetDiskAccountType'] == null ? null : (map['recoveryTargetDiskAccountType'] as String).input(),
    );
  }
}

