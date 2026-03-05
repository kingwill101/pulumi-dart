// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the action responsible for remove a document from a specific folder.
class GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse {
  /// Condition of the action to be executed.
  final pulumi.Input<String> condition;
  /// Name of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  final pulumi.Input<String> folder;

  /// Creates a new [GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse].
  /// [condition] Condition of the action to be executed.
  /// [folder] Name of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse({
    required this.condition,
    required this.folder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': condition,
      'folder': folder,
    };
  }

  factory GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1RemoveFromFolderActionResponse(
      condition: pulumi.Input.fromValue(map['condition'] as String),
      folder: pulumi.Input.fromValue(map['folder'] as String),
    );
  }
}

