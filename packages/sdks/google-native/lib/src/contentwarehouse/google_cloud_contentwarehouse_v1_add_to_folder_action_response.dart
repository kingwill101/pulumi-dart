// ignore_for_file: unused_element, unnecessary_cast


/// Represents the action responsible for adding document under a folder.
class GoogleCloudContentwarehouseV1AddToFolderActionResponse {
  /// Names of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  final List<String> folders;

  /// Creates a new [GoogleCloudContentwarehouseV1AddToFolderActionResponse].
  /// [folders] Names of the folder under which new document is to be added. Format: projects/{project_number}/locations/{location}/documents/{document_id}.
  GoogleCloudContentwarehouseV1AddToFolderActionResponse({
    required this.folders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'folders': folders,
    };
  }

  factory GoogleCloudContentwarehouseV1AddToFolderActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1AddToFolderActionResponse(
      folders: (map['folders'] as List).cast<String>(),
    );
  }
}

