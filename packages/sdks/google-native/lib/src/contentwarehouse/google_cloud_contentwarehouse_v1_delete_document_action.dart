// ignore_for_file: unused_element, unnecessary_cast


/// Represents the action responsible for deleting the document.
class GoogleCloudContentwarehouseV1DeleteDocumentAction {
  /// Boolean field to select between hard vs soft delete options. Set 'true' for 'hard delete' and 'false' for 'soft delete'.
  final bool? enableHardDelete;

  /// Creates a new [GoogleCloudContentwarehouseV1DeleteDocumentAction].
  /// [enableHardDelete] Boolean field to select between hard vs soft delete options. Set 'true' for 'hard delete' and 'false' for 'soft delete'.
  GoogleCloudContentwarehouseV1DeleteDocumentAction({
    this.enableHardDelete,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableHardDelete': ?enableHardDelete,
    };
  }

  factory GoogleCloudContentwarehouseV1DeleteDocumentAction.fromMap(Map<String, dynamic> map) {
    return GoogleCloudContentwarehouseV1DeleteDocumentAction(
      enableHardDelete: map['enableHardDelete'] == null ? null : map['enableHardDelete'] as bool,
    );
  }
}

