// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folders_folder.dart';

/// Result data returned by getFolders.
class GetFoldersResult {
  /// A list of folders matching the provided filter. Structure is defined below.
  final List<GetFoldersFolder> folders;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String parentId;

  /// Creates a new [GetFoldersResult].
  /// [folders] A list of folders matching the provided filter. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parentId] Required.
  GetFoldersResult({
    required this.folders,
    required this.id,
    required this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folders': pulumi.Input.encodeList<GetFoldersFolder, Map<String, dynamic>>(folders, (value) => value.toMap()),
      'id': id,
      'parentId': parentId,
    };
  }

  factory GetFoldersResult.fromMap(Map<String, dynamic> map) {
    return GetFoldersResult(
      folders: pulumi.Input.decodeList<GetFoldersFolder>(map['folders']!, (value) => GetFoldersFolder.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      parentId: map['parentId'] as String,
    );
  }
}

