// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPackageCatalog.
class GetAccessPackageCatalogResult {
  /// The description of the access package catalog.
  final String? description;
  final String? displayName;
  /// Whether the access packages in this catalog can be requested by users outside the tenant.
  final bool? externallyVisible;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? objectId;
  /// Whether the access packages in this catalog are available for management.
  final bool? published;

  /// Creates a new [GetAccessPackageCatalogResult].
  /// [description] The description of the access package catalog.
  /// [displayName] Optional.
  /// [externallyVisible] Whether the access packages in this catalog can be requested by users outside the tenant.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] Optional.
  /// [published] Whether the access packages in this catalog are available for management.
  const GetAccessPackageCatalogResult({
    this.description,
    this.displayName,
    this.externallyVisible,
    this.id,
    this.objectId,
    this.published,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'externallyVisible': ?externallyVisible,
      'id': ?id,
      'objectId': ?objectId,
      'published': ?published,
    };
  }

  factory GetAccessPackageCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPackageCatalogResult(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      externallyVisible: (() { final guardedValue = map['externallyVisible']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      objectId: (() { final guardedValue = map['objectId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      published: (() { final guardedValue = map['published']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
