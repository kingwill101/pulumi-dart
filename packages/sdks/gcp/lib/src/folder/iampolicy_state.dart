// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering IAMPolicy resources.
class IAMPolicyState {
  /// (Computed) The etag of the folder's IAM policy.
  final pulumi.Input<String>? etag;
  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final pulumi.Input<String>? folder;
  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the folder. The policy will be
  /// merged with any existing policy applied to the folder.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the folder, locking out users without
  /// folder-level access.
  final pulumi.Input<String>? policyData;

  /// Creates a new [IAMPolicyState].
  /// [etag] (Computed) The etag of the folder's IAM policy.
  /// [folder] The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  /// [policyData] The `gcp.organizations.getIAMPolicy` data source that represents
  IAMPolicyState({
    pulumi.Output<String>? etag,
    pulumi.Output<String>? folder,
    pulumi.Output<String>? policyData,
  }) :
      etag = pulumi.Input.asOptionalInput<String>(etag),
      folder = pulumi.Input.asOptionalInput<String>(folder),
      policyData = pulumi.Input.asOptionalInput<String>(policyData);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'etag': ?etag,
      'folder': ?folder,
      'policyData': ?policyData,
    };
  }

  factory IAMPolicyState.fromMap(Map<String, dynamic> map) {
    return IAMPolicyState(
      etag: map['etag'] == null ? null : pulumi.Output.create<String>(map['etag'] as String),
      folder: map['folder'] == null ? null : pulumi.Output.create<String>(map['folder'] as String),
      policyData: map['policyData'] == null ? null : pulumi.Output.create<String>(map['policyData'] as String),
    );
  }
}

