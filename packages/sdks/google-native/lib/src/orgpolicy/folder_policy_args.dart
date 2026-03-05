// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_orgpolicy_v2_alternate_policy_spec.dart';
import 'google_cloud_orgpolicy_v2_policy_spec.dart';

/// {@template pulumi_orgpolicy_v2_folder_policy_args_doc}
/// The set of arguments for FolderPolicy.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_v2_folder_policy_args_doc}
class FolderPolicyArgs {
  /// Deprecated.
  final pulumi.Input<GoogleCloudOrgpolicyV2AlternatePolicySpec>? alternate;
  /// Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  final pulumi.Input<GoogleCloudOrgpolicyV2PolicySpec>? dryRunSpec;
  final pulumi.Input<String> folderId;
  /// Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name of the constraint which this policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, `projects/123/policies/compute.disableSerialPortAccess`. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  final pulumi.Input<String>? name;
  /// Basic information about the Organization Policy.
  final pulumi.Input<GoogleCloudOrgpolicyV2PolicySpec>? spec;

  /// Creates a new [FolderPolicyArgs].
  /// [alternate] Deprecated.
  /// [dryRunSpec] Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  /// [folderId] Required.
  /// [name] Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name of the constraint which this policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, `projects/123/policies/compute.disableSerialPortAccess`. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  /// [spec] Basic information about the Organization Policy.
  FolderPolicyArgs({
    this.alternate,
    this.dryRunSpec,
    required this.folderId,
    this.name,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternate': ?pulumi.Input.mapOptionalInputValue<GoogleCloudOrgpolicyV2AlternatePolicySpec, Map<String, dynamic>>(alternate, (value) => value.toMap()),
      'dryRunSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudOrgpolicyV2PolicySpec, Map<String, dynamic>>(dryRunSpec, (value) => value.toMap()),
      'folderId': folderId,
      'name': ?name,
      'spec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudOrgpolicyV2PolicySpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory FolderPolicyArgs.fromMap(Map<String, dynamic> map) {
    return FolderPolicyArgs(
      alternate: (() { final guardedValue = map['alternate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudOrgpolicyV2AlternatePolicySpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dryRunSpec: (() { final guardedValue = map['dryRunSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudOrgpolicyV2PolicySpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: (() { final guardedValue = map['spec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(GoogleCloudOrgpolicyV2PolicySpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

