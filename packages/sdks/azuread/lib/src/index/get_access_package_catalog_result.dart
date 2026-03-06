// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAccessPackageCatalog.
class GetAccessPackageCatalogResult {
  /// The description of the access package catalog.
  final String description;
  final String displayName;
  /// Whether the access packages in this catalog can be requested by users outside the tenant.
  final bool externallyVisible;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String objectId;
  /// Whether the access packages in this catalog are available for management.
  final bool published;

  /// Creates a new [GetAccessPackageCatalogResult].
  /// [description] The description of the access package catalog.
  /// [displayName] Required.
  /// [externallyVisible] Whether the access packages in this catalog can be requested by users outside the tenant.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [objectId] Required.
  /// [published] Whether the access packages in this catalog are available for management.
  const GetAccessPackageCatalogResult({
    required this.description,
    required this.displayName,
    required this.externallyVisible,
    required this.id,
    required this.objectId,
    required this.published,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'displayName': displayName,
      'externallyVisible': externallyVisible,
      'id': id,
      'objectId': objectId,
      'published': published,
    };
  }

  factory GetAccessPackageCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetAccessPackageCatalogResult(
      description: map['description'] as String,
      displayName: map['displayName'] as String,
      externallyVisible: map['externallyVisible'] as bool,
      id: map['id'] as String,
      objectId: map['objectId'] as String,
      published: map['published'] as bool,
    );
  }
}

