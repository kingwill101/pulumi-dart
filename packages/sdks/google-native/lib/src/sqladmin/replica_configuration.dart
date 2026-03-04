// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_sql_replica_configuration.dart';

/// Read-replica configuration for connecting to the primary instance.
class ReplicaConfiguration {
  /// Optional. Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQL Server cross region replica that supports replica(s) under it.
  final pulumi.Input<bool>? cascadableReplica;

  /// Specifies if the replica is the failover target. If the field is set to `true`, the replica will be designated as a failover replica. In case the primary instance fails, the replica instance will be promoted as the new primary instance. Only one replica can be specified as failover target, and the replica has to be in different zone with the primary instance.
  final pulumi.Input<bool>? failoverTarget;

  /// This is always `sql#replicaConfiguration`.
  final pulumi.Input<String>? kind;

  /// MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.
  final pulumi.Input<MySqlReplicaConfiguration>? mysqlReplicaConfiguration;

  /// Creates a new [ReplicaConfiguration].
  /// [cascadableReplica] Optional. Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQL Server cross region replica that supports replica(s) under it.
  /// [failoverTarget] Specifies if the replica is the failover target. If the field is set to `true`, the replica will be designated as a failover replica. In case the primary instance fails, the replica instance will be promoted as the new primary instance. Only one replica can be specified as failover target, and the replica has to be in different zone with the primary instance.
  /// [kind] This is always `sql#replicaConfiguration`.
  /// [mysqlReplicaConfiguration] MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.
  ReplicaConfiguration({
    this.cascadableReplica,
    this.failoverTarget,
    this.kind,
    this.mysqlReplicaConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cascadableReplica': ?cascadableReplica,
      'failoverTarget': ?failoverTarget,
      'kind': ?kind,
      'mysqlReplicaConfiguration':
          ?pulumi.Input.mapOptionalInputValue<
            MySqlReplicaConfiguration,
            Map<String, dynamic>
          >(mysqlReplicaConfiguration, (value) => value.toMap()),
    };
  }

  factory ReplicaConfiguration.fromMap(Map<String, dynamic> map) {
    return ReplicaConfiguration(
      cascadableReplica: (() {
        final guardedValue = map['cascadableReplica'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      failoverTarget: (() {
        final guardedValue = map['failoverTarget'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      kind: (() {
        final guardedValue = map['kind'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mysqlReplicaConfiguration: (() {
        final guardedValue = map['mysqlReplicaConfiguration'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MySqlReplicaConfiguration.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
