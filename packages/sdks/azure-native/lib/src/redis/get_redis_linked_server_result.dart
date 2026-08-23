// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRedisLinkedServer.
class GetRedisLinkedServerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Fully qualified resourceId of the linked redis cache.
  final String linkedRedisCacheId;
  /// Location of the linked redis cache.
  final String linkedRedisCacheLocation;
  /// Resource name.
  final String name;
  /// Terminal state of the link between primary and secondary redis cache.
  final String provisioningState;
  /// Role of the linked server.
  final String serverRole;
  /// Resource type.
  final String type;

  /// Creates a new [GetRedisLinkedServerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [linkedRedisCacheId] Fully qualified resourceId of the linked redis cache.
  /// [linkedRedisCacheLocation] Location of the linked redis cache.
  /// [name] Resource name.
  /// [provisioningState] Terminal state of the link between primary and secondary redis cache.
  /// [serverRole] Role of the linked server.
  /// [type] Resource type.
  const GetRedisLinkedServerResult({
    required this.azureApiVersion,
    required this.id,
    required this.linkedRedisCacheId,
    required this.linkedRedisCacheLocation,
    required this.name,
    required this.provisioningState,
    required this.serverRole,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'linkedRedisCacheId': linkedRedisCacheId,
      'linkedRedisCacheLocation': linkedRedisCacheLocation,
      'name': name,
      'provisioningState': provisioningState,
      'serverRole': serverRole,
      'type': type,
    };
  }

  factory GetRedisLinkedServerResult.fromMap(Map<String, dynamic> map) {
    return GetRedisLinkedServerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      linkedRedisCacheId: map['linkedRedisCacheId'] as String,
      linkedRedisCacheLocation: map['linkedRedisCacheLocation'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      serverRole: map['serverRole'] as String,
      type: map['type'] as String,
    );
  }
}
