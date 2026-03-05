// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig {
  /// Number of milliseconds for which to keep the storage for a partition.
  final pulumi.Input<String>? expirationMs;
  /// Type of partitioning.
  /// Possible values are: `PARTITION_TYPE_UNSPECIFIED`, `HOUR`, `DAY`, `MONTH`, `YEAR`.
  final pulumi.Input<String> type;

  /// Creates a new [FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig].
  /// [expirationMs] Number of milliseconds for which to keep the storage for a partition.
  /// [type] Type of partitioning.
  FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig({
    this.expirationMs,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expirationMs': ?expirationMs,
      'type': type,
    };
  }

  factory FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig.fromMap(Map<String, dynamic> map) {
    return FhirStoreStreamConfigBigqueryDestinationSchemaConfigLastUpdatedPartitionConfig(
      expirationMs: (() { final guardedValue = map['expirationMs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

