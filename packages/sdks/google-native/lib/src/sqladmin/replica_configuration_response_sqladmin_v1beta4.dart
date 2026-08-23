// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'my_sql_replica_configuration_response_sqladmin_v1beta4.dart';

/// Read-replica configuration for connecting to the primary instance.
class ReplicaConfigurationResponseSqladminV1beta4 {
  /// Optional. Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQL Server cross region replica that supports replica(s) under it.
  final pulumi.Input<bool> cascadableReplica;
  /// Specifies if the replica is the failover target. If the field is set to `true` the replica will be designated as a failover replica. In case the primary instance fails, the replica instance will be promoted as the new primary instance. Only one replica can be specified as failover target, and the replica has to be in different zone with the primary instance.
  final pulumi.Input<bool> failoverTarget;
  /// This is always `sql#replicaConfiguration`.
  final pulumi.Input<String> kind;
  /// MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.
  final pulumi.Input<MySqlReplicaConfigurationResponseSqladminV1beta4> mysqlReplicaConfiguration;

  /// Creates a new [ReplicaConfigurationResponseSqladminV1beta4].
  /// [cascadableReplica] Optional. Specifies if a SQL Server replica is a cascadable replica. A cascadable replica is a SQL Server cross region replica that supports replica(s) under it.
  /// [failoverTarget] Specifies if the replica is the failover target. If the field is set to `true` the replica will be designated as a failover replica. In case the primary instance fails, the replica instance will be promoted as the new primary instance. Only one replica can be specified as failover target, and the replica has to be in different zone with the primary instance.
  /// [kind] This is always `sql#replicaConfiguration`.
  /// [mysqlReplicaConfiguration] MySQL specific configuration when replicating from a MySQL on-premises primary instance. Replication configuration information such as the username, password, certificates, and keys are not stored in the instance metadata. The configuration information is used only to set up the replication connection and is stored by MySQL in a file named `master.info` in the data directory.
  const ReplicaConfigurationResponseSqladminV1beta4({
    required this.cascadableReplica,
    required this.failoverTarget,
    required this.kind,
    required this.mysqlReplicaConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cascadableReplica': cascadableReplica,
      'failoverTarget': failoverTarget,
      'kind': kind,
      'mysqlReplicaConfiguration': pulumi.Input.mapInputValue<MySqlReplicaConfigurationResponseSqladminV1beta4, Map<String, dynamic>>(mysqlReplicaConfiguration, (value) => value.toMap()),
    };
  }

  factory ReplicaConfigurationResponseSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return ReplicaConfigurationResponseSqladminV1beta4(
      cascadableReplica: pulumi.Input.fromValue(map['cascadableReplica'] as bool),
      failoverTarget: pulumi.Input.fromValue(map['failoverTarget'] as bool),
      kind: pulumi.Input.fromValue(map['kind'] as String),
      mysqlReplicaConfiguration: pulumi.Input.fromValue(MySqlReplicaConfigurationResponseSqladminV1beta4.fromMap((map['mysqlReplicaConfiguration']! as Map).cast<String, dynamic>())),
    );
  }
}
