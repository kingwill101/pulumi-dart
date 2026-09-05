// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_vmworkload_protection_policy_backup.dart';
import 'policy_vmworkload_protection_policy_retention_daily.dart';
import 'policy_vmworkload_protection_policy_retention_monthly.dart';
import 'policy_vmworkload_protection_policy_retention_weekly.dart';
import 'policy_vmworkload_protection_policy_retention_yearly.dart';
import 'policy_vmworkload_protection_policy_simple_retention.dart';

class PolicyVMWorkloadProtectionPolicy {
  /// A `backup` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicyBackup> backup;
  /// The type of the VM Workload Backup Policy. Possible values are `Differential`, `Full`, `Incremental` and `Log`.
  final pulumi.Input<String> policyType;
  /// A `retentionDaily` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicyRetentionDaily?>? retentionDaily;
  /// A `retentionMonthly` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicyRetentionMonthly?>? retentionMonthly;
  /// A `retentionWeekly` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicyRetentionWeekly?>? retentionWeekly;
  /// A `retentionYearly` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicyRetentionYearly?>? retentionYearly;
  /// A `simpleRetention` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicySimpleRetention?>? simpleRetention;

  /// Creates a new [PolicyVMWorkloadProtectionPolicy].
  /// [backup] A `backup` block as defined below.
  /// [policyType] The type of the VM Workload Backup Policy. Possible values are `Differential`, `Full`, `Incremental` and `Log`.
  /// [retentionDaily] A `retentionDaily` block as defined below.
  /// [retentionMonthly] A `retentionMonthly` block as defined below.
  /// [retentionWeekly] A `retentionWeekly` block as defined below.
  /// [retentionYearly] A `retentionYearly` block as defined below.
  /// [simpleRetention] A `simpleRetention` block as defined below.
  const PolicyVMWorkloadProtectionPolicy({
    required this.backup,
    required this.policyType,
    this.retentionDaily,
    this.retentionMonthly,
    this.retentionWeekly,
    this.retentionYearly,
    this.simpleRetention,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': pulumi.Input.mapInputValue<PolicyVMWorkloadProtectionPolicyBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'policyType': policyType,
      'retentionDaily': ?pulumi.Input.mapOptionalInputValue<PolicyVMWorkloadProtectionPolicyRetentionDaily, Map<String, dynamic>>(retentionDaily, (value) => value.toMap()),
      'retentionMonthly': ?pulumi.Input.mapOptionalInputValue<PolicyVMWorkloadProtectionPolicyRetentionMonthly, Map<String, dynamic>>(retentionMonthly, (value) => value.toMap()),
      'retentionWeekly': ?pulumi.Input.mapOptionalInputValue<PolicyVMWorkloadProtectionPolicyRetentionWeekly, Map<String, dynamic>>(retentionWeekly, (value) => value.toMap()),
      'retentionYearly': ?pulumi.Input.mapOptionalInputValue<PolicyVMWorkloadProtectionPolicyRetentionYearly, Map<String, dynamic>>(retentionYearly, (value) => value.toMap()),
      'simpleRetention': ?pulumi.Input.mapOptionalInputValue<PolicyVMWorkloadProtectionPolicySimpleRetention, Map<String, dynamic>>(simpleRetention, (value) => value.toMap()),
    };
  }

  factory PolicyVMWorkloadProtectionPolicy.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadProtectionPolicy(
      backup: pulumi.Input.fromValue(PolicyVMWorkloadProtectionPolicyBackup.fromMap((map['backup']! as Map).cast<String, dynamic>())),
      policyType: pulumi.Input.fromValue(map['policyType'] as String),
      retentionDaily: (() { final guardedValue = map['retentionDaily']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyVMWorkloadProtectionPolicyRetentionDaily.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionMonthly: (() { final guardedValue = map['retentionMonthly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyVMWorkloadProtectionPolicyRetentionMonthly.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionWeekly: (() { final guardedValue = map['retentionWeekly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyVMWorkloadProtectionPolicyRetentionWeekly.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      retentionYearly: (() { final guardedValue = map['retentionYearly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyVMWorkloadProtectionPolicyRetentionYearly.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      simpleRetention: (() { final guardedValue = map['simpleRetention']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PolicyVMWorkloadProtectionPolicySimpleRetention.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
