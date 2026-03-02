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
  /// A `retention_daily` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicyRetentionDaily>? retentionDaily;
  /// A `retention_monthly` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicyRetentionMonthly>? retentionMonthly;
  /// A `retention_weekly` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicyRetentionWeekly>? retentionWeekly;
  /// A `retention_yearly` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicyRetentionYearly>? retentionYearly;
  /// A `simple_retention` block as defined below.
  final pulumi.Input<PolicyVMWorkloadProtectionPolicySimpleRetention>? simpleRetention;

  /// Creates a new [PolicyVMWorkloadProtectionPolicy].
  /// [backup] A `backup` block as defined below.
  /// [policyType] The type of the VM Workload Backup Policy. Possible values are `Differential`, `Full`, `Incremental` and `Log`.
  /// [retentionDaily] A `retention_daily` block as defined below.
  /// [retentionMonthly] A `retention_monthly` block as defined below.
  /// [retentionWeekly] A `retention_weekly` block as defined below.
  /// [retentionYearly] A `retention_yearly` block as defined below.
  /// [simpleRetention] A `simple_retention` block as defined below.
  PolicyVMWorkloadProtectionPolicy({
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
      backup: (PolicyVMWorkloadProtectionPolicyBackup.fromMap((map['backup'] as Map).cast<String, dynamic>())).input(),
      policyType: (map['policyType'] as String).input(),
      retentionDaily: map['retentionDaily'] == null ? null : (PolicyVMWorkloadProtectionPolicyRetentionDaily.fromMap((map['retentionDaily'] as Map).cast<String, dynamic>())).input(),
      retentionMonthly: map['retentionMonthly'] == null ? null : (PolicyVMWorkloadProtectionPolicyRetentionMonthly.fromMap((map['retentionMonthly'] as Map).cast<String, dynamic>())).input(),
      retentionWeekly: map['retentionWeekly'] == null ? null : (PolicyVMWorkloadProtectionPolicyRetentionWeekly.fromMap((map['retentionWeekly'] as Map).cast<String, dynamic>())).input(),
      retentionYearly: map['retentionYearly'] == null ? null : (PolicyVMWorkloadProtectionPolicyRetentionYearly.fromMap((map['retentionYearly'] as Map).cast<String, dynamic>())).input(),
      simpleRetention: map['simpleRetention'] == null ? null : (PolicyVMWorkloadProtectionPolicySimpleRetention.fromMap((map['simpleRetention'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

