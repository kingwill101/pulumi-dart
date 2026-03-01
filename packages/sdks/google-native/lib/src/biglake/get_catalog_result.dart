// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCatalog.
class GetCatalogResult {
  /// The creation time of the catalog.
  final String createTime;
  /// The deletion time of the catalog. Only set after the catalog is deleted.
  final String deleteTime;
  /// The time when this catalog is considered expired. Only set after the catalog is deleted.
  final String expireTime;
  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  final String name;
  /// The last modification time of the catalog.
  final String updateTime;

  /// Creates a new [GetCatalogResult].
  /// [createTime] The creation time of the catalog.
  /// [deleteTime] The deletion time of the catalog. Only set after the catalog is deleted.
  /// [expireTime] The time when this catalog is considered expired. Only set after the catalog is deleted.
  /// [name] The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  /// [updateTime] The last modification time of the catalog.
  GetCatalogResult({
    required this.createTime,
    required this.deleteTime,
    required this.expireTime,
    required this.name,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'deleteTime': deleteTime,
      'expireTime': expireTime,
      'name': name,
      'updateTime': updateTime,
    };
  }

  factory GetCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogResult(
      createTime: map['createTime'] as String,
      deleteTime: map['deleteTime'] as String,
      expireTime: map['expireTime'] as String,
      name: map['name'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}

