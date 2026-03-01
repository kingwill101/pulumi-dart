// ignore_for_file: unused_element, unnecessary_cast


/// Additional information on Azure Workload for SQL specific backup item.
class AzureVmWorkloadProtectedItemExtendedInfoResponse {
  /// The latest backup copy available for this backup item in archive tier
  final String? newestRecoveryPointInArchive;
  /// The oldest backup copy available for this backup item across all tiers.
  final String? oldestRecoveryPoint;
  /// The oldest backup copy available for this backup item in archive tier
  final String? oldestRecoveryPointInArchive;
  /// The oldest backup copy available for this backup item in vault tier
  final String? oldestRecoveryPointInVault;
  /// Indicates consistency of policy object and policy applied to this backup item.
  final String? policyState;
  /// Indicates consistency of policy object and policy applied to this backup item.
  final String? recoveryModel;
  /// Number of backup copies available for this backup item.
  final int? recoveryPointCount;

  /// Creates a new [AzureVmWorkloadProtectedItemExtendedInfoResponse].
  /// [newestRecoveryPointInArchive] The latest backup copy available for this backup item in archive tier
  /// [oldestRecoveryPoint] The oldest backup copy available for this backup item across all tiers.
  /// [oldestRecoveryPointInArchive] The oldest backup copy available for this backup item in archive tier
  /// [oldestRecoveryPointInVault] The oldest backup copy available for this backup item in vault tier
  /// [policyState] Indicates consistency of policy object and policy applied to this backup item.
  /// [recoveryModel] Indicates consistency of policy object and policy applied to this backup item.
  /// [recoveryPointCount] Number of backup copies available for this backup item.
  AzureVmWorkloadProtectedItemExtendedInfoResponse({
    this.newestRecoveryPointInArchive,
    this.oldestRecoveryPoint,
    this.oldestRecoveryPointInArchive,
    this.oldestRecoveryPointInVault,
    this.policyState,
    this.recoveryModel,
    this.recoveryPointCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newestRecoveryPointInArchive': ?newestRecoveryPointInArchive,
      'oldestRecoveryPoint': ?oldestRecoveryPoint,
      'oldestRecoveryPointInArchive': ?oldestRecoveryPointInArchive,
      'oldestRecoveryPointInVault': ?oldestRecoveryPointInVault,
      'policyState': ?policyState,
      'recoveryModel': ?recoveryModel,
      'recoveryPointCount': ?recoveryPointCount,
    };
  }

  factory AzureVmWorkloadProtectedItemExtendedInfoResponse.fromMap(Map<String, dynamic> map) {
    return AzureVmWorkloadProtectedItemExtendedInfoResponse(
      newestRecoveryPointInArchive: map['newestRecoveryPointInArchive'] == null ? null : map['newestRecoveryPointInArchive'] as String,
      oldestRecoveryPoint: map['oldestRecoveryPoint'] == null ? null : map['oldestRecoveryPoint'] as String,
      oldestRecoveryPointInArchive: map['oldestRecoveryPointInArchive'] == null ? null : map['oldestRecoveryPointInArchive'] as String,
      oldestRecoveryPointInVault: map['oldestRecoveryPointInVault'] == null ? null : map['oldestRecoveryPointInVault'] as String,
      policyState: map['policyState'] == null ? null : map['policyState'] as String,
      recoveryModel: map['recoveryModel'] == null ? null : map['recoveryModel'] as String,
      recoveryPointCount: map['recoveryPointCount'] == null ? null : map['recoveryPointCount'] as int,
    );
  }
}

