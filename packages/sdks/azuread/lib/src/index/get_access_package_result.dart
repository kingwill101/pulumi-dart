// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPackage.
class GetAccessPackageResult {
  final String? catalogId;
  /// The description of the access package.
  final String? description;
  final String? displayName;
  /// Whether the access package is hidden from the requestor.
  final bool? hidden;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? objectId;

  /// Creates a new [GetAccessPackageResult].
  /// [catalogId] Optional.
  /// [description] The description of the access package.
  /// [displayName] Optional.
  /// [hidden] Whether the access package is hidden from the requestor.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] Optional.
  const GetAccessPackageResult({
    this.catalogId,
    this.description,
    this.displayName,
    this.hidden,
    this.id,
    this.objectId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'description': ?description,
      'displayName': ?displayName,
      'hidden': ?hidden,
      'id': ?id,
      'objectId': ?objectId,
    };
  }

  factory GetAccessPackageResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPackageResult(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hidden: (() { final guardedValue = map['hidden']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
