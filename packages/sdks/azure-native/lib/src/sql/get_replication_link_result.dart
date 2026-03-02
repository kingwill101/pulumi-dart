// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getReplicationLink.
class GetReplicationLinkResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// Whether the user is currently allowed to terminate the link.
  final bool isTerminationAllowed;
  /// Link type (GEO, NAMED, STANDBY). Update operation does not support NAMED.
  final String? linkType;
  /// Resource name.
  final String name;
  /// Resource partner database.
  final String partnerDatabase;
  /// Resource partner database Id.
  final String partnerDatabaseId;
  /// Resource partner location.
  final String partnerLocation;
  /// Partner replication role.
  final String partnerRole;
  /// Resource partner server.
  final String partnerServer;
  /// Seeding completion percentage for the link.
  final int percentComplete;
  /// Replication mode.
  final String replicationMode;
  /// Replication state (PENDING, SEEDING, CATCHUP, SUSPENDED).
  final String replicationState;
  /// Local replication role.
  final String role;
  /// Time at which the link was created.
  final String startTime;
  /// Resource type.
  final String type;

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
  GetReplicationLinkResult({
    required this.azureApiVersion,
    required this.id,
    required this.isTerminationAllowed,
    this.linkType,
    required this.name,
    required this.partnerDatabase,
    required this.partnerDatabaseId,
    required this.partnerLocation,
    required this.partnerRole,
    required this.partnerServer,
    required this.percentComplete,
    required this.replicationMode,
    required this.replicationState,
    required this.role,
    required this.startTime,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'isTerminationAllowed': isTerminationAllowed,
      'linkType': ?linkType,
      'name': name,
      'partnerDatabase': partnerDatabase,
      'partnerDatabaseId': partnerDatabaseId,
      'partnerLocation': partnerLocation,
      'partnerRole': partnerRole,
      'partnerServer': partnerServer,
      'percentComplete': percentComplete,
      'replicationMode': replicationMode,
      'replicationState': replicationState,
      'role': role,
      'startTime': startTime,
      'type': type,
    };
  }

  factory GetReplicationLinkResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationLinkResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      isTerminationAllowed: map['isTerminationAllowed'] as bool,
      linkType: map['linkType'] == null ? null : map['linkType']! as String,
      name: map['name'] as String,
      partnerDatabase: map['partnerDatabase'] as String,
      partnerDatabaseId: map['partnerDatabaseId'] as String,
      partnerLocation: map['partnerLocation'] as String,
      partnerRole: map['partnerRole'] as String,
      partnerServer: map['partnerServer'] as String,
      percentComplete: map['percentComplete'] as int,
      replicationMode: map['replicationMode'] as String,
      replicationState: map['replicationState'] as String,
      role: map['role'] as String,
      startTime: map['startTime'] as String,
      type: map['type'] as String,
    );
  }
}

