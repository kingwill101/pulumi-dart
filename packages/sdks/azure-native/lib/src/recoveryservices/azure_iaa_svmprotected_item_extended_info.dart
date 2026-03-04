// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information on Azure IaaS VM specific backup item.
class AzureIaaSVMProtectedItemExtendedInfo {
  /// The latest backup copy available for this backup item in archive tier
  final pulumi.Input<String>? newestRecoveryPointInArchive;

  /// The oldest backup copy available for this backup item across all tiers.
  final pulumi.Input<String>? oldestRecoveryPoint;

  /// The oldest backup copy available for this backup item in archive tier
  final pulumi.Input<String>? oldestRecoveryPointInArchive;

  /// The oldest backup copy available for this backup item in vault tier
  final pulumi.Input<String>? oldestRecoveryPointInVault;

  /// Specifies if backup policy associated with the backup item is inconsistent.
  final pulumi.Input<bool>? policyInconsistent;

  /// Number of backup copies available for this backup item.
  final pulumi.Input<int>? recoveryPointCount;

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

  factory AzureIaaSVMProtectedItemExtendedInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureIaaSVMProtectedItemExtendedInfo(
      newestRecoveryPointInArchive: (() {
        final guardedValue = map['newestRecoveryPointInArchive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oldestRecoveryPoint: (() {
        final guardedValue = map['oldestRecoveryPoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oldestRecoveryPointInArchive: (() {
        final guardedValue = map['oldestRecoveryPointInArchive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oldestRecoveryPointInVault: (() {
        final guardedValue = map['oldestRecoveryPointInVault'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policyInconsistent: (() {
        final guardedValue = map['policyInconsistent'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      recoveryPointCount: (() {
        final guardedValue = map['recoveryPointCount'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
