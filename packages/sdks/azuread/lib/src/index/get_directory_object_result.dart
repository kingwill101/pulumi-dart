// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDirectoryObject.
class GetDirectoryObjectResult {
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? objectId;
  final String? type;

  /// Creates a new [GetDirectoryObjectResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] Optional.
  /// [type] Optional.
  const GetDirectoryObjectResult({
    this.id,
    this.objectId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'objectId': ?objectId,
      'type': ?type,
    };
  }

  factory GetDirectoryObjectResult.fromMap(Map<String, dynamic> map) {
    return GetDirectoryObjectResult(
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
