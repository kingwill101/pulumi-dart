// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A2A protected managed disk details.
class A2AProtectedManagedDiskDetails {
  /// The disk level operations list.
  final pulumi.Input<List<String>>? allowedDiskLevelOperation;
  /// The data pending at source virtual machine in MB.
  final pulumi.Input<double>? dataPendingAtSourceAgentInMB;
  /// The data pending for replication in MB at staging account.
  final pulumi.Input<double>? dataPendingInStagingStorageAccountInMB;
  /// The KeyVault resource id for secret (BEK).
  final pulumi.Input<String>? dekKeyVaultArmId;
  /// The disk capacity in bytes.
  final pulumi.Input<double>? diskCapacityInBytes;
  /// The managed disk Arm id.
  final pulumi.Input<String>? diskId;
  /// The disk name.
  final pulumi.Input<String>? diskName;
  /// The disk state.
  final pulumi.Input<String>? diskState;
  /// The type of disk.
  final pulumi.Input<String>? diskType;
  /// The failover name for the managed disk.
  final pulumi.Input<String>? failoverDiskName;
  /// A value indicating whether vm has encrypted os disk or not.
  final pulumi.Input<bool>? isDiskEncrypted;
  /// A value indicating whether disk key got encrypted or not.
  final pulumi.Input<bool>? isDiskKeyEncrypted;
  /// The KeyVault resource id for key (KEK).
  final pulumi.Input<String>? kekKeyVaultArmId;
  /// The key URL / identifier (KEK).
  final pulumi.Input<String>? keyIdentifier;
  /// The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  final pulumi.Input<String>? monitoringJobType;
  /// The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  final pulumi.Input<int>? monitoringPercentageCompletion;
  /// The primary disk encryption set Id.
  final pulumi.Input<String>? primaryDiskEncryptionSetId;
  /// The primary staging storage account.
  final pulumi.Input<String>? primaryStagingAzureStorageAccountId;
  /// The recovery disk encryption set Id.
  final pulumi.Input<String>? recoveryDiskEncryptionSetId;
  /// Recovery original target disk Arm Id.
  final pulumi.Input<String>? recoveryOrignalTargetDiskId;
  /// The replica disk type. Its an optional value and will be same as source disk type if not user provided.
  final pulumi.Input<String>? recoveryReplicaDiskAccountType;
  /// Recovery replica disk Arm Id.
  final pulumi.Input<String>? recoveryReplicaDiskId;
  /// The recovery disk resource group Arm Id.
  final pulumi.Input<String>? recoveryResourceGroupId;
  /// The target disk type after failover. Its an optional value and will be same as source disk type if not user provided.
  final pulumi.Input<String>? recoveryTargetDiskAccountType;
  /// Recovery target disk Arm Id.
  final pulumi.Input<String>? recoveryTargetDiskId;
  /// A value indicating whether resync is required for this disk.
  final pulumi.Input<bool>? resyncRequired;
  /// The secret URL / identifier (BEK).
  final pulumi.Input<String>? secretIdentifier;
  /// The test failover name for the managed disk.
  final pulumi.Input<String>? tfoDiskName;

