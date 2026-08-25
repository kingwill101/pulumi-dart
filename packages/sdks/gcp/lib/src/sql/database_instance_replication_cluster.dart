// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DatabaseInstanceReplicationCluster {
  /// Read-only field that indicates whether the replica is a DR replica.
  final pulumi.Input<bool?>? drReplica;
  /// If the instance is a primary instance, then this field identifies the disaster recovery (DR) replica. The standard format of this field is "your-project:your-instance". You can also set this field to "your-instance", but cloud SQL backend will convert it to the aforementioned standard format.
  final pulumi.Input<String?>? failoverDrReplicaName;
  /// Read-only field which if set, indicates this instance has a private service access (PSA) DNS endpoint that is pointing to the primary instance of the cluster. If this instance is the primary, then the DNS endpoint points to this instance. After a switchover or replica failover operation, this DNS endpoint points to the promoted instance. This is a read-only field, returned to the user as information. This field can exist even if a standalone instance doesn't have a DR replica yet or the DR replica is deleted.
  final pulumi.Input<String?>? psaWriteEndpoint;

  /// Creates a new [DatabaseInstanceReplicationCluster].
  /// [drReplica] Read-only field that indicates whether the replica is a DR replica.
  /// [failoverDrReplicaName] If the instance is a primary instance, then this field identifies the disaster recovery (DR) replica. The standard format of this field is "your-project:your-instance". You can also set this field to "your-instance", but cloud SQL backend will convert it to the aforementioned standard format.
  /// [psaWriteEndpoint] Read-only field which if set, indicates this instance has a private service access (PSA) DNS endpoint that is pointing to the primary instance of the cluster. If this instance is the primary, then the DNS endpoint points to this instance. After a switchover or replica failover operation, this DNS endpoint points to the promoted instance. This is a read-only field, returned to the user as information. This field can exist even if a standalone instance doesn't have a DR replica yet or the DR replica is deleted.
  const DatabaseInstanceReplicationCluster({
    this.drReplica,
    this.failoverDrReplicaName,
    this.psaWriteEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'drReplica': ?drReplica,
      'failoverDrReplicaName': ?failoverDrReplicaName,
      'psaWriteEndpoint': ?psaWriteEndpoint,
    };
  }

  factory DatabaseInstanceReplicationCluster.fromMap(Map<String, dynamic> map) {
    return DatabaseInstanceReplicationCluster(
      drReplica: (() { final guardedValue = map['drReplica']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      failoverDrReplicaName: (() { final guardedValue = map['failoverDrReplicaName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      psaWriteEndpoint: (() { final guardedValue = map['psaWriteEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
