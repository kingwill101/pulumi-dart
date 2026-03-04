// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the action responsible for adding document under a folder.
class GoogleCloudContentwarehouseV1AddToFolderAction {
  /// Names of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  final pulumi.Input<List<String>>? folders;

  /// Creates a new [GoogleCloudContentwarehouseV1AddToFolderAction].
  /// [folders] Names of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  GoogleCloudContentwarehouseV1AddToFolderAction({this.folders});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'folders': ?folders};
  }

  factory GoogleCloudContentwarehouseV1AddToFolderAction.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudContentwarehouseV1AddToFolderAction(
      folders: (() {
        final guardedValue = map['folders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
