// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstanceClone {
  /// The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final pulumi.Input<String> allocatedIpRange;
  /// (SQL Server only, use with point_in_time) clone only the specified databases from the source instance. Clone all databases if empty.
  final pulumi.Input<List<String>> databaseNames;
  /// The timestamp of the point in time that should be restored.
  final pulumi.Input<String> pointInTime;
  /// (Point-in-time recovery for PostgreSQL only) Clone to an instance in the specified zone. If no zone is specified, clone to the same zone as the source instance.
  final pulumi.Input<String> preferredZone;
  /// The timestamp of when the source instance was deleted for a clone from a deleted instance.
  final pulumi.Input<String> sourceInstanceDeletionTime;
  /// The name of the instance from which the point in time should be restored.
  final pulumi.Input<String> sourceInstanceName;

  /// Creates a new [GetDatabaseInstancesInstanceClone].
  /// [allocatedIpRange] The name of the allocated ip range for the private ip CloudSQL instance. For example: "google-managed-services-default". If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  /// [databaseNames] (SQL Server only, use with point_in_time) clone only the specified databases from the source instance. Clone all databases if empty.
  /// [pointInTime] The timestamp of the point in time that should be restored.
  /// [preferredZone] (Point-in-time recovery for PostgreSQL only) Clone to an instance in the specified zone. If no zone is specified, clone to the same zone as the source instance.
  /// [sourceInstanceDeletionTime] The timestamp of when the source instance was deleted for a clone from a deleted instance.
  /// [sourceInstanceName] The name of the instance from which the point in time should be restored.
  const GetDatabaseInstancesInstanceClone({
    required this.allocatedIpRange,
    required this.databaseNames,
    required this.pointInTime,
    required this.preferredZone,
    required this.sourceInstanceDeletionTime,
    required this.sourceInstanceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': allocatedIpRange,
      'databaseNames': databaseNames,
      'pointInTime': pointInTime,
      'preferredZone': preferredZone,
      'sourceInstanceDeletionTime': sourceInstanceDeletionTime,
      'sourceInstanceName': sourceInstanceName,
    };
  }

  factory GetDatabaseInstancesInstanceClone.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceClone(
      allocatedIpRange: pulumi.Input.fromValue(map['allocatedIpRange'] as String),
      databaseNames: pulumi.Input.fromValue((map['databaseNames'] as List).cast<String>()),
      pointInTime: pulumi.Input.fromValue(map['pointInTime'] as String),
      preferredZone: pulumi.Input.fromValue(map['preferredZone'] as String),
      sourceInstanceDeletionTime: pulumi.Input.fromValue(map['sourceInstanceDeletionTime'] as String),
      sourceInstanceName: pulumi.Input.fromValue(map['sourceInstanceName'] as String),
    );
  }
}

