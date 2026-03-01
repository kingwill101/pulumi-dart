// ignore_for_file: unused_element, unnecessary_cast


/// Additional information on Azure Sql specific protected item.
class AzureSqlProtectedItemExtendedInfo {
  /// The oldest backup copy available for this item in the service.
  final String? oldestRecoveryPoint;
  /// State of the backup policy associated with this backup item.
  final String? policyState;
  /// Number of available backup copies associated with this backup item.
  final int? recoveryPointCount;

  /// Creates a new [AzureSqlProtectedItemExtendedInfo].
  /// [oldestRecoveryPoint] The oldest backup copy available for this item in the service.
  /// [policyState] State of the backup policy associated with this backup item.
  /// [recoveryPointCount] Number of available backup copies associated with this backup item.
  AzureSqlProtectedItemExtendedInfo({
    this.oldestRecoveryPoint,
    this.policyState,
    this.recoveryPointCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'oldestRecoveryPoint': ?oldestRecoveryPoint,
      'policyState': ?policyState,
      'recoveryPointCount': ?recoveryPointCount,
    };
  }

  factory AzureSqlProtectedItemExtendedInfo.fromMap(Map<String, dynamic> map) {
    return AzureSqlProtectedItemExtendedInfo(
      oldestRecoveryPoint: map['oldestRecoveryPoint'] == null ? null : map['oldestRecoveryPoint'] as String,
      policyState: map['policyState'] == null ? null : map['policyState'] as String,
      recoveryPointCount: map['recoveryPointCount'] == null ? null : map['recoveryPointCount'] as int,
    );
  }
}

