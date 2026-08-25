// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folders_folder.dart';

/// Result data returned by getFolders.
class GetFoldersResult {
  /// A list of folders matching the provided filter. Structure is defined below.
  final List<GetFoldersFolder>? folders;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? parentId;

  /// Creates a new [GetFoldersResult].
  /// [folders] A list of folders matching the provided filter. Structure is defined below.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [parentId] Optional.
  const GetFoldersResult({
    this.folders,
    this.id,
    this.parentId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folders': ?(() { final guardedValue = folders; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetFoldersFolder, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'parentId': ?parentId,
    };
  }

  factory GetFoldersResult.fromMap(Map<String, dynamic> map) {
    return GetFoldersResult(
      folders: (() { final guardedValue = map['folders']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetFoldersFolder>(guardedValue, (value) => GetFoldersFolder.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      parentId: (() { final guardedValue = map['parentId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
