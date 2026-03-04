// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information on Azure Sql specific protected item.
class AzureSqlProtectedItemExtendedInfoResponse {
  /// The oldest backup copy available for this item in the service.
  final pulumi.Input<String>? oldestRecoveryPoint;

  /// State of the backup policy associated with this backup item.
  final pulumi.Input<String>? policyState;

  /// Number of available backup copies associated with this backup item.
  final pulumi.Input<int>? recoveryPointCount;

  /// Creates a new [AzureSqlProtectedItemExtendedInfoResponse].
  /// [oldestRecoveryPoint] The oldest backup copy available for this item in the service.
  /// [policyState] State of the backup policy associated with this backup item.
  /// [recoveryPointCount] Number of available backup copies associated with this backup item.
  AzureSqlProtectedItemExtendedInfoResponse({
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

  factory AzureSqlProtectedItemExtendedInfoResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureSqlProtectedItemExtendedInfoResponse(
      oldestRecoveryPoint: (() {
        final guardedValue = map['oldestRecoveryPoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyState: (() {
        final guardedValue = map['policyState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryPointCount: (() {
        final guardedValue = map['recoveryPointCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
