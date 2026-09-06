// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDataSource.
class GetDataSourceResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The ETag of the data source.
  final String? etag;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The kind of the DataSource.
  final String? kind;
  /// The name of the resource
  final String? name;
  /// The data source properties in raw json format, each kind of data source have it's own schema.
  final dynamic properties;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetDataSourceResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [etag] The ETag of the data source.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [kind] The kind of the DataSource.
  /// [name] The name of the resource
  /// [properties] The data source properties in raw json format, each kind of data source have it's own schema.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetDataSourceResult({
    this.azureApiVersion,
    this.etag,
    this.id,
    this.kind,
    this.name,
    this.properties,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'etag': ?etag,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'properties': ?properties,
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetDataSourceResult.fromMap(Map<String, dynamic> map) {
    return GetDataSourceResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return guardedValue; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
