// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v2_get_folder_iam_policy_args_doc}
/// Arguments for getFolderIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v2_get_folder_iam_policy_args_doc}
class GetFolderIamPolicyArgs {
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderIamPolicyArgs].
  /// [folderId] Required.
  GetFolderIamPolicyArgs({required this.folderId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'folderId': folderId};
  }

  factory GetFolderIamPolicyArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderIamPolicyArgs(
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
    );
  }
}
