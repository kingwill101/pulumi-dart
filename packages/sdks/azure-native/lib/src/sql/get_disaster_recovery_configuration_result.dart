// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDisasterRecoveryConfiguration.
class GetDisasterRecoveryConfigurationResult {
  /// Whether or not failover can be done automatically.
  final String? autoFailover;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// How aggressive the automatic failover should be.
  final String? failoverPolicy;
  /// Resource ID.
  final String? id;
  /// Location of the server that contains this disaster recovery configuration.
  final String? location;
  /// Logical name of the server.
  final String? logicalServerName;
  /// Resource name.
  final String? name;
  /// Logical name of the partner server.
  final String? partnerLogicalServerName;
  /// Id of the partner server.
  final String? partnerServerId;
  /// The role of the current server in the disaster recovery configuration.
  final String? role;
  /// The status of the disaster recovery configuration.
  final String? status;
  /// Resource type.
  final String? type;

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
  const GetDisasterRecoveryConfigurationResult({
    this.autoFailover,
    this.azureApiVersion,
    this.failoverPolicy,
    this.id,
    this.location,
    this.logicalServerName,
    this.name,
    this.partnerLogicalServerName,
    this.partnerServerId,
    this.role,
    this.status,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoFailover': ?autoFailover,
      'azureApiVersion': ?azureApiVersion,
      'failoverPolicy': ?failoverPolicy,
      'id': ?id,
      'location': ?location,
      'logicalServerName': ?logicalServerName,
      'name': ?name,
      'partnerLogicalServerName': ?partnerLogicalServerName,
      'partnerServerId': ?partnerServerId,
      'role': ?role,
      'status': ?status,
      'type': ?type,
    };
  }

  factory GetDisasterRecoveryConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetDisasterRecoveryConfigurationResult(
      autoFailover: (() { final guardedValue = map['autoFailover']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failoverPolicy: (() { final guardedValue = map['failoverPolicy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logicalServerName: (() { final guardedValue = map['logicalServerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerLogicalServerName: (() { final guardedValue = map['partnerLogicalServerName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerServerId: (() { final guardedValue = map['partnerServerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
