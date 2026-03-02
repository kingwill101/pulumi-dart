// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getWebAppRelayServiceConnection.
class GetWebAppRelayServiceConnectionResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  final String? biztalkUri;
  final String? entityConnectionString;
  final String? entityName;
  final String? hostname;
  /// Resource Id.
  final String id;
  /// Kind of resource.
  final String? kind;
  /// Resource Name.
  final String name;
  final int? port;
  final String? resourceConnectionString;
  final String? resourceType;
  /// Resource type.
  final String type;

  /// Creates a new [GetWebAppRelayServiceConnectionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [biztalkUri] Optional.
  /// [entityConnectionString] Optional.
  /// [entityName] Optional.
  /// [hostname] Optional.
  /// [id] Resource Id.
  /// [kind] Kind of resource.
  /// [name] Resource Name.
  /// [port] Optional.
  /// [resourceConnectionString] Optional.
  /// [resourceType] Optional.
  /// [type] Resource type.
  GetWebAppRelayServiceConnectionResult({
    required this.azureApiVersion,
    this.biztalkUri,
    this.entityConnectionString,
    this.entityName,
    this.hostname,
    required this.id,
    this.kind,
    required this.name,
    this.port,
    this.resourceConnectionString,
    this.resourceType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'biztalkUri': ?biztalkUri,
      'entityConnectionString': ?entityConnectionString,
      'entityName': ?entityName,
      'hostname': ?hostname,
      'id': id,
      'kind': ?kind,
      'name': name,
      'port': ?port,
      'resourceConnectionString': ?resourceConnectionString,
      'resourceType': ?resourceType,
      'type': type,
    };
  }

  factory GetWebAppRelayServiceConnectionResult.fromMap(Map<String, dynamic> map) {
    return GetWebAppRelayServiceConnectionResult(
      azureApiVersion: map['azureApiVersion'] as String,
      biztalkUri: map['biztalkUri'] == null ? null : map['biztalkUri']! as String,
      entityConnectionString: map['entityConnectionString'] == null ? null : map['entityConnectionString']! as String,
      entityName: map['entityName'] == null ? null : map['entityName']! as String,
      hostname: map['hostname'] == null ? null : map['hostname']! as String,
      id: map['id'] as String,
      kind: map['kind'] == null ? null : map['kind']! as String,
      name: map['name'] as String,
      port: map['port'] == null ? null : map['port']! as int,
      resourceConnectionString: map['resourceConnectionString'] == null ? null : map['resourceConnectionString']! as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType']! as String,
      type: map['type'] as String,
    );
  }
}

