// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v3_get_folder_cloudresourcemanager_v3_args_doc}
/// Arguments for getFolder.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v3_get_folder_cloudresourcemanager_v3_args_doc}
class GetFolderCloudresourcemanagerV3Args {
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderCloudresourcemanagerV3Args].
  /// [folderId] Required.
  GetFolderCloudresourcemanagerV3Args({
    required this.folderId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folderId': folderId,
    };
  }

  factory GetFolderCloudresourcemanagerV3Args.fromMap(Map<String, dynamic> map) {
    return GetFolderCloudresourcemanagerV3Args(
      folderId: (map['folderId'] as String).input(),
    );
  }
}

