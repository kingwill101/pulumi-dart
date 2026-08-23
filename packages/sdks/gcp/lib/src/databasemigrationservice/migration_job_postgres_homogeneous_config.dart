// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrationJobPostgresHomogeneousConfig {
  /// Whether the migration uses native logical replication.
  final pulumi.Input<bool> isNativeLogical;
  /// Maximum number of additional subscriptions to use for the migration job.
  final pulumi.Input<int>? maxAdditionalSubscriptions;

  /// Creates a new [MigrationJobPostgresHomogeneousConfig].
  /// [isNativeLogical] Whether the migration uses native logical replication.
  /// [maxAdditionalSubscriptions] Maximum number of additional subscriptions to use for the migration job.
  const MigrationJobPostgresHomogeneousConfig({
    required this.isNativeLogical,
    this.maxAdditionalSubscriptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isNativeLogical': isNativeLogical,
      'maxAdditionalSubscriptions': ?maxAdditionalSubscriptions,
    };
  }

  factory MigrationJobPostgresHomogeneousConfig.fromMap(Map<String, dynamic> map) {
    return MigrationJobPostgresHomogeneousConfig(
      isNativeLogical: pulumi.Input.fromValue(map['isNativeLogical'] as bool),
      maxAdditionalSubscriptions: (() { final guardedValue = map['maxAdditionalSubscriptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}
