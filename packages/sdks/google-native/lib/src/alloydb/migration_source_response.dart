// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Subset of the source instance configuration that is available when reading the cluster resource.
class MigrationSourceResponse {
  /// The host and port of the on-premises instance in host:port format
  final pulumi.Input<String> hostPort;
  /// Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  final pulumi.Input<String> referenceId;
  /// Type of migration source.
  final pulumi.Input<String> sourceType;

  /// Creates a new [MigrationSourceResponse].
  /// [hostPort] The host and port of the on-premises instance in host:port format
  /// [referenceId] Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  /// [sourceType] Type of migration source.
  MigrationSourceResponse({
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

  factory MigrationSourceResponse.fromMap(Map<String, dynamic> map) {
    return MigrationSourceResponse(
      hostPort: (map['hostPort'] as String).input(),
      referenceId: (map['referenceId'] as String).input(),
      sourceType: (map['sourceType'] as String).input(),
    );
  }
}

