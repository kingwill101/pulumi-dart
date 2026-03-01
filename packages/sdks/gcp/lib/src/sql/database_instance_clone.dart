// ignore_for_file: unused_element, unnecessary_cast


class DatabaseInstanceClone {
  /// The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final String? allocatedIpRange;
  /// (SQL Server only, use with `point_in_time`) Clone only the specified databases from the source instance. Clone all databases if empty.
  final List<String>? databaseNames;
  /// The timestamp of the point in time that should be restored.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? pointInTime;
  /// (Point-in-time recovery for PostgreSQL only) Clone to an instance in the specified zone. If no zone is specified, clone to the same zone as the source instance. [clone-unavailable-instance](https://cloud.google.com/sql/docs/postgres/clone-instance#clone-unavailable-instance)
  final String? preferredZone;
  /// The timestamp of when the source instance was deleted for a clone from a deleted instance.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String? sourceInstanceDeletionTime;
  /// Name of the source instance which will be cloned.
  final String sourceInstanceName;

  /// Creates a new [DatabaseInstanceClone].
  /// [allocatedIpRange] The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  /// [databaseNames] (SQL Server only, use with `point_in_time`) Clone only the specified databases from the source instance. Clone all databases if empty.
  /// [pointInTime] The timestamp of the point in time that should be restored.
  /// [preferredZone] (Point-in-time recovery for PostgreSQL only) Clone to an instance in the specified zone. If no zone is specified, clone to the same zone as the source instance. [clone-unavailable-instance](https://cloud.google.com/sql/docs/postgres/clone-instance#clone-unavailable-instance)
  /// [sourceInstanceDeletionTime] The timestamp of when the source instance was deleted for a clone from a deleted instance.
  /// [sourceInstanceName] Name of the source instance which will be cloned.
  DatabaseInstanceClone({
    this.allocatedIpRange,
    this.databaseNames,
    this.pointInTime,
    this.preferredZone,
    this.sourceInstanceDeletionTime,
    required this.sourceInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': ?allocatedIpRange,
      'databaseNames': ?databaseNames,
      'pointInTime': ?pointInTime,
      'preferredZone': ?preferredZone,
      'sourceInstanceDeletionTime': ?sourceInstanceDeletionTime,
      'sourceInstanceName': sourceInstanceName,
    };
  }

  factory DatabaseInstanceClone.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceClone(
      allocatedIpRange: map['allocatedIpRange'] == null ? null : map['allocatedIpRange'] as String,
      databaseNames: map['databaseNames'] == null ? null : (map['databaseNames'] as List).cast<String>(),
      pointInTime: map['pointInTime'] == null ? null : map['pointInTime'] as String,
      preferredZone: map['preferredZone'] == null ? null : map['preferredZone'] as String,
      sourceInstanceDeletionTime: map['sourceInstanceDeletionTime'] == null ? null : map['sourceInstanceDeletionTime'] as String,
      sourceInstanceName: map['sourceInstanceName'] as String,
    );
  }
}

