// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getRedisLinkedServer.
class GetRedisLinkedServerResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Fully qualified resourceId of the linked redis cache.
  final String? linkedRedisCacheId;
  /// Location of the linked redis cache.
  final String? linkedRedisCacheLocation;
  /// Resource name.
  final String? name;
  /// Terminal state of the link between primary and secondary redis cache.
  final String? provisioningState;
  /// Role of the linked server.
  final String? serverRole;
  /// Resource type.
  final String? type;

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
    this.azureApiVersion,
    this.id,
    this.linkedRedisCacheId,
    this.linkedRedisCacheLocation,
    this.name,
    this.provisioningState,
    this.serverRole,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'linkedRedisCacheId': ?linkedRedisCacheId,
      'linkedRedisCacheLocation': ?linkedRedisCacheLocation,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'serverRole': ?serverRole,
      'type': ?type,
    };
  }

  factory GetRedisLinkedServerResult.fromMap(Map<String, dynamic> map) {
    return GetRedisLinkedServerResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedRedisCacheId: (() { final guardedValue = map['linkedRedisCacheId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      linkedRedisCacheLocation: (() { final guardedValue = map['linkedRedisCacheLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serverRole: (() { final guardedValue = map['serverRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
