// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information about Azure File Share backup item.
class AzureFileshareProtectedItemExtendedInfo {
  /// The oldest backup copy available for this item in the service.
  final pulumi.Input<String>? oldestRecoveryPoint;
  /// Indicates consistency of policy object and policy applied to this backup item.
  final pulumi.Input<String>? policyState;
  /// Number of available backup copies associated with this backup item.
  final pulumi.Input<int>? recoveryPointCount;

  /// Creates a new [AzureFileshareProtectedItemExtendedInfo].
  /// [oldestRecoveryPoint] The oldest backup copy available for this item in the service.
  /// [policyState] Indicates consistency of policy object and policy applied to this backup item.
  /// [recoveryPointCount] Number of available backup copies associated with this backup item.
  AzureFileshareProtectedItemExtendedInfo({
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

  factory AzureFileshareProtectedItemExtendedInfo.fromMap(Map<String, dynamic> map) {
    return AzureFileshareProtectedItemExtendedInfo(
      oldestRecoveryPoint: map['oldestRecoveryPoint'] == null ? null : (map['oldestRecoveryPoint'] as String).input(),
      policyState: map['policyState'] == null ? null : (map['policyState'] as String).input(),
      recoveryPointCount: map['recoveryPointCount'] == null ? null : (map['recoveryPointCount'] as int).input(),
    );
  }
}

