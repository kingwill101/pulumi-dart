// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_vmbackup.dart';
import 'policy_vminstant_restore_resource_group.dart';
import 'policy_vmretention_daily.dart';
import 'policy_vmretention_monthly.dart';
import 'policy_vmretention_weekly.dart';
import 'policy_vmretention_yearly.dart';
import 'policy_vmtiering_policy.dart';

/// Input properties used for looking up and filtering PolicyVM resources.
class PolicyVMState {
  /// Configures the Policy backup frequency, times & days as documented in the `backup` block below.
  final pulumi.Input<PolicyVMBackup>? backup;
  /// Specifies the instant restore resource group name as documented in the `instant_restore_resource_group` block below.
  final pulumi.Input<PolicyVMInstantRestoreResourceGroup>? instantRestoreResourceGroup;
  /// Specifies the instant restore retention range in days. Possible values are between `1` and `5` when `policy_type` is `V1`, and `1` to `30` when `policy_type` is `V2`.
  ///
  /// > **Note:** `instant_restore_retention_days` **must** be set to `5` if the backup frequency is set to `Weekly`.
  final pulumi.Input<int>? instantRestoreRetentionDays;
  /// Specifies the name of the Backup Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Type of the Backup Policy. Possible values are `V1` and `V2` where `V2` stands for the Enhanced Policy. Defaults to `V1`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? policyType;
  /// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultName;
  /// The name of the resource group in which to create the policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// Configures the policy daily retention as documented in the `retention_daily` block below. Required when backup frequency is `Daily`.
  final pulumi.Input<PolicyVMRetentionDaily>? retentionDaily;
  /// Configures the policy monthly retention as documented in the `retention_monthly` block below.
  final pulumi.Input<PolicyVMRetentionMonthly>? retentionMonthly;
  /// Configures the policy weekly retention as documented in the `retention_weekly` block below. Required when backup frequency is `Weekly`.
  final pulumi.Input<PolicyVMRetentionWeekly>? retentionWeekly;
  /// Configures the policy yearly retention as documented in the `retention_yearly` block below.
  final pulumi.Input<PolicyVMRetentionYearly>? retentionYearly;
  /// A `tiering_policy` block as defined below.
  final pulumi.Input<PolicyVMTieringPolicy>? tieringPolicy;
  /// Specifies the timezone. [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Defaults to `UTC`
  final pulumi.Input<String>? timezone;

  /// Creates a new [PolicyVMState].
  /// [backup] Configures the Policy backup frequency, times & days as documented in the `backup` block below.
  /// [instantRestoreResourceGroup] Specifies the instant restore resource group name as documented in the `instant_restore_resource_group` block below.
  /// [instantRestoreRetentionDays] Specifies the instant restore retention range in days. Possible values are between `1` and `5` when `policy_type` is `V1`, and `1` to `30` when `policy_type` is `V2`.
  /// [name] Specifies the name of the Backup Policy. Changing this forces a new resource to be created.
  /// [policyType] Type of the Backup Policy. Possible values are `V1` and `V2` where `V2` stands for the Enhanced Policy. Defaults to `V1`. Changing this forces a new resource to be created.
  /// [recoveryVaultName] Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the policy. Changing this forces a new resource to be created.
  /// [retentionDaily] Configures the policy daily retention as documented in the `retention_daily` block below. Required when backup frequency is `Daily`.
  /// [retentionMonthly] Configures the policy monthly retention as documented in the `retention_monthly` block below.
  /// [retentionWeekly] Configures the policy weekly retention as documented in the `retention_weekly` block below. Required when backup frequency is `Weekly`.
  /// [retentionYearly] Configures the policy yearly retention as documented in the `retention_yearly` block below.
  /// [tieringPolicy] A `tiering_policy` block as defined below.
  /// [timezone] Specifies the timezone. [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Defaults to `UTC`
  PolicyVMState({
    this.backup,
    this.instantRestoreResourceGroup,
    this.instantRestoreRetentionDays,
    this.name,
    this.policyType,
    this.recoveryVaultName,
    this.resourceGroupName,
    this.retentionDaily,
    this.retentionMonthly,
    this.retentionWeekly,
    this.retentionYearly,
    this.tieringPolicy,
    this.timezone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backup': ?pulumi.Input.mapOptionalInputValue<PolicyVMBackup, Map<String, dynamic>>(backup, (value) => value.toMap()),
      'instantRestoreResourceGroup': ?pulumi.Input.mapOptionalInputValue<PolicyVMInstantRestoreResourceGroup, Map<String, dynamic>>(instantRestoreResourceGroup, (value) => value.toMap()),
      'instantRestoreRetentionDays': ?instantRestoreRetentionDays,
      'name': ?name,
      'policyType': ?policyType,
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
      'retentionDaily': ?pulumi.Input.mapOptionalInputValue<PolicyVMRetentionDaily, Map<String, dynamic>>(retentionDaily, (value) => value.toMap()),
      'retentionMonthly': ?pulumi.Input.mapOptionalInputValue<PolicyVMRetentionMonthly, Map<String, dynamic>>(retentionMonthly, (value) => value.toMap()),
      'retentionWeekly': ?pulumi.Input.mapOptionalInputValue<PolicyVMRetentionWeekly, Map<String, dynamic>>(retentionWeekly, (value) => value.toMap()),
      'retentionYearly': ?pulumi.Input.mapOptionalInputValue<PolicyVMRetentionYearly, Map<String, dynamic>>(retentionYearly, (value) => value.toMap()),
      'tieringPolicy': ?pulumi.Input.mapOptionalInputValue<PolicyVMTieringPolicy, Map<String, dynamic>>(tieringPolicy, (value) => value.toMap()),
      'timezone': ?timezone,
    };
  }

  factory PolicyVMState.fromMap(Map<String, dynamic> map) {
    return PolicyVMState(
      backup: map['backup'] == null ? null : (PolicyVMBackup.fromMap((map['backup']! as Map).cast<String, dynamic>())).input(),
      instantRestoreResourceGroup: map['instantRestoreResourceGroup'] == null ? null : (PolicyVMInstantRestoreResourceGroup.fromMap((map['instantRestoreResourceGroup']! as Map).cast<String, dynamic>())).input(),
      instantRestoreRetentionDays: map['instantRestoreRetentionDays'] == null ? null : (map['instantRestoreRetentionDays']! as int).input(),
      name: map['name'] == null ? null : (map['name']! as String).input(),
      policyType: map['policyType'] == null ? null : (map['policyType']! as String).input(),
      recoveryVaultName: map['recoveryVaultName'] == null ? null : (map['recoveryVaultName']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      retentionDaily: map['retentionDaily'] == null ? null : (PolicyVMRetentionDaily.fromMap((map['retentionDaily']! as Map).cast<String, dynamic>())).input(),
      retentionMonthly: map['retentionMonthly'] == null ? null : (PolicyVMRetentionMonthly.fromMap((map['retentionMonthly']! as Map).cast<String, dynamic>())).input(),
      retentionWeekly: map['retentionWeekly'] == null ? null : (PolicyVMRetentionWeekly.fromMap((map['retentionWeekly']! as Map).cast<String, dynamic>())).input(),
      retentionYearly: map['retentionYearly'] == null ? null : (PolicyVMRetentionYearly.fromMap((map['retentionYearly']! as Map).cast<String, dynamic>())).input(),
      tieringPolicy: map['tieringPolicy'] == null ? null : (PolicyVMTieringPolicy.fromMap((map['tieringPolicy']! as Map).cast<String, dynamic>())).input(),
      timezone: map['timezone'] == null ? null : (map['timezone']! as String).input(),
    );
  }
}

