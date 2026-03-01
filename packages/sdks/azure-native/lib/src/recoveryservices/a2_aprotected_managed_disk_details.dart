// ignore_for_file: unused_element, unnecessary_cast


/// A2A protected managed disk details.
class A2AProtectedManagedDiskDetails {
  /// The disk level operations list.
  final List<String>? allowedDiskLevelOperation;
  /// The data pending at source virtual machine in MB.
  final double? dataPendingAtSourceAgentInMB;
  /// The data pending for replication in MB at staging account.
  final double? dataPendingInStagingStorageAccountInMB;
  /// The KeyVault resource id for secret (BEK).
  final String? dekKeyVaultArmId;
  /// The disk capacity in bytes.
  final double? diskCapacityInBytes;
  /// The managed disk Arm id.
  final String? diskId;
  /// The disk name.
  final String? diskName;
  /// The disk state.
  final String? diskState;
  /// The type of disk.
  final String? diskType;
  /// The failover name for the managed disk.
  final String? failoverDiskName;
  /// A value indicating whether vm has encrypted os disk or not.
  final bool? isDiskEncrypted;
  /// A value indicating whether disk key got encrypted or not.
  final bool? isDiskKeyEncrypted;
  /// The KeyVault resource id for key (KEK).
  final String? kekKeyVaultArmId;
  /// The key URL / identifier (KEK).
  final String? keyIdentifier;
  /// The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  final String? monitoringJobType;
  /// The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  final int? monitoringPercentageCompletion;
  /// The primary disk encryption set Id.
  final String? primaryDiskEncryptionSetId;
  /// The primary staging storage account.
  final String? primaryStagingAzureStorageAccountId;
  /// The recovery disk encryption set Id.
  final String? recoveryDiskEncryptionSetId;
  /// Recovery original target disk Arm Id.
  final String? recoveryOrignalTargetDiskId;
  /// The replica disk type. Its an optional value and will be same as source disk type if not user provided.
  final String? recoveryReplicaDiskAccountType;
  /// Recovery replica disk Arm Id.
  final String? recoveryReplicaDiskId;
  /// The recovery disk resource group Arm Id.
  final String? recoveryResourceGroupId;
  /// The target disk type after failover. Its an optional value and will be same as source disk type if not user provided.
  final String? recoveryTargetDiskAccountType;
  /// Recovery target disk Arm Id.
  final String? recoveryTargetDiskId;
  /// A value indicating whether resync is required for this disk.
  final bool? resyncRequired;
  /// The secret URL / identifier (BEK).
  final String? secretIdentifier;
  /// The test failover name for the managed disk.
  final String? tfoDiskName;

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
  A2AProtectedManagedDiskDetails({
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
      allowedDiskLevelOperation: map['allowedDiskLevelOperation'] == null ? null : (map['allowedDiskLevelOperation'] as List).cast<String>(),
      dataPendingAtSourceAgentInMB: map['dataPendingAtSourceAgentInMB'] == null ? null : map['dataPendingAtSourceAgentInMB'] as double,
      dataPendingInStagingStorageAccountInMB: map['dataPendingInStagingStorageAccountInMB'] == null ? null : map['dataPendingInStagingStorageAccountInMB'] as double,
      dekKeyVaultArmId: map['dekKeyVaultArmId'] == null ? null : map['dekKeyVaultArmId'] as String,
      diskCapacityInBytes: map['diskCapacityInBytes'] == null ? null : map['diskCapacityInBytes'] as double,
      diskId: map['diskId'] == null ? null : map['diskId'] as String,
      diskName: map['diskName'] == null ? null : map['diskName'] as String,
      diskState: map['diskState'] == null ? null : map['diskState'] as String,
      diskType: map['diskType'] == null ? null : map['diskType'] as String,
      failoverDiskName: map['failoverDiskName'] == null ? null : map['failoverDiskName'] as String,
      isDiskEncrypted: map['isDiskEncrypted'] == null ? null : map['isDiskEncrypted'] as bool,
      isDiskKeyEncrypted: map['isDiskKeyEncrypted'] == null ? null : map['isDiskKeyEncrypted'] as bool,
      kekKeyVaultArmId: map['kekKeyVaultArmId'] == null ? null : map['kekKeyVaultArmId'] as String,
      keyIdentifier: map['keyIdentifier'] == null ? null : map['keyIdentifier'] as String,
      monitoringJobType: map['monitoringJobType'] == null ? null : map['monitoringJobType'] as String,
      monitoringPercentageCompletion: map['monitoringPercentageCompletion'] == null ? null : map['monitoringPercentageCompletion'] as int,
      primaryDiskEncryptionSetId: map['primaryDiskEncryptionSetId'] == null ? null : map['primaryDiskEncryptionSetId'] as String,
      primaryStagingAzureStorageAccountId: map['primaryStagingAzureStorageAccountId'] == null ? null : map['primaryStagingAzureStorageAccountId'] as String,
      recoveryDiskEncryptionSetId: map['recoveryDiskEncryptionSetId'] == null ? null : map['recoveryDiskEncryptionSetId'] as String,
      recoveryOrignalTargetDiskId: map['recoveryOrignalTargetDiskId'] == null ? null : map['recoveryOrignalTargetDiskId'] as String,
      recoveryReplicaDiskAccountType: map['recoveryReplicaDiskAccountType'] == null ? null : map['recoveryReplicaDiskAccountType'] as String,
      recoveryReplicaDiskId: map['recoveryReplicaDiskId'] == null ? null : map['recoveryReplicaDiskId'] as String,
      recoveryResourceGroupId: map['recoveryResourceGroupId'] == null ? null : map['recoveryResourceGroupId'] as String,
      recoveryTargetDiskAccountType: map['recoveryTargetDiskAccountType'] == null ? null : map['recoveryTargetDiskAccountType'] as String,
      recoveryTargetDiskId: map['recoveryTargetDiskId'] == null ? null : map['recoveryTargetDiskId'] as String,
      resyncRequired: map['resyncRequired'] == null ? null : map['resyncRequired'] as bool,
      secretIdentifier: map['secretIdentifier'] == null ? null : map['secretIdentifier'] as String,
      tfoDiskName: map['tfoDiskName'] == null ? null : map['tfoDiskName'] as String,
    );
  }
}

