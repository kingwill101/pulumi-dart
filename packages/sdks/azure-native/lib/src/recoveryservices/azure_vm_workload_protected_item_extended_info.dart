// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Additional information on Azure Workload for SQL specific backup item.
class AzureVmWorkloadProtectedItemExtendedInfo {
  /// The latest backup copy available for this backup item in archive tier
  final pulumi.Input<String>? newestRecoveryPointInArchive;

  /// The oldest backup copy available for this backup item across all tiers.
  final pulumi.Input<String>? oldestRecoveryPoint;

  /// The oldest backup copy available for this backup item in archive tier
  final pulumi.Input<String>? oldestRecoveryPointInArchive;

  /// The oldest backup copy available for this backup item in vault tier
  final pulumi.Input<String>? oldestRecoveryPointInVault;

  /// Indicates consistency of policy object and policy applied to this backup item.
  final pulumi.Input<String>? policyState;

  /// Indicates consistency of policy object and policy applied to this backup item.
  final pulumi.Input<String>? recoveryModel;

  /// Number of backup copies available for this backup item.
  final pulumi.Input<int>? recoveryPointCount;

  /// Creates a new [AzureVmWorkloadProtectedItemExtendedInfo].
  /// [newestRecoveryPointInArchive] The latest backup copy available for this backup item in archive tier
  /// [oldestRecoveryPoint] The oldest backup copy available for this backup item across all tiers.
  /// [oldestRecoveryPointInArchive] The oldest backup copy available for this backup item in archive tier
  /// [oldestRecoveryPointInVault] The oldest backup copy available for this backup item in vault tier
  /// [policyState] Indicates consistency of policy object and policy applied to this backup item.
  /// [recoveryModel] Indicates consistency of policy object and policy applied to this backup item.
  /// [recoveryPointCount] Number of backup copies available for this backup item.
  AzureVmWorkloadProtectedItemExtendedInfo({
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

  factory AzureVmWorkloadProtectedItemExtendedInfo.fromMap(
    Map<String, dynamic> map,
  ) {
    return AzureVmWorkloadProtectedItemExtendedInfo(
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
      policyState: (() {
        final guardedValue = map['policyState'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      recoveryModel: (() {
        final guardedValue = map['recoveryModel'];
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
