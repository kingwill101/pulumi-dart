// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IAMPolicy resources.
class IAMPolicyState {
  /// (Computed) The etag of the project's IAM policy.
  final pulumi.Input<String>? etag;
  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the project. The policy will be
  /// merged with any existing policy applied to the project.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the project, locking out users without
  /// organization-level access.
  final pulumi.Input<String>? policyData;
  /// The project id of the target project. This is not
  /// inferred from the provider.
  final pulumi.Input<String>? project;

  /// Creates a new [IAMPolicyState].
  /// [etag] (Computed) The etag of the project's IAM policy.
  /// [policyData] The `gcp.organizations.getIAMPolicy` data source that represents
  /// [project] The project id of the target project. This is not
  IAMPolicyState({
    this.etag,
    this.policyData,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'policyData': ?policyData,
      'project': ?project,
    };
  }

  factory IAMPolicyState.fromMap(Map<String, dynamic> map) {
    return IAMPolicyState(
      etag: map['etag'] == null ? null : (map['etag']! as String).input(),
      policyData: map['policyData'] == null ? null : (map['policyData']! as String).input(),
      project: map['project'] == null ? null : (map['project']! as String).input(),
    );
  }
}

