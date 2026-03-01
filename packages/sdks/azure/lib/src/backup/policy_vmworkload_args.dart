// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_vmworkload_protection_policy.dart';
import 'policy_vmworkload_settings.dart';

/// {@template pulumi_backup_policy_vmworkload_policy_vmworkload_args_doc}
/// The set of arguments for PolicyVMWorkload.
/// {@endtemplate}
/// {@macro pulumi_backup_policy_vmworkload_policy_vmworkload_args_doc}
class PolicyVMWorkloadArgs {
  /// The name of the VM Workload Backup Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `protection_policy` blocks as defined below.
  final pulumi.Input<List<PolicyVMWorkloadProtectionPolicy>> protectionPolicies;
  /// The name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  final pulumi.Input<String> recoveryVaultName;
  /// The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A `settings` block as defined below.
  final pulumi.Input<PolicyVMWorkloadSettings> settings;
  /// The VM Workload type for the Backup Policy. Possible values are `SQLDataBase` and `SAPHanaDatabase`. Changing this forces a new resource to be created.
  final pulumi.Input<String> workloadType;

  /// Creates a new [PolicyVMWorkloadArgs].
  /// [name] The name of the VM Workload Backup Policy. Changing this forces a new resource to be created.
  /// [protectionPolicies] One or more `protection_policy` blocks as defined below.
  /// [recoveryVaultName] The name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created.
  /// [settings] A `settings` block as defined below.
  /// [workloadType] The VM Workload type for the Backup Policy. Possible values are `SQLDataBase` and `SAPHanaDatabase`. Changing this forces a new resource to be created.
  PolicyVMWorkloadArgs({
    pulumi.Output<String>? name,
    required pulumi.Output<List<PolicyVMWorkloadProtectionPolicy>> protectionPolicies,
    required pulumi.Output<String> recoveryVaultName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<PolicyVMWorkloadSettings> settings,
    required pulumi.Output<String> workloadType,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      protectionPolicies = pulumi.Input.asInput<List<PolicyVMWorkloadProtectionPolicy>>(protectionPolicies),
      recoveryVaultName = pulumi.Input.asInput<String>(recoveryVaultName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      settings = pulumi.Input.asInput<PolicyVMWorkloadSettings>(settings),
      workloadType = pulumi.Input.asInput<String>(workloadType);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'protectionPolicies': pulumi.Input.mapInputValue<List<PolicyVMWorkloadProtectionPolicy>, List<Map<String, dynamic>>>(protectionPolicies, (value) => pulumi.Input.encodeList<PolicyVMWorkloadProtectionPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recoveryVaultName': recoveryVaultName,
      'resourceGroupName': resourceGroupName,
      'settings': pulumi.Input.mapInputValue<PolicyVMWorkloadSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'workloadType': workloadType,
    };
  }

  factory PolicyVMWorkloadArgs.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadArgs(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      protectionPolicies: pulumi.Output.create<List<PolicyVMWorkloadProtectionPolicy>>(pulumi.Input.decodeList<PolicyVMWorkloadProtectionPolicy>(map['protectionPolicies'], (value) => PolicyVMWorkloadProtectionPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      recoveryVaultName: pulumi.Output.create<String>(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      settings: pulumi.Output.create<PolicyVMWorkloadSettings>(PolicyVMWorkloadSettings.fromMap((map['settings'] as Map).cast<String, dynamic>())),
      workloadType: pulumi.Output.create<String>(map['workloadType'] as String),
    );
  }
}

