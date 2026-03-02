// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the action responsible for remove a document from a specific folder.
class GoogleCloudContentwarehouseV1RemoveFromFolderAction {
  /// Condition of the action to be executed.
  final pulumi.Input<String>? condition;
  /// Name of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  final pulumi.Input<String>? folder;

  /// Creates a new [GoogleCloudContentwarehouseV1RemoveFromFolderAction].
  /// [condition] Condition of the action to be executed.
  /// [folder] Name of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  GoogleCloudContentwarehouseV1RemoveFromFolderAction({
    this.condition,
    this.folder,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'condition': ?condition,
      'folder': ?folder,
    };
  }

  factory GoogleCloudContentwarehouseV1RemoveFromFolderAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1RemoveFromFolderAction(
      condition: map['condition'] == null ? null : (map['condition']! as String).input(),
      folder: map['folder'] == null ? null : (map['folder']! as String).input(),
    );
  }
}

