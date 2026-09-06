// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_replica_location.dart';

/// GeoDR Replication properties
class GeoDataReplicationProperties {
  /// A list of regions where replicas of the namespace are maintained.
  final pulumi.Input<List<NamespaceReplicaLocation>?>? locations;
  /// The maximum acceptable lag for data replication operations from the primary replica to a quorum of secondary replicas.  When the lag exceeds the configured amount, operations on the primary replica will be failed. The allowed values are 0 and 5 minutes to 1 day.
  final pulumi.Input<int?>? maxReplicationLagDurationInSeconds;

  /// Creates a new [GeoDataReplicationProperties].
  /// [locations] A list of regions where replicas of the namespace are maintained.
  /// [maxReplicationLagDurationInSeconds] The maximum acceptable lag for data replication operations from the primary replica to a quorum of secondary replicas.  When the lag exceeds the configured amount, operations on the primary replica will be failed. The allowed values are 0 and 5 minutes to 1 day.
  const GeoDataReplicationProperties({
    this.locations,
    this.maxReplicationLagDurationInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'locations': ?pulumi.Input.mapOptionalInputValue<List<NamespaceReplicaLocation>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<NamespaceReplicaLocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maxReplicationLagDurationInSeconds': ?maxReplicationLagDurationInSeconds,
    };
  }

  factory GeoDataReplicationProperties.fromMap(Map<String, dynamic> map) {
    return GeoDataReplicationProperties(
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<NamespaceReplicaLocation>(guardedValue, (value) => NamespaceReplicaLocation.fromMap((value as Map).cast<String, dynamic>()))); })(),
      maxReplicationLagDurationInSeconds: (() { final guardedValue = map['maxReplicationLagDurationInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
