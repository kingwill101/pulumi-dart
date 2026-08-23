// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the action responsible for deleting the document.
class GoogleCloudContentwarehouseV1DeleteDocumentActionResponse {
  /// Boolean field to select between hard vs soft delete options. Set 'true' for 'hard delete' and 'false' for 'soft delete'.
  final pulumi.Input<bool> enableHardDelete;

  /// Creates a new [GoogleCloudContentwarehouseV1DeleteDocumentActionResponse].
  /// [enableHardDelete] Boolean field to select between hard vs soft delete options. Set 'true' for 'hard delete' and 'false' for 'soft delete'.
  const GoogleCloudContentwarehouseV1DeleteDocumentActionResponse({
    required this.enableHardDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHardDelete': enableHardDelete,
    };
  }

  factory GoogleCloudContentwarehouseV1DeleteDocumentActionResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DeleteDocumentActionResponse(
      enableHardDelete: pulumi.Input.fromValue(map['enableHardDelete'] as bool),
    );
  }
}
