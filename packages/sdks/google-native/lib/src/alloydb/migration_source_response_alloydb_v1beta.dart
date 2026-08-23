// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subset of the source instance configuration that is available when reading the cluster resource.
class MigrationSourceResponseAlloydbV1beta {
  /// The host and port of the on-premises instance in host:port format
  final pulumi.Input<String> hostPort;
  /// Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  final pulumi.Input<String> referenceId;
  /// Type of migration source.
  final pulumi.Input<String> sourceType;

  /// Creates a new [MigrationSourceResponseAlloydbV1beta].
  /// [hostPort] The host and port of the on-premises instance in host:port format
  /// [referenceId] Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  /// [sourceType] Type of migration source.
  const MigrationSourceResponseAlloydbV1beta({
    required this.hostPort,
    required this.referenceId,
    required this.sourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostPort': hostPort,
      'referenceId': referenceId,
      'sourceType': sourceType,
    };
  }

  factory MigrationSourceResponseAlloydbV1beta.fromMap(Map<String, dynamic> map) {
    return MigrationSourceResponseAlloydbV1beta(
      hostPort: pulumi.Input.fromValue(map['hostPort'] as String),
      referenceId: pulumi.Input.fromValue(map['referenceId'] as String),
      sourceType: pulumi.Input.fromValue(map['sourceType'] as String),
    );
  }
}
