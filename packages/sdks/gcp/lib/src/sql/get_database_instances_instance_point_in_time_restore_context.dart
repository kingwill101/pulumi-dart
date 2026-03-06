// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDatabaseInstancesInstancePointInTimeRestoreContext {
  /// The name of the allocated IP range for the internal IP Cloud SQL instance. For example: "google-managed-services-default". If you set this, then Cloud SQL creates the IP address for the cloned instance in the allocated range. This range must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035) standards. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  final pulumi.Input<String> allocatedIpRange;
  /// The Google Cloud Backup and Disaster Recovery Datasource URI. For example: "projects/my-project/locations/us-central1/datasources/my-datasource".
  final pulumi.Input<String> datasource;
  /// The date and time to which you want to restore the instance.
  final pulumi.Input<String> pointInTime;
  /// Point-in-time recovery of an instance to the specified zone. If no zone is specified, then clone to the same primary zone as the source instance.
  final pulumi.Input<String> preferredZone;
  /// The name of the target instance to restore to.
  final pulumi.Input<String> targetInstance;

  /// Creates a new [GetDatabaseInstancesInstancePointInTimeRestoreContext].
  /// [allocatedIpRange] The name of the allocated IP range for the internal IP Cloud SQL instance. For example: "google-managed-services-default". If you set this, then Cloud SQL creates the IP address for the cloned instance in the allocated range. This range must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035) standards. Specifically, the name must be 1-63 characters long and match the regular expression a-z?.
  /// [datasource] The Google Cloud Backup and Disaster Recovery Datasource URI. For example: "projects/my-project/locations/us-central1/datasources/my-datasource".
  /// [pointInTime] The date and time to which you want to restore the instance.
  /// [preferredZone] Point-in-time recovery of an instance to the specified zone. If no zone is specified, then clone to the same primary zone as the source instance.
  /// [targetInstance] The name of the target instance to restore to.
  const GetDatabaseInstancesInstancePointInTimeRestoreContext({
    required this.allocatedIpRange,
    required this.datasource,
    required this.pointInTime,
    required this.preferredZone,
    required this.targetInstance,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatedIpRange': allocatedIpRange,
      'datasource': datasource,
      'pointInTime': pointInTime,
      'preferredZone': preferredZone,
      'targetInstance': targetInstance,
    };
  }

  factory GetDatabaseInstancesInstancePointInTimeRestoreContext.fromMap(Map<String, dynamic> map) {
    return GetDatabaseInstancesInstancePointInTimeRestoreContext(
      allocatedIpRange: pulumi.Input.fromValue(map['allocatedIpRange'] as String),
      datasource: pulumi.Input.fromValue(map['datasource'] as String),
      pointInTime: pulumi.Input.fromValue(map['pointInTime'] as String),
      preferredZone: pulumi.Input.fromValue(map['preferredZone'] as String),
      targetInstance: pulumi.Input.fromValue(map['targetInstance'] as String),
    );
  }
}

