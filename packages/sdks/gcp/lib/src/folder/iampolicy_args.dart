// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_folder_i_ampolicy_iampolicy_args_doc}
/// The set of arguments for IAMPolicy.
/// {@endtemplate}
/// {@macro pulumi_folder_i_ampolicy_iampolicy_args_doc}
class IAMPolicyArgs {
  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final pulumi.Input<String> folder;
  /// The `gcp.organizations.getIAMPolicy` data source that represents
  /// the IAM policy that will be applied to the folder. The policy will be
  /// merged with any existing policy applied to the folder.
  ///
  /// Changing this updates the policy.
  ///
  /// Deleting this removes all policies from the folder, locking out users without
  /// folder-level access.
  final pulumi.Input<String> policyData;

  /// Creates a new [IAMPolicyArgs].
  /// [folder] The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  /// [policyData] The `gcp.organizations.getIAMPolicy` data source that represents
  const IAMPolicyArgs({
    required this.folder,
    required this.policyData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folder': folder,
      'policyData': policyData,
    };
  }

  factory IAMPolicyArgs.fromMap(Map<String, dynamic> map) {
    return IAMPolicyArgs(
      folder: pulumi.Input.fromValue(map['folder'] as String),
      policyData: pulumi.Input.fromValue(map['policyData'] as String),
    );
  }
}
