// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v2beta1_get_folder_cloudresourcemanager_v2beta1_args_doc}
/// Arguments for getFolder.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v2beta1_get_folder_cloudresourcemanager_v2beta1_args_doc}
class GetFolderCloudresourcemanagerV2beta1Args {
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderCloudresourcemanagerV2beta1Args].
  /// [folderId] Required.
  GetFolderCloudresourcemanagerV2beta1Args({required this.folderId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'folderId': folderId};
  }

  factory GetFolderCloudresourcemanagerV2beta1Args.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFolderCloudresourcemanagerV2beta1Args(
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
    );
  }
}
