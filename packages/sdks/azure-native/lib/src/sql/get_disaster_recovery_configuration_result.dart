// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getDisasterRecoveryConfiguration.
class GetDisasterRecoveryConfigurationResult {
  /// Whether or not failover can be done automatically.
  final String autoFailover;

  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// How aggressive the automatic failover should be.
  final String failoverPolicy;

  /// Resource ID.
  final String id;

  /// Location of the server that contains this disaster recovery configuration.
  final String location;

  /// Logical name of the server.
  final String logicalServerName;

  /// Resource name.
  final String name;

  /// Logical name of the partner server.
  final String partnerLogicalServerName;

  /// Id of the partner server.
  final String partnerServerId;

  /// The role of the current server in the disaster recovery configuration.
  final String role;

  /// The status of the disaster recovery configuration.
  final String status;

  /// Resource type.
  final String type;

  /// Creates a new [GetDisasterRecoveryConfigurationResult].
  /// [autoFailover] Whether or not failover can be done automatically.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [failoverPolicy] How aggressive the automatic failover should be.
  /// [id] Resource ID.
  /// [location] Location of the server that contains this disaster recovery configuration.
  /// [logicalServerName] Logical name of the server.
  /// [name] Resource name.
  /// [partnerLogicalServerName] Logical name of the partner server.
  /// [partnerServerId] Id of the partner server.
  /// [role] The role of the current server in the disaster recovery configuration.
  /// [status] The status of the disaster recovery configuration.
  /// [type] Resource type.
  GetDisasterRecoveryConfigurationResult({
    required this.autoFailover,
    required this.azureApiVersion,
    required this.failoverPolicy,
    required this.id,
    required this.location,
    required this.logicalServerName,
    required this.name,
    required this.partnerLogicalServerName,
    required this.partnerServerId,
    required this.role,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoFailover': autoFailover,
      'azureApiVersion': azureApiVersion,
      'failoverPolicy': failoverPolicy,
      'id': id,
      'location': location,
      'logicalServerName': logicalServerName,
      'name': name,
      'partnerLogicalServerName': partnerLogicalServerName,
      'partnerServerId': partnerServerId,
      'role': role,
      'status': status,
      'type': type,
    };
  }

  factory GetDisasterRecoveryConfigurationResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDisasterRecoveryConfigurationResult(
      autoFailover: map['autoFailover'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      failoverPolicy: map['failoverPolicy'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      logicalServerName: map['logicalServerName'] as String,
      name: map['name'] as String,
      partnerLogicalServerName: map['partnerLogicalServerName'] as String,
      partnerServerId: map['partnerServerId'] as String,
      role: map['role'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}
