// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceClone {
  /// The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final pulumi.Input<String?>? allocatedIpRange;
  /// (SQL Server only, use with `pointInTime`) Clone only the specified databases from the source instance. Clone all databases if empty.
  final pulumi.Input<List<String>?>? databaseNames;
  /// The timestamp of the point in time that should be restored.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? pointInTime;
  /// (Point-in-time recovery for PostgreSQL only) Clone to an instance in the specified zone. If no zone is specified, clone to the same zone as the source instance. [clone-unavailable-instance](https://cloud.google.com/sql/docs/postgres/clone-instance#clone-unavailable-instance)
  final pulumi.Input<String?>? preferredZone;
  /// The timestamp of when the source instance was deleted for a clone from a deleted instance.
  ///
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final pulumi.Input<String?>? sourceInstanceDeletionTime;
  /// Name of the source instance which will be cloned.
  final pulumi.Input<String> sourceInstanceName;
  /// Id of source project where source instances exits, required for cross project clone scenario.
  final pulumi.Input<String?>? sourceProject;

  /// Creates a new [DatabaseInstanceClone].
  /// [allocatedIpRange] The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  /// [databaseNames] (SQL Server only, use with `pointInTime`) Clone only the specified databases from the source instance. Clone all databases if empty.
  /// [pointInTime] The timestamp of the point in time that should be restored.
  /// [preferredZone] (Point-in-time recovery for PostgreSQL only) Clone to an instance in the specified zone. If no zone is specified, clone to the same zone as the source instance. [clone-unavailable-instance](https://cloud.google.com/sql/docs/postgres/clone-instance#clone-unavailable-instance)
  /// [sourceInstanceDeletionTime] The timestamp of when the source instance was deleted for a clone from a deleted instance.
  /// [sourceInstanceName] Name of the source instance which will be cloned.
  /// [sourceProject] Id of source project where source instances exits, required for cross project clone scenario.
  const DatabaseInstanceClone({
    this.allocatedIpRange,
    this.databaseNames,
    this.pointInTime,
    this.preferredZone,
    this.sourceInstanceDeletionTime,
    required this.sourceInstanceName,
    this.sourceProject,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': ?allocatedIpRange,
      'databaseNames': ?databaseNames,
      'pointInTime': ?pointInTime,
      'preferredZone': ?preferredZone,
      'sourceInstanceDeletionTime': ?sourceInstanceDeletionTime,
      'sourceInstanceName': sourceInstanceName,
      'sourceProject': ?sourceProject,
    };
  }

  factory DatabaseInstanceClone.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceClone(
      allocatedIpRange: (() { final guardedValue = map['allocatedIpRange']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      databaseNames: (() { final guardedValue = map['databaseNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      pointInTime: (() { final guardedValue = map['pointInTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredZone: (() { final guardedValue = map['preferredZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceInstanceDeletionTime: (() { final guardedValue = map['sourceInstanceDeletionTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceInstanceName: pulumi.Input.fromValue(map['sourceInstanceName'] as String),
      sourceProject: (() { final guardedValue = map['sourceProject']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