  /// Creates a new [A2AProtectedManagedDiskDetails].
  /// [allowedDiskLevelOperation] The disk level operations list.
  /// [dataPendingAtSourceAgentInMB] The data pending at source virtual machine in MB.
  /// [dataPendingInStagingStorageAccountInMB] The data pending for replication in MB at staging account.
  /// [dekKeyVaultArmId] The KeyVault resource id for secret (BEK).
  /// [diskCapacityInBytes] The disk capacity in bytes.
  /// [diskId] The managed disk Arm id.
  /// [diskName] The disk name.
  /// [diskState] The disk state.
  /// [diskType] The type of disk.
  /// [failoverDiskName] The failover name for the managed disk.
  /// [isDiskEncrypted] A value indicating whether vm has encrypted os disk or not.
  /// [isDiskKeyEncrypted] A value indicating whether disk key got encrypted or not.
  /// [kekKeyVaultArmId] The KeyVault resource id for key (KEK).
  /// [keyIdentifier] The key URL / identifier (KEK).
  /// [monitoringJobType] The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  /// [monitoringPercentageCompletion] The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  /// [primaryDiskEncryptionSetId] The primary disk encryption set Id.
  /// [primaryStagingAzureStorageAccountId] The primary staging storage account.
  /// [recoveryDiskEncryptionSetId] The recovery disk encryption set Id.
  /// [recoveryOrignalTargetDiskId] Recovery original target disk Arm Id.
  /// [recoveryReplicaDiskAccountType] The replica disk type. Its an optional value and will be same as source disk type if not user provided.
  /// [recoveryReplicaDiskId] Recovery replica disk Arm Id.
  /// [recoveryResourceGroupId] The recovery disk resource group Arm Id.
  /// [recoveryTargetDiskAccountType] The target disk type after failover. Its an optional value and will be same as source disk type if not user provided.
  /// [recoveryTargetDiskId] Recovery target disk Arm Id.
  /// [resyncRequired] A value indicating whether resync is required for this disk.
  /// [secretIdentifier] The secret URL / identifier (BEK).
  /// [tfoDiskName] The test failover name for the managed disk.
  const A2AProtectedManagedDiskDetails({
    this.allowedDiskLevelOperation,
    this.dataPendingAtSourceAgentInMB,
    this.dataPendingInStagingStorageAccountInMB,
    this.dekKeyVaultArmId,
    this.diskCapacityInBytes,
    this.diskId,
    this.diskName,
    this.diskState,
    this.diskType,
    this.failoverDiskName,
    this.isDiskEncrypted,
    this.isDiskKeyEncrypted,
    this.kekKeyVaultArmId,
    this.keyIdentifier,
    this.monitoringJobType,
    this.monitoringPercentageCompletion,
    this.primaryDiskEncryptionSetId,
    this.primaryStagingAzureStorageAccountId,
    this.recoveryDiskEncryptionSetId,
    this.recoveryOrignalTargetDiskId,
    this.recoveryReplicaDiskAccountType,
    this.recoveryReplicaDiskId,
    this.recoveryResourceGroupId,
    this.recoveryTargetDiskAccountType,
    this.recoveryTargetDiskId,
    this.resyncRequired,
    this.secretIdentifier,
    this.tfoDiskName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedDiskLevelOperation': ?allowedDiskLevelOperation,
      'dataPendingAtSourceAgentInMB': ?dataPendingAtSourceAgentInMB,
      'dataPendingInStagingStorageAccountInMB': ?dataPendingInStagingStorageAccountInMB,
      'dekKeyVaultArmId': ?dekKeyVaultArmId,
      'diskCapacityInBytes': ?diskCapacityInBytes,
      'diskId': ?diskId,
      'diskName': ?diskName,
      'diskState': ?diskState,
      'diskType': ?diskType,
      'failoverDiskName': ?failoverDiskName,
      'isDiskEncrypted': ?isDiskEncrypted,
      'isDiskKeyEncrypted': ?isDiskKeyEncrypted,
      'kekKeyVaultArmId': ?kekKeyVaultArmId,
      'keyIdentifier': ?keyIdentifier,
      'monitoringJobType': ?monitoringJobType,
      'monitoringPercentageCompletion': ?monitoringPercentageCompletion,
      'primaryDiskEncryptionSetId': ?primaryDiskEncryptionSetId,
      'primaryStagingAzureStorageAccountId': ?primaryStagingAzureStorageAccountId,
      'recoveryDiskEncryptionSetId': ?recoveryDiskEncryptionSetId,
      'recoveryOrignalTargetDiskId': ?recoveryOrignalTargetDiskId,
      'recoveryReplicaDiskAccountType': ?recoveryReplicaDiskAccountType,
      'recoveryReplicaDiskId': ?recoveryReplicaDiskId,
      'recoveryResourceGroupId': ?recoveryResourceGroupId,
      'recoveryTargetDiskAccountType': ?recoveryTargetDiskAccountType,
      'recoveryTargetDiskId': ?recoveryTargetDiskId,
      'resyncRequired': ?resyncRequired,
      'secretIdentifier': ?secretIdentifier,
      'tfoDiskName': ?tfoDiskName,
    };
  }

  factory A2AProtectedManagedDiskDetails.fromMap(Map<String, dynamic> map) {
    return A2AProtectedManagedDiskDetails(
      allowedDiskLevelOperation: (() { final guardedValue = map['allowedDiskLevelOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataPendingAtSourceAgentInMB: (() { final guardedValue = map['dataPendingAtSourceAgentInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dataPendingInStagingStorageAccountInMB: (() { final guardedValue = map['dataPendingInStagingStorageAccountInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dekKeyVaultArmId: (() { final guardedValue = map['dekKeyVaultArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskCapacityInBytes: (() { final guardedValue = map['diskCapacityInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      diskId: (() { final guardedValue = map['diskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskState: (() { final guardedValue = map['diskState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverDiskName: (() { final guardedValue = map['failoverDiskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDiskEncrypted: (() { final guardedValue = map['isDiskEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDiskKeyEncrypted: (() { final guardedValue = map['isDiskKeyEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kekKeyVaultArmId: (() { final guardedValue = map['kekKeyVaultArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyIdentifier: (() { final guardedValue = map['keyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringJobType: (() { final guardedValue = map['monitoringJobType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringPercentageCompletion: (() { final guardedValue = map['monitoringPercentageCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      primaryDiskEncryptionSetId: (() { final guardedValue = map['primaryDiskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryStagingAzureStorageAccountId: (() { final guardedValue = map['primaryStagingAzureStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryDiskEncryptionSetId: (() { final guardedValue = map['recoveryDiskEncryptionSetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryOrignalTargetDiskId: (() { final guardedValue = map['recoveryOrignalTargetDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryReplicaDiskAccountType: (() { final guardedValue = map['recoveryReplicaDiskAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryReplicaDiskId: (() { final guardedValue = map['recoveryReplicaDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryResourceGroupId: (() { final guardedValue = map['recoveryResourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryTargetDiskAccountType: (() { final guardedValue = map['recoveryTargetDiskAccountType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryTargetDiskId: (() { final guardedValue = map['recoveryTargetDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resyncRequired: (() { final guardedValue = map['resyncRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretIdentifier: (() { final guardedValue = map['secretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tfoDiskName: (() { final guardedValue = map['tfoDiskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
