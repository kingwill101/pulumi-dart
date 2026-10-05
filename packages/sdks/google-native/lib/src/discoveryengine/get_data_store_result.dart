// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataStore.
class GetDataStoreResult {
  /// Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
  final String? contentConfig;
  /// Timestamp the DataStore was created at.
  final String? createTime;
  /// The id of the default Schema asscociated to this data store.
  final String? defaultSchemaId;
  /// The data store display name. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  final String? displayName;
  /// Immutable. The industry vertical that the data store registers.
  final String? industryVertical;
  /// Immutable. The full resource name of the data store. Format: `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  final String? name;
  /// The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other solutions cannot be enrolled.
  final List<String>? solutionTypes;

  /// Creates a new [GetDataStoreResult].
  /// [contentConfig] Immutable. The content config of the data store. If this field is unset, the server behavior defaults to ContentConfig.NO_CONTENT.
  /// [createTime] Timestamp the DataStore was created at.
  /// [defaultSchemaId] The id of the default Schema asscociated to this data store.
  /// [displayName] The data store display name. This field must be a UTF-8 encoded string with a length limit of 128 characters. Otherwise, an INVALID_ARGUMENT error is returned.
  /// [industryVertical] Immutable. The industry vertical that the data store registers.
  /// [name] Immutable. The full resource name of the data store. Format: `projects/{project}/locations/{location}/collections/{collection_id}/dataStores/{data_store_id}`. This field must be a UTF-8 encoded string with a length limit of 1024 characters.
  /// [solutionTypes] The solutions that the data store enrolls. Available solutions for each industry_vertical: * `MEDIA`: `SOLUTION_TYPE_RECOMMENDATION` and `SOLUTION_TYPE_SEARCH`. * `SITE_SEARCH`: `SOLUTION_TYPE_SEARCH` is automatically enrolled. Other solutions cannot be enrolled.
  const GetDataStoreResult({
    this.contentConfig,
    this.createTime,
    this.defaultSchemaId,
    this.displayName,
    this.industryVertical,
    this.name,
    this.solutionTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'contentConfig': ?contentConfig,
      'createTime': ?createTime,
      'defaultSchemaId': ?defaultSchemaId,
      'displayName': ?displayName,
      'industryVertical': ?industryVertical,
      'name': ?name,
      'solutionTypes': ?solutionTypes,
    };
  }

  factory GetDataStoreResult.fromMap(Map<String, dynamic> map) {
    return GetDataStoreResult(
      contentConfig: (() { final guardedValue = map['contentConfig']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      defaultSchemaId: (() { final guardedValue = map['defaultSchemaId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      industryVertical: (() { final guardedValue = map['industryVertical']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      solutionTypes: (() { final guardedValue = map['solutionTypes']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
    );
  }
}
