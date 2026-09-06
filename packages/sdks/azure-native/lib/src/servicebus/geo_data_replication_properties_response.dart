// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_replica_location_response.dart';

/// GeoDR Replication properties
class GeoDataReplicationPropertiesResponse {
  /// A list of regions where replicas of the namespace are maintained.
  final pulumi.Input<List<NamespaceReplicaLocationResponse>?>? locations;
  /// The maximum acceptable lag for data replication operations from the primary replica to a quorum of secondary replicas.  When the lag exceeds the configured amount, operations on the primary replica will be failed. The allowed values are 0 and 5 minutes to 1 day.
  final pulumi.Input<int?>? maxReplicationLagDurationInSeconds;

  /// Creates a new [GeoDataReplicationPropertiesResponse].
  /// [locations] A list of regions where replicas of the namespace are maintained.
  /// [maxReplicationLagDurationInSeconds] The maximum acceptable lag for data replication operations from the primary replica to a quorum of secondary replicas.  When the lag exceeds the configured amount, operations on the primary replica will be failed. The allowed values are 0 and 5 minutes to 1 day.
  const GeoDataReplicationPropertiesResponse({
    this.locations,
    this.maxReplicationLagDurationInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?pulumi.Input.mapOptionalInputValue<List<NamespaceReplicaLocationResponse>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<NamespaceReplicaLocationResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxReplicationLagDurationInSeconds': ?maxReplicationLagDurationInSeconds,
    };
  }

  factory GeoDataReplicationPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return GeoDataReplicationPropertiesResponse(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceReplicaLocationResponse>(guardedValue, (value) => NamespaceReplicaLocationResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxReplicationLagDurationInSeconds: (() { final guardedValue = map['maxReplicationLagDurationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
