// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterMigrationSource {
  /// The host and port of the on-premises instance in host:port format
  final pulumi.Input<String>? hostPort;
  /// Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  final pulumi.Input<String>? referenceId;
  /// Type of migration source.
  final pulumi.Input<String>? sourceType;

  /// Creates a new [ClusterMigrationSource].
  /// [hostPort] The host and port of the on-premises instance in host:port format
  /// [referenceId] Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  /// [sourceType] Type of migration source.
  const ClusterMigrationSource({
    this.hostPort,
    this.referenceId,
    this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPort': ?hostPort,
      'referenceId': ?referenceId,
      'sourceType': ?sourceType,
    };
  }

  factory ClusterMigrationSource.fromMap(Map<String, dynamic> map) {
    return ClusterMigrationSource(
      hostPort: (() { final guardedValue = map['hostPort']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      referenceId: (() { final guardedValue = map['referenceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceType: (() { final guardedValue = map['sourceType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
