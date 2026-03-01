// ignore_for_file: unused_element, unnecessary_cast


/// Additional information on Azure IaaS VM specific backup item.
class AzureIaaSVMProtectedItemExtendedInfo {
  /// The latest backup copy available for this backup item in archive tier
  final String? newestRecoveryPointInArchive;
  /// The oldest backup copy available for this backup item across all tiers.
  final String? oldestRecoveryPoint;
  /// The oldest backup copy available for this backup item in archive tier
  final String? oldestRecoveryPointInArchive;
  /// The oldest backup copy available for this backup item in vault tier
  final String? oldestRecoveryPointInVault;
  /// Specifies if backup policy associated with the backup item is inconsistent.
  final bool? policyInconsistent;
  /// Number of backup copies available for this backup item.
  final int? recoveryPointCount;

  /// Creates a new [AzureIaaSVMProtectedItemExtendedInfo].
  /// [newestRecoveryPointInArchive] The latest backup copy available for this backup item in archive tier
  /// [oldestRecoveryPoint] The oldest backup copy available for this backup item across all tiers.
  /// [oldestRecoveryPointInArchive] The oldest backup copy available for this backup item in archive tier
  /// [oldestRecoveryPointInVault] The oldest backup copy available for this backup item in vault tier
  /// [policyInconsistent] Specifies if backup policy associated with the backup item is inconsistent.
  /// [recoveryPointCount] Number of backup copies available for this backup item.
  AzureIaaSVMProtectedItemExtendedInfo({
    this.newestRecoveryPointInArchive,
    this.oldestRecoveryPoint,
    this.oldestRecoveryPointInArchive,
    this.oldestRecoveryPointInVault,
    this.policyInconsistent,
    this.recoveryPointCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newestRecoveryPointInArchive': ?newestRecoveryPointInArchive,
      'oldestRecoveryPoint': ?oldestRecoveryPoint,
      'oldestRecoveryPointInArchive': ?oldestRecoveryPointInArchive,
      'oldestRecoveryPointInVault': ?oldestRecoveryPointInVault,
      'policyInconsistent': ?policyInconsistent,
      'recoveryPointCount': ?recoveryPointCount,
    };
  }

  factory AzureIaaSVMProtectedItemExtendedInfo.fromMap(Map<String, dynamic> map) {
    return AzureIaaSVMProtectedItemExtendedInfo(
      newestRecoveryPointInArchive: map['newestRecoveryPointInArchive'] == null ? null : map['newestRecoveryPointInArchive'] as String,
      oldestRecoveryPoint: map['oldestRecoveryPoint'] == null ? null : map['oldestRecoveryPoint'] as String,
      oldestRecoveryPointInArchive: map['oldestRecoveryPointInArchive'] == null ? null : map['oldestRecoveryPointInArchive'] as String,
      oldestRecoveryPointInVault: map['oldestRecoveryPointInVault'] == null ? null : map['oldestRecoveryPointInVault'] as String,
      policyInconsistent: map['policyInconsistent'] == null ? null : map['policyInconsistent'] as bool,
      recoveryPointCount: map['recoveryPointCount'] == null ? null : map['recoveryPointCount'] as int,
    );
  }
}

