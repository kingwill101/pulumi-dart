// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_orgpolicy_v2_alternate_policy_spec.dart';
import 'google_cloud_orgpolicy_v2_policy_spec.dart';

/// {@template pulumi_orgpolicy_v2_organization_policy_args_doc}
/// The set of arguments for OrganizationPolicy.
/// {@endtemplate}
/// {@macro pulumi_orgpolicy_v2_organization_policy_args_doc}
class OrganizationPolicyArgs {
  /// Deprecated.
  final pulumi.Input<GoogleCloudOrgpolicyV2AlternatePolicySpec>? alternate;
  /// Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  final pulumi.Input<GoogleCloudOrgpolicyV2PolicySpec>? dryRunSpec;
  /// Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name of the constraint which this policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, `projects/123/policies/compute.disableSerialPortAccess`. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  final pulumi.Input<String>? name;
  final pulumi.Input<String> organizationId;
  /// Basic information about the Organization Policy.
  final pulumi.Input<GoogleCloudOrgpolicyV2PolicySpec>? spec;

  /// Creates a new [OrganizationPolicyArgs].
  /// [alternate] Deprecated.
  /// [dryRunSpec] Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  /// [name] Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name of the constraint which this policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, `projects/123/policies/compute.disableSerialPortAccess`. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  /// [organizationId] Required.
  /// [spec] Basic information about the Organization Policy.
  OrganizationPolicyArgs({
    this.alternate,
    this.dryRunSpec,
    this.name,
    required this.organizationId,
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternate': ?pulumi.Input.mapOptionalInputValue<GoogleCloudOrgpolicyV2AlternatePolicySpec, Map<String, dynamic>>(alternate, (value) => value.toMap()),
      'dryRunSpec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudOrgpolicyV2PolicySpec, Map<String, dynamic>>(dryRunSpec, (value) => value.toMap()),
      'name': ?name,
      'organizationId': organizationId,
      'spec': ?pulumi.Input.mapOptionalInputValue<GoogleCloudOrgpolicyV2PolicySpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory OrganizationPolicyArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationPolicyArgs(
      alternate: map['alternate'] == null ? null : (GoogleCloudOrgpolicyV2AlternatePolicySpec.fromMap((map['alternate'] as Map).cast<String, dynamic>())).input(),
      dryRunSpec: map['dryRunSpec'] == null ? null : (GoogleCloudOrgpolicyV2PolicySpec.fromMap((map['dryRunSpec'] as Map).cast<String, dynamic>())).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      organizationId: (map['organizationId'] as String).input(),
      spec: map['spec'] == null ? null : (GoogleCloudOrgpolicyV2PolicySpec.fromMap((map['spec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

