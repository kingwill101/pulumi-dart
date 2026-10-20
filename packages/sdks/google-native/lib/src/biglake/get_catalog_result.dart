// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getCatalog.
class GetCatalogResult {
  /// The creation time of the catalog.
  final String? createTime;
  /// The deletion time of the catalog. Only set after the catalog is deleted.
  final String? deleteTime;
  /// The time when this catalog is considered expired. Only set after the catalog is deleted.
  final String? expireTime;
  /// The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  final String? name;
  /// The last modification time of the catalog.
  final String? updateTime;

  /// Creates a new [GetCatalogResult].
  /// [createTime] The creation time of the catalog.
  /// [deleteTime] The deletion time of the catalog. Only set after the catalog is deleted.
  /// [expireTime] The time when this catalog is considered expired. Only set after the catalog is deleted.
  /// [name] The resource name. Format: projects/{project_id_or_number}/locations/{location_id}/catalogs/{catalog_id}
  /// [updateTime] The last modification time of the catalog.
  const GetCatalogResult({
    this.createTime,
    this.deleteTime,
    this.expireTime,
    this.name,
    this.updateTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'deleteTime': ?deleteTime,
      'expireTime': ?expireTime,
      'name': ?name,
      'updateTime': ?updateTime,
    };
  }

  factory GetCatalogResult.fromMap(Map<String, dynamic> map) {
    return GetCatalogResult(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deleteTime: (() { final guardedValue = map['deleteTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expireTime: (() { final guardedValue = map['expireTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      updateTime: (() { final guardedValue = map['updateTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
