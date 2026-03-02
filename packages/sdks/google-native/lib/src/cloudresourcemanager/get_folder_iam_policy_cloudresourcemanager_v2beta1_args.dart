// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v2beta1_get_folder_iam_policy_cloudresourcemanager_v2beta1_args_doc}
/// Arguments for getFolderIamPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v2beta1_get_folder_iam_policy_cloudresourcemanager_v2beta1_args_doc}
class GetFolderIamPolicyCloudresourcemanagerV2beta1Args {
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderIamPolicyCloudresourcemanagerV2beta1Args].
  /// [folderId] Required.
  GetFolderIamPolicyCloudresourcemanagerV2beta1Args({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': folderId,
    };
  }

  factory GetFolderIamPolicyCloudresourcemanagerV2beta1Args.fromMap(Map<String, dynamic> map) {
    return GetFolderIamPolicyCloudresourcemanagerV2beta1Args(
      folderId: (map['folderId'] as String).input(),
    );
  }
}

