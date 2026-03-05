// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDirectoryObject.
class GetDirectoryObjectResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String objectId;
  final String type;

  /// Creates a new [GetDirectoryObjectResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] Required.
  /// [type] Required.
  GetDirectoryObjectResult({
    required this.id,
    required this.objectId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'id': id, 'objectId': objectId, 'type': type};
  }

  factory GetDirectoryObjectResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryObjectResult(
      id: map['id'] as String,
      objectId: map['objectId'] as String,
      type: map['type'] as String,
    );
  }
}
