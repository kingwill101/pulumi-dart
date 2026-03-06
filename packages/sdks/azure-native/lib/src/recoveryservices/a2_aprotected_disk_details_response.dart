// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A2A protected disk details.
class A2AProtectedDiskDetailsResponse {
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
  /// The disk name.
  final pulumi.Input<String>? diskName;
  /// The disk state.
  final pulumi.Input<String>? diskState;
  /// The type of disk.
  final pulumi.Input<String>? diskType;
  /// The disk uri.
  final pulumi.Input<String>? diskUri;
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
  /// The primary disk storage account.
  final pulumi.Input<String>? primaryDiskAzureStorageAccountId;
  /// The primary staging storage account.
  final pulumi.Input<String>? primaryStagingAzureStorageAccountId;
  /// The recovery disk storage account.
  final pulumi.Input<String>? recoveryAzureStorageAccountId;
  /// Recovery disk uri.
  final pulumi.Input<String>? recoveryDiskUri;
  /// A value indicating whether resync is required for this disk.
  final pulumi.Input<bool>? resyncRequired;
  /// The secret URL / identifier (BEK).
  final pulumi.Input<String>? secretIdentifier;
  /// The test failover name for the managed disk.
  final pulumi.Input<String>? tfoDiskName;

  /// Creates a new [A2AProtectedDiskDetailsResponse].
  /// [allowedDiskLevelOperation] The disk level operations list.
  /// [dataPendingAtSourceAgentInMB] The data pending at source virtual machine in MB.
  /// [dataPendingInStagingStorageAccountInMB] The data pending for replication in MB at staging account.
  /// [dekKeyVaultArmId] The KeyVault resource id for secret (BEK).
  /// [diskCapacityInBytes] The disk capacity in bytes.
  /// [diskName] The disk name.
  /// [diskState] The disk state.
  /// [diskType] The type of disk.
  /// [diskUri] The disk uri.
  /// [failoverDiskName] The failover name for the managed disk.
  /// [isDiskEncrypted] A value indicating whether vm has encrypted os disk or not.
  /// [isDiskKeyEncrypted] A value indicating whether disk key got encrypted or not.
  /// [kekKeyVaultArmId] The KeyVault resource id for key (KEK).
  /// [keyIdentifier] The key URL / identifier (KEK).
  /// [monitoringJobType] The type of the monitoring job. The progress is contained in MonitoringPercentageCompletion property.
  /// [monitoringPercentageCompletion] The percentage of the monitoring job. The type of the monitoring job is defined by MonitoringJobType property.
  /// [primaryDiskAzureStorageAccountId] The primary disk storage account.
  /// [primaryStagingAzureStorageAccountId] The primary staging storage account.
  /// [recoveryAzureStorageAccountId] The recovery disk storage account.
  /// [recoveryDiskUri] Recovery disk uri.
  /// [resyncRequired] A value indicating whether resync is required for this disk.
  /// [secretIdentifier] The secret URL / identifier (BEK).
  /// [tfoDiskName] The test failover name for the managed disk.
  const A2AProtectedDiskDetailsResponse({
    this.allowedDiskLevelOperation,
    this.dataPendingAtSourceAgentInMB,
    this.dataPendingInStagingStorageAccountInMB,
    this.dekKeyVaultArmId,
    this.diskCapacityInBytes,
    this.diskName,
    this.diskState,
    this.diskType,
    this.diskUri,
    this.failoverDiskName,
    this.isDiskEncrypted,
    this.isDiskKeyEncrypted,
    this.kekKeyVaultArmId,
    this.keyIdentifier,
    this.monitoringJobType,
    this.monitoringPercentageCompletion,
    this.primaryDiskAzureStorageAccountId,
    this.primaryStagingAzureStorageAccountId,
    this.recoveryAzureStorageAccountId,
    this.recoveryDiskUri,
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
      'diskName': ?diskName,
      'diskState': ?diskState,
      'diskType': ?diskType,
      'diskUri': ?diskUri,
      'failoverDiskName': ?failoverDiskName,
      'isDiskEncrypted': ?isDiskEncrypted,
      'isDiskKeyEncrypted': ?isDiskKeyEncrypted,
      'kekKeyVaultArmId': ?kekKeyVaultArmId,
      'keyIdentifier': ?keyIdentifier,
      'monitoringJobType': ?monitoringJobType,
      'monitoringPercentageCompletion': ?monitoringPercentageCompletion,
      'primaryDiskAzureStorageAccountId': ?primaryDiskAzureStorageAccountId,
      'primaryStagingAzureStorageAccountId': ?primaryStagingAzureStorageAccountId,
      'recoveryAzureStorageAccountId': ?recoveryAzureStorageAccountId,
      'recoveryDiskUri': ?recoveryDiskUri,
      'resyncRequired': ?resyncRequired,
      'secretIdentifier': ?secretIdentifier,
      'tfoDiskName': ?tfoDiskName,
    };
  }

  factory A2AProtectedDiskDetailsResponse.fromMap(Map<String, dynamic> map) {
    return A2AProtectedDiskDetailsResponse(
      allowedDiskLevelOperation: (() { final guardedValue = map['allowedDiskLevelOperation']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      dataPendingAtSourceAgentInMB: (() { final guardedValue = map['dataPendingAtSourceAgentInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dataPendingInStagingStorageAccountInMB: (() { final guardedValue = map['dataPendingInStagingStorageAccountInMB']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      dekKeyVaultArmId: (() { final guardedValue = map['dekKeyVaultArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskCapacityInBytes: (() { final guardedValue = map['diskCapacityInBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      diskName: (() { final guardedValue = map['diskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskState: (() { final guardedValue = map['diskState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskType: (() { final guardedValue = map['diskType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskUri: (() { final guardedValue = map['diskUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      failoverDiskName: (() { final guardedValue = map['failoverDiskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      isDiskEncrypted: (() { final guardedValue = map['isDiskEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isDiskKeyEncrypted: (() { final guardedValue = map['isDiskKeyEncrypted']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kekKeyVaultArmId: (() { final guardedValue = map['kekKeyVaultArmId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyIdentifier: (() { final guardedValue = map['keyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringJobType: (() { final guardedValue = map['monitoringJobType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      monitoringPercentageCompletion: (() { final guardedValue = map['monitoringPercentageCompletion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      primaryDiskAzureStorageAccountId: (() { final guardedValue = map['primaryDiskAzureStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      primaryStagingAzureStorageAccountId: (() { final guardedValue = map['primaryStagingAzureStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryAzureStorageAccountId: (() { final guardedValue = map['recoveryAzureStorageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      recoveryDiskUri: (() { final guardedValue = map['recoveryDiskUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resyncRequired: (() { final guardedValue = map['resyncRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      secretIdentifier: (() { final guardedValue = map['secretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tfoDiskName: (() { final guardedValue = map['tfoDiskName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

