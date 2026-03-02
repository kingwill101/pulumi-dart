// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudresourcemanager_v2beta1_folder_cloudresourcemanager_v2beta1_args_doc}
/// The set of arguments for Folder.
/// {@endtemplate}
/// {@macro pulumi_cloudresourcemanager_v2beta1_folder_cloudresourcemanager_v2beta1_args_doc}
class FolderCloudresourcemanagerV2beta1Args {
  /// The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  final pulumi.Input<String>? displayName;
  /// The Folder's parent's resource name. Updates to the folder's parent must be performed via MoveFolder.
  final pulumi.Input<String> parent;

  /// Creates a new [FolderCloudresourcemanagerV2beta1Args].
  /// [displayName] The folder's display name. A folder's display name must be unique amongst its siblings, e.g. no two folders with the same parent can share the same display name. The display name must start and end with a letter or digit, may contain letters, digits, spaces, hyphens and underscores and can be no longer than 30 characters. This is captured by the regular expression: `[\p{L}\p{N}]([\p{L}\p{N}_- ]{0,28}[\p{L}\p{N}])?`.
  /// [parent] The Folder's parent's resource name. Updates to the folder's parent must be performed via MoveFolder.
  FolderCloudresourcemanagerV2beta1Args({
    this.displayName,
    required this.parent,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'parent': parent,
    };
  }

  factory FolderCloudresourcemanagerV2beta1Args.fromMap(Map<String, dynamic> map) {
    return FolderCloudresourcemanagerV2beta1Args(
      displayName: map['displayName'] == null ? null : (map['displayName']! as String).input(),
      parent: (map['parent'] as String).input(),
    );
  }
}

