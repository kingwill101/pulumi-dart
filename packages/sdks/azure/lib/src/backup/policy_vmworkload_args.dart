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
  /// One or more `protectionPolicy` blocks as defined below.
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
  /// [protectionPolicies] One or more `protectionPolicy` blocks as defined below.
  /// [recoveryVaultName] The name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created.
  /// [settings] A `settings` block as defined below.
  /// [workloadType] The VM Workload type for the Backup Policy. Possible values are `SQLDataBase` and `SAPHanaDatabase`. Changing this forces a new resource to be created.
  const PolicyVMWorkloadArgs({
    this.name,
    required this.protectionPolicies,
    required this.recoveryVaultName,
    required this.resourceGroupName,
    required this.settings,
    required this.workloadType,
  });

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
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      protectionPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<PolicyVMWorkloadProtectionPolicy>(map['protectionPolicies']!, (value) => PolicyVMWorkloadProtectionPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      recoveryVaultName: pulumi.Input.fromValue(map['recoveryVaultName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      settings: pulumi.Input.fromValue(PolicyVMWorkloadSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())),
      workloadType: pulumi.Input.fromValue(map['workloadType'] as String),
    );
  }
}
