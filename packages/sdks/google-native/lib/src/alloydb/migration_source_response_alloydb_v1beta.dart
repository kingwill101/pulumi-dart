// ignore_for_file: unused_element, unnecessary_cast


/// Subset of the source instance configuration that is available when reading the cluster resource.
class MigrationSourceResponseAlloydbV1beta {
  /// The host and port of the on-premises instance in host:port format
  final String hostPort;
  /// Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  final String referenceId;
  /// Type of migration source.
  final String sourceType;

  /// Creates a new [MigrationSourceResponseAlloydbV1beta].
  /// [hostPort] The host and port of the on-premises instance in host:port format
  /// [referenceId] Place holder for the external source identifier(e.g DMS job name) that created the cluster.
  /// [sourceType] Type of migration source.
  MigrationSourceResponseAlloydbV1beta({
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
      hostPort: map['hostPort'] as String,
      referenceId: map['referenceId'] as String,
      sourceType: map['sourceType'] as String,
    );
  }
}

