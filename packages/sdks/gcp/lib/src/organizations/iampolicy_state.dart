// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IAMPolicy resources.
class IAMPolicyState {
  /// (Computed) The etag of the organization's IAM policy.
  final pulumi.Input<String>? etag;
  /// The organization id of the target organization.
  final pulumi.Input<String>? orgId;
  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the organization. The policy will be
  /// merged with any existing policy applied to the organization.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the organization, locking out users without
  /// organization-level access.
  final pulumi.Input<String>? policyData;

  /// Creates a new [IAMPolicyState].
  /// [etag] (Computed) The etag of the organization's IAM policy.
  /// [orgId] The organization id of the target organization.
  /// [policyData] The `gcp.organizations.getIAMPolicy` data source that represents
  const IAMPolicyState({
    this.etag,
    this.orgId,
    this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'orgId': ?orgId,
      'policyData': ?policyData,
    };
  }

  factory IAMPolicyState.fromMap(Map<String, dynamic> map) {
    return IAMPolicyState(
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      orgId: (() { final guardedValue = map['orgId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policyData: (() { final guardedValue = map['policyData']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
