// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReplicationLink.
class GetReplicationLinkResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Resource ID.
  final String? id;
  /// Whether the user is currently allowed to terminate the link.
  final bool? isTerminationAllowed;
  /// Link type (GEO, NAMED, STANDBY). Update operation does not support NAMED.
  final String? linkType;
  /// Resource name.
  final String? name;
  /// Resource partner database.
  final String? partnerDatabase;
  /// Resource partner database Id.
  final String? partnerDatabaseId;
  /// Resource partner location.
  final String? partnerLocation;
  /// Partner replication role.
  final String? partnerRole;
  /// Resource partner server.
  final String? partnerServer;
  /// Seeding completion percentage for the link.
  final int? percentComplete;
  /// Replication mode.
  final String? replicationMode;
  /// Replication state (PENDING, SEEDING, CATCHUP, SUSPENDED).
  final String? replicationState;
  /// Local replication role.
  final String? role;
  /// Time at which the link was created.
  final String? startTime;
  /// Resource type.
  final String? type;

  /// Creates a new [GetReplicationLinkResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [isTerminationAllowed] Whether the user is currently allowed to terminate the link.
  /// [linkType] Link type (GEO, NAMED, STANDBY). Update operation does not support NAMED.
  /// [name] Resource name.
  /// [partnerDatabase] Resource partner database.
  /// [partnerDatabaseId] Resource partner database Id.
  /// [partnerLocation] Resource partner location.
  /// [partnerRole] Partner replication role.
  /// [partnerServer] Resource partner server.
  /// [percentComplete] Seeding completion percentage for the link.
  /// [replicationMode] Replication mode.
  /// [replicationState] Replication state (PENDING, SEEDING, CATCHUP, SUSPENDED).
  /// [role] Local replication role.
  /// [startTime] Time at which the link was created.
  /// [type] Resource type.
  const GetReplicationLinkResult({
    this.azureApiVersion,
    this.id,
    this.isTerminationAllowed,
    this.linkType,
    this.name,
    this.partnerDatabase,
    this.partnerDatabaseId,
    this.partnerLocation,
    this.partnerRole,
    this.partnerServer,
    this.percentComplete,
    this.replicationMode,
    this.replicationState,
    this.role,
    this.startTime,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'isTerminationAllowed': ?isTerminationAllowed,
      'linkType': ?linkType,
      'name': ?name,
      'partnerDatabase': ?partnerDatabase,
      'partnerDatabaseId': ?partnerDatabaseId,
      'partnerLocation': ?partnerLocation,
      'partnerRole': ?partnerRole,
      'partnerServer': ?partnerServer,
      'percentComplete': ?percentComplete,
      'replicationMode': ?replicationMode,
      'replicationState': ?replicationState,
      'role': ?role,
      'startTime': ?startTime,
      'type': ?type,
    };
  }

  factory GetReplicationLinkResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationLinkResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      isTerminationAllowed: (() { final guardedValue = map['isTerminationAllowed']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      linkType: (() { final guardedValue = map['linkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerDatabase: (() { final guardedValue = map['partnerDatabase']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerDatabaseId: (() { final guardedValue = map['partnerDatabaseId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerLocation: (() { final guardedValue = map['partnerLocation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerRole: (() { final guardedValue = map['partnerRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerServer: (() { final guardedValue = map['partnerServer']; if (guardedValue == null) return null; return guardedValue as String; })(),
      percentComplete: (() { final guardedValue = map['percentComplete']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      replicationMode: (() { final guardedValue = map['replicationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationState: (() { final guardedValue = map['replicationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      role: (() { final guardedValue = map['role']; if (guardedValue == null) return null; return guardedValue as String; })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
