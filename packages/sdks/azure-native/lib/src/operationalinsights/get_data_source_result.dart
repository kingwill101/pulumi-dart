// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataSource.
class GetDataSourceResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The ETag of the data source.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The kind of the DataSource.
  final String kind;
  /// The name of the resource
  final String name;
  /// The data source properties in raw json format, each kind of data source have it's own schema.
  final dynamic properties;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetDataSourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The ETag of the data source.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] The kind of the DataSource.
  /// [name] The name of the resource
  /// [properties] The data source properties in raw json format, each kind of data source have it's own schema.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetDataSourceResult({
    required this.azureApiVersion,
    this.etag,
    required this.id,
    required this.kind,
    required this.name,
    required this.properties,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'etag': ?etag,
      'id': id,
      'kind': kind,
      'name': name,
      'properties': properties,
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetDataSourceResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourceResult(
      azureApiVersion: map['azureApiVersion'] as String,
      etag: map['etag'] == null ? null : map['etag']! as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      properties: map['properties'],
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

