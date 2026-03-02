// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_vmworkload_protection_policy.dart';
import 'policy_vmworkload_settings.dart';

/// Input properties used for looking up and filtering PolicyVMWorkload resources.
class PolicyVMWorkloadState {
  /// The name of the VM Workload Backup Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// One or more `protection_policy` blocks as defined below.
  final pulumi.Input<List<PolicyVMWorkloadProtectionPolicy>>? protectionPolicies;
  /// The name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  final pulumi.Input<String>? recoveryVaultName;
  /// The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created.
  final pulumi.Input<String>? resourceGroupName;
  /// A `settings` block as defined below.
  final pulumi.Input<PolicyVMWorkloadSettings>? settings;
  /// The VM Workload type for the Backup Policy. Possible values are `SQLDataBase` and `SAPHanaDatabase`. Changing this forces a new resource to be created.
  final pulumi.Input<String>? workloadType;

  /// Creates a new [PolicyVMWorkloadState].
  /// [name] The name of the VM Workload Backup Policy. Changing this forces a new resource to be created.
  /// [protectionPolicies] One or more `protection_policy` blocks as defined below.
  /// [recoveryVaultName] The name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the resource group in which to create the VM Workload Backup Policy. Changing this forces a new resource to be created.
  /// [settings] A `settings` block as defined below.
  /// [workloadType] The VM Workload type for the Backup Policy. Possible values are `SQLDataBase` and `SAPHanaDatabase`. Changing this forces a new resource to be created.
  PolicyVMWorkloadState({
    this.name,
    this.protectionPolicies,
    this.recoveryVaultName,
    this.resourceGroupName,
    this.settings,
    this.workloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'protectionPolicies': ?pulumi.Input.mapOptionalInputValue<List<PolicyVMWorkloadProtectionPolicy>, List<Map<String, dynamic>>>(protectionPolicies, (value) => pulumi.Input.encodeList<PolicyVMWorkloadProtectionPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'recoveryVaultName': ?recoveryVaultName,
      'resourceGroupName': ?resourceGroupName,
      'settings': ?pulumi.Input.mapOptionalInputValue<PolicyVMWorkloadSettings, Map<String, dynamic>>(settings, (value) => value.toMap()),
      'workloadType': ?workloadType,
    };
  }

  factory PolicyVMWorkloadState.fromMap(Map<String, dynamic> map) {
    return PolicyVMWorkloadState(
      name: map['name'] == null ? null : (map['name']! as String).input(),
      protectionPolicies: map['protectionPolicies'] == null ? null : (pulumi.Input.decodeList<PolicyVMWorkloadProtectionPolicy>(map['protectionPolicies']!, (value) => PolicyVMWorkloadProtectionPolicy.fromMap((value as Map).cast<String, dynamic>()))).input(),
      recoveryVaultName: map['recoveryVaultName'] == null ? null : (map['recoveryVaultName']! as String).input(),
      resourceGroupName: map['resourceGroupName'] == null ? null : (map['resourceGroupName']! as String).input(),
      settings: map['settings'] == null ? null : (PolicyVMWorkloadSettings.fromMap((map['settings']! as Map).cast<String, dynamic>())).input(),
      workloadType: map['workloadType'] == null ? null : (map['workloadType']! as String).input(),
    );
  }
}

