// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v2_get_folder_args_doc}
/// Arguments for getFolder.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v2_get_folder_args_doc}
class GetFolderArgs {
  final pulumi.Input<String> folderId;

  /// Creates a new [GetFolderArgs].
  /// [folderId] Required.
  GetFolderArgs({required this.folderId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'folderId': folderId};
  }

  factory GetFolderArgs.fromMap(Map<String, dynamic> map) {
    return GetFolderArgs(
      folderId: pulumi.Input.fromValue(map['folderId'] as String),
    );
  }
}
