// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_orgpolicy_v2_alternate_policy_spec_response.dart';
import 'google_cloud_orgpolicy_v2_policy_spec_response.dart';

/// Result data returned by getPolicy.
class GetPolicyResult {
  /// Deprecated.
  final GoogleCloudOrgpolicyV2AlternatePolicySpecResponse alternate;
  /// Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  final GoogleCloudOrgpolicyV2PolicySpecResponse dryRunSpec;
  /// Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name of the constraint which this policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, `projects/123/policies/compute.disableSerialPortAccess`. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  final String name;
  /// Basic information about the Organization Policy.
  final GoogleCloudOrgpolicyV2PolicySpecResponse spec;

  /// Creates a new [GetPolicyResult].
  /// [alternate] Deprecated.
  /// [dryRunSpec] Dry-run policy. Audit-only policy, can be used to monitor how the policy would have impacted the existing and future resources if it's enforced.
  /// [name] Immutable. The resource name of the policy. Must be one of the following forms, where `constraint_name` is the name of the constraint which this policy configures: * `projects/{project_number}/policies/{constraint_name}` * `folders/{folder_id}/policies/{constraint_name}` * `organizations/{organization_id}/policies/{constraint_name}` For example, `projects/123/policies/compute.disableSerialPortAccess`. Note: `projects/{project_id}/policies/{constraint_name}` is also an acceptable name for API requests, but responses will return the name using the equivalent project number.
  /// [spec] Basic information about the Organization Policy.
  const GetPolicyResult({
    required this.alternate,
    required this.dryRunSpec,
    required this.name,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alternate': alternate.toMap(),
      'dryRunSpec': dryRunSpec.toMap(),
      'name': name,
      'spec': spec.toMap(),
    };
  }

  factory GetPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetPolicyResult(
      alternate: GoogleCloudOrgpolicyV2AlternatePolicySpecResponse.fromMap((map['alternate']! as Map).cast<String, dynamic>()),
      dryRunSpec: GoogleCloudOrgpolicyV2PolicySpecResponse.fromMap((map['dryRunSpec']! as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      spec: GoogleCloudOrgpolicyV2PolicySpecResponse.fromMap((map['spec']! as Map).cast<String, dynamic>()),
    );
  }
}
