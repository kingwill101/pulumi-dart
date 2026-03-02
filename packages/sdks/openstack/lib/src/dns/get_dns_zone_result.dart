// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getDnsZone.
class GetDnsZoneResult {
  final String? allProjects;
  /// Attributes of the DNS Service scheduler.
  final Map<String, String> attributes;
  /// The time the zone was created.
  final String createdAt;
  /// See Argument Reference above.
  final String? description;
  /// See Argument Reference above.
  final String? email;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// An array of master DNS servers. When `type` is  `SECONDARY`.
  final List<String> masters;
  /// See Argument Reference above.
  final String? name;
  /// The ID of the pool hosting the zone.
  final String poolId;
  /// The project ID that owns the zone.
  final String projectId;
  /// See Argument Reference above.
  final String region;
  /// The serial number of the zone.
  final int serial;
  /// See Argument Reference above.
  final String? status;
  /// The time the zone was transferred.
  final String transferredAt;
  /// See Argument Reference above.
  final int? ttl;
  /// See Argument Reference above.
  final String? type;
  /// The time the zone was last updated.
  final String updatedAt;
  /// The version of the zone.
  final int version;

  /// Creates a new [GetDnsZoneResult].
  /// [allProjects] Optional.
  /// [attributes] Attributes of the DNS Service scheduler.
  /// [createdAt] The time the zone was created.
  /// [description] See Argument Reference above.
  /// [email] See Argument Reference above.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [masters] An array of master DNS servers. When `type` is  `SECONDARY`.
  /// [name] See Argument Reference above.
  /// [poolId] The ID of the pool hosting the zone.
  /// [projectId] The project ID that owns the zone.
  /// [region] See Argument Reference above.
  /// [serial] The serial number of the zone.
  /// [status] See Argument Reference above.
  /// [transferredAt] The time the zone was transferred.
  /// [ttl] See Argument Reference above.
  /// [type] See Argument Reference above.
  /// [updatedAt] The time the zone was last updated.
  /// [version] The version of the zone.
  GetDnsZoneResult({
    this.allProjects,
    required this.attributes,
    required this.createdAt,
    this.description,
    this.email,
    required this.id,
    required this.masters,
    this.name,
    required this.poolId,
    required this.projectId,
    required this.region,
    required this.serial,
    this.status,
    required this.transferredAt,
    this.ttl,
    this.type,
    required this.updatedAt,
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allProjects': ?allProjects,
      'attributes': attributes,
      'createdAt': createdAt,
      'description': ?description,
      'email': ?email,
      'id': id,
      'masters': masters,
      'name': ?name,
      'poolId': poolId,
      'projectId': projectId,
      'region': region,
      'serial': serial,
      'status': ?status,
      'transferredAt': transferredAt,
      'ttl': ?ttl,
      'type': ?type,
      'updatedAt': updatedAt,
      'version': version,
    };
  }

  factory GetDnsZoneResult.fromMap(Map<String, dynamic> map) {
    return GetDnsZoneResult(
      allProjects: map['allProjects'] == null ? null : map['allProjects']! as String,
      attributes: (map['attributes'] as Map).cast<String, String>(),
      createdAt: map['createdAt'] as String,
      description: map['description'] == null ? null : map['description']! as String,
      email: map['email'] == null ? null : map['email']! as String,
      id: map['id'] as String,
      masters: (map['masters'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name']! as String,
      poolId: map['poolId'] as String,
      projectId: map['projectId'] as String,
      region: map['region'] as String,
      serial: map['serial'] as int,
      status: map['status'] == null ? null : map['status']! as String,
      transferredAt: map['transferredAt'] as String,
      ttl: map['ttl'] == null ? null : map['ttl']! as int,
      type: map['type'] == null ? null : map['type']! as String,
      updatedAt: map['updatedAt'] as String,
      version: map['version'] as int,
    );
  }
}

