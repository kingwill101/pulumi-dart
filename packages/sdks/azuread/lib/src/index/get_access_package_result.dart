// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPackage.
class GetAccessPackageResult {
  final String? catalogId;
  /// The description of the access package.
  final String description;
  final String displayName;
  /// Whether the access package is hidden from the requestor.
  final bool hidden;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String objectId;

  /// Creates a new [GetAccessPackageResult].
  /// [catalogId] Optional.
  /// [description] The description of the access package.
  /// [displayName] Required.
  /// [hidden] Whether the access package is hidden from the requestor.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] Required.
  GetAccessPackageResult({
    this.catalogId,
    required this.description,
    required this.displayName,
    required this.hidden,
    required this.id,
    required this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'description': description,
      'displayName': displayName,
      'hidden': hidden,
      'id': id,
      'objectId': objectId,
    };
  }

  factory GetAccessPackageResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPackageResult(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      hidden: map['hidden'] as bool,
      id: map['id'] as String,
      objectId: map['objectId'] as String,
    );
  }
}

