// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_folder_get_iam_policy_get_iam_policy_args_doc}
/// Arguments for getIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_folder_get_iam_policy_get_iam_policy_args_doc}
class GetIamPolicyArgs {
  /// The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  final pulumi.Input<String> folder;

  /// Creates a new [GetIamPolicyArgs].
  /// [folder] The resource name of the folder the policy is attached to. Its format is folders/{folder_id}.
  const GetIamPolicyArgs({
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folder': folder,
    };
  }

  factory GetIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetIamPolicyArgs(
      folder: pulumi.Input.fromValue(map['folder'] as String),
    );
  }
}
